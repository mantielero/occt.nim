#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let c2nimFile = "ncollection.c2nim"
#[ let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

""" ]#
proc genFiles*( infile:string;
               remove:seq[tuple[a,b:int]] = @[]; 
               addSemiColon:seq[int] = @[];
               replaceAll:seq[tuple[sub,by:string]] = @[];
               removeFuncBody:seq[tuple[a,b:int]] = @[]) =
    var (dir, name, ext) = splitFile(infile)
    if dir == "":
      dir = lib
    if ext == "":
      ext = ".hxx"
    cpFile(dir & name & ext, name & ".hxx")
    var rem:seq[tuple[a,b:int]] = remove
    var semiColon = addSemiColon
    if removeFuncBody.len > 0:
      for item in removeFuncBody:
        rem &= item
        semiColon &= item.a - 1
    #echo semiColon
    # Replace text strings
    if replaceAll.len > 0:    
      for item in replaceAll:
        var txt = readFile(name & ".hxx")        
        txt = txt.replace(item.sub, item.by)
        writeFile(name & ".hxx", txt)


    # Colons to add at the end of line
    if semiColon.len > 0:
        for line in semiColon:
            var edit = "'" & $line & " s/$/;/i'"
            edit = "sed -e " & edit & " -i " & name & ".hxx"
            exec edit

    # Lines to remove from the header
    if rem.len > 0:
        var edit = ""
        var n = 0
        for item in rem:
            edit &= $item.a & "," & $item.b & "d"
            n += 1
            if n != rem.len:
                edit &= ";"
        exec "sed -e '" & edit & "' -i " & name & ".hxx"


    exec "c2nim --cpp --header --strict --nep1 --out:" & name.toLower & ".nim " & c2nimFile & " " & name & ".hxx"
    let txt = readFile(name.toLower & ".nim")
    writeFile(name.toLower & ".nim", txt ) #beg & txt)
    rmFile(name & ".hxx")
    echo name


proc pp*(file:string,
        insert:seq[tuple[line:int;value:string]] = @[],
        replaceAll:seq[tuple[sub,by:string]] = @[];        
        comment:seq[int] = @[];
        commentRange:seq[tuple[a,b:int]] = @[] ) =
  # Reemplazar
  if replaceAll.len > 0:    
    for item in replaceAll:
      var txt = readFile(file)        
      txt = txt.replace(item.sub, item.by)
      writeFile(file, txt)

  var lines = file.readFile.splitLines

  # Comment lines
  for i in 0..<lines.len:
    if i+1 in comment:
      lines[i] = "#" & lines[i]


  for item in commentRange:
      for i in item.a .. item.b:
        lines[i-1] = "#" & lines[i-1]

  # Insert lines
  var n = 0
  for item in insert:
    var tmp1 = lines[0 .. item.line - 2 + n] 
    var tmp2 = lines[item.line - 1 + n .. lines.len-1]
    lines = tmp1 & item.value & tmp2
    n += 1
  writeFile( file, lines.join("\n"))
  
  

#=====================================================


# ls -l | cut -c 44-
genFiles("NCollection_AccAllocator", remove= @[(116,118)], addSemiColon = @[115])
pp("ncollection_accallocator.nim",
  replaceAll = @[("defaultBlockSize", "DefaultBlockSize")]
)

genFiles("NCollection_AlignedAllocator")
genFiles("NCollection_Array1")
pp("ncollection_array1.nim",
  comment = @[131,132, 188,189,195,196],
  replaceAll = @[("standardFalse", "false"), ("True", "true")],
  insert = @[(47, """  PtrdiffT* {.importcpp:"std::ptrdiff_t".} = object
  RandomAccessIteratorTag* {.importcpp:"std::random_access_iterator_tag".} = object
  TheItemType* = object
  """)]
  )

genFiles("NCollection_Array2", remove= @[(390,423)])
pp("ncollection_array2.nim",
  commentRange = @[(170,172), (176,178)]
)

genFiles("NCollection_BaseAllocator", remove = @[(30,32),(49,81)])
#[ pp("ncollection_baseallocator.nim",
  insert = @[(7, "import ../standard/standard_transient")]) ]#

genFiles("NCollection_BaseList")
pp("ncollection_baselist.nim",
  replaceAll = @[("header: \"NCollection_BaseList.hxx\", bycopy.} = object", "header: \"NCollection_BaseList.hxx\", bycopy.} = object of RootObj")]
)

genFiles("NCollection_BaseMap")
pp("ncollection_basemap.nim",
  replaceAll = @[("header: \"NCollection_BaseMap.hxx\", bycopy.} = object","header: \"NCollection_BaseMap.hxx\", bycopy.} = object of RootObj")]
)

genFiles("NCollection_BaseSequence")
pp("ncollection_basesequence.nim",
  replaceAll = @[("standardTrue", "true"),
                 ("header: \"NCollection_BaseSequence.hxx\", bycopy.} = object", "header: \"NCollection_BaseSequence.hxx\", bycopy.} = object of RootObj")]
)

genFiles("NCollection_BaseVector")
pp("ncollection_basevector.nim",
  replaceAll = @[("header: \"NCollection_BaseVector.hxx\", bycopy.} = object", "header: \"NCollection_BaseVector.hxx\", bycopy.} = object of RootObj")]
)

genFiles("NCollection_Buffer")
genFiles("NCollection_CellFilter", remove= @[(235,237), (239,239), (304, 309), (324, 336), (348,350), (353,353), (369,378), (399, 421), (442,465)], addSemiColon = @[303, 323, 347,352, 368, 398, 441])
pp("ncollection_cellfilter.nim",
  replaceAll = @[("NCollectionCellFilterTarget* = Target", "NCollectionCellFilterTarget* {.importcpp:\"typename Inspector::Target\".} = object"),
                 ("NCollectionCellFilterPoint* = Point", "NCollectionCellFilterPoint* {.importcpp:\"typename Inspector::Point\".} = object"),
                 ("theAlloc: Handle[NCollectionIncAllocator] = 0","theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)")
  ]
)


genFiles("NCollection_DataMap", replaceAll = @[ ("class Hasher = NCollection_DefaultHasher<TheKeyType> >", "class Hasher >")],
          remove       = @[(76,79), (226, 244), (248,266), (277,301)], 
          addSemiColon = @[75,       225,        247,       276])
pp("ncollection_datamap.nim",
  replaceAll = @[("0L'i64", "0"),
                 ("object of NCollectionDataMapIterator", "object of RootObj"),
                 ("True", "true"),
                 ("theAllocator: Handle[NCollectionBaseAllocator] = 0", "theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)"),
                 ("standardtrue", "true")],
  comment = @[121,122],
  commentRange = @[(183,185),(192,194)],
  insert = @[(35, "  ForwardIteratorTag* {.importcpp:\"std::forward_iterator_tag\".} = object")]
  )

genFiles("NCollection_DefaultHasher")
pp("ncollection_defaulthasher.nim",
  comment = @[33, 34]
)

genFiles("NCollection_DefineAlloc")  # Ignored: #assumedef _NCollection_DefineAlloc_HeaderFile
genFiles("NCollection_DefineArray1")
genFiles("NCollection_DefineArray2")
genFiles("NCollection_DefineDataMap")
genFiles("NCollection_DefineDoubleMap")
genFiles("NCollection_DefineHArray1")        # Ignored: #assumedef NCollection_DefineHArray1_HeaderFile
genFiles("NCollection_DefineHArray2")        # Ignored: #assumedef NCollection_DefineHArray2_HeaderFile
genFiles("NCollection_DefineHSequence")      # Ignored: #assumedef NCollection_DefineHSequence_HeaderFile
genFiles("NCollection_DefineIndexedDataMap")
genFiles("NCollection_DefineIndexedMap")
genFiles("NCollection_DefineList")
genFiles("NCollection_DefineMap")
genFiles("NCollection_DefineSequence")
genFiles("NCollection_DefineVector")
genFiles("NCollection_DoubleMap", 
    replaceAll = @[ ("= NCollection_DefaultHasher<TheKey1Type>", ""),
                    ("= NCollection_DefaultHasher<TheKey2Type>","")
                  ],
    remove = @[(77,80), (149, 174), (219, 244), (313, 354), (358,399), (404,410), (418,425), (446,452), (460, 467)],
    addSemiColon = @[76, 148, 218, 312, 357, 403, 417, 445, 459]   ) 
pp("ncollection_doublemap.nim",
  replaceAll = @[("0L'i64", "0"),
                 ("object of NCollectionDoubleMapIterator","object of RootObj"),
                 ("Handle[NCollectionBaseAllocator] = 0","Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)"),
                 ("standardTrue","true")],
  commentRange = @[(72,74)]
  )

genFiles("NCollection_EBTree", remove = @[(114, 125),(136, 169), (180,211)], addSemiColon = @[138])
pp("ncollection_ebtree.nim",
  replaceAll = @[("0L'i64", "0"),
                 ("object of NCollectionUBTree[TheObjType, TheBndType]","object of RootObj"),
                 ("Handle[NCollectionBaseAllocator] = 0","Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)")],
  insert = @[(28, "  TheObjType* = object"),
             (28, "  TheBndType* = object"),
             (28, "  TreeNode* {.importcpp:\"typename UBTree::TreeNode\".} = object")]
  )

genFiles("NCollection_Handle")
pp("ncollection_handle.nim",
  replaceAll = @[("object of Handle[","object of HandleStandardTransient")],  # HandleStandardTransient
  commentRange = @[(27,29)]
)

genFiles("NCollection_HArray1")
genFiles("NCollection_HArray2")
genFiles("NCollection_HeapAllocator")
#pp("ncollection_heapallocator.nim", insert = @[(7, "import ncollection_baseallocator")])

genFiles("NCollection_HSequence")    # Ignored: #assumedef NCollection_HSequence_HeaderFile
genFiles("NCollection_IncAllocator")
pp("ncollection_incallocator.nim",
  insert = @[(1, "const\n  DefaultBlockSize:csize_t = 24600")],
  replaceAll = @[("defaultBlockSize", "DefaultBlockSize"),
                 ("standardTrue", "true")]
)

genFiles("NCollection_IndexedDataMap",
  replaceAll = @[("= NCollection_DefaultHasher<TheKeyType>", "")],
  remove = @[(81,84), (190,211), (255, 277), (367, 389)],
  addSemiColon = @[80, 189, 254, 366]
)
pp("ncollection_indexeddatamap.nim",
  replaceAll = @[("0L'i64", "0"),
                 ("True","true"),
                 ("Handle[NCollectionBaseAllocator] = 0","Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)"),
                 ("standardtrue","true")],
  commentRange = @[(111,112),(179,181),(186,188)]
  )

genFiles("NCollection_IndexedMap",
  replaceAll = @[("= NCollection_DefaultHasher<TheKeyType>", "")],
  remove = @[(69,72), (150,170), (211,233), (320, 342)],
  addSemiColon = @[68, 149, 210, 319] )
pp("ncollection_indexedmap.nim",
  replaceAll = @[("0L'i64", "0"), ("True", "true"), ("standardtrue","true"),
                 ("Handle[NCollectionBaseAllocator] = 0", "Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)")],
  insert = @[(78, "  TheKeyType* = object")],
  commentRange = @[(130,132)]
  )

genFiles("NCollection_Lerp")
genFiles("NCollection_List", 
  remove = @[(133, 137), (142,145), (169,173), (207,219), (224,228), (254,258), (263,284), (291, 291),(293,302), (310,329)], 
  addSemiColon = @[132,141,168,208, 223,253,262, 292])
pp("ncollection_list.nim",
  replaceAll = @[("0L'i64", "0"),("True", "true"), 
                 ("Handle[NCollectionBaseAllocator] = 0","Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)")],
  comment = @[49,50],
  insert = @[(23, "  TheValueType* = object")]
  )

genFiles("NCollection_ListNode")
pp("ncollection_listnode.nim",
  replaceAll = @[("header: \"NCollection_ListNode.hxx\", bycopy.} = object", "header: \"NCollection_ListNode.hxx\", bycopy.} = object of RootObj")]
)

genFiles("NCollection_LocalArray",
  replaceAll = @[("= 1024> class NCollection_LocalArray", "> class NCollection_LocalArray")],
  remove = @[(18,19)])
genFiles("NCollection_Map",
  replaceAll = @[("= NCollection_DefaultHasher<TheKeyType> ", "")],
  remove = @[(202,217), (222,237), (257, 281)],
  addSemiColon = @[201, 221, 256]
  )
pp("ncollection_map.nim",
  replaceAll = @[("0L'i64", "0"),
                 ("object of NCollectionMapIterator", "object of RootObj"),
                 ("True", "true"), ("standardtrue","true"),
                 ("Handle[NCollectionBaseAllocator] = 0","Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)")]
  )

genFiles("NCollection_Mat4",
  remove = @[(468, 474), (489, 494)],
  addSemiColon = @[467]
  )
pp("ncollection_mat4.nim",
  comment = @[132,133],
  commentRange = @[(137,141)]
)

genFiles("NCollection_Sequence",
  remove       = @[(162, 165), (208, 208), (231,231), (265,265), (270,285), (290, 293), (347,353), (362, 396)], # , (362,362) 
  addSemiColon = @[ 161,        207,        230,       264,       269,       289,        346,       361]
)
pp("ncollection_sequence.nim",
  replaceAll = @[("0L'i64", "0"), ("= object of NCollectionSequenceIterator", "= object of RootObj"),
                 ("standardTrue", "true"), ("True", "true"),
                 ("Handle[NCollectionBaseAllocator] = 0", "Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)")],
  insert = @[(22, "  BidirectionalIteratorTag* {.importcpp:\"std::bidirectional_iterator_tag\".} = object")],
  comment = @[108, 109, 202,203,207, 208]
  )

genFiles("NCollection_Shared",
  replaceAll = @[(", typename = typename opencascade::std::enable_if<! opencascade::std::is_base_of<Standard_Transient, T>::value>::type", "")]
)
genFiles("NCollection_SparseArrayBase",
  remove = @[(51,53), (55,55), (230,234)],
  addSemiColon = @[             229],
  replaceAll = @[("header: \"NCollection_SparseArrayBase.hxx\", bycopy.} = object ","header:  \"NCollection_SparseArrayBase.hxx\", bycopy.} = object of RootObj")]
  )
pp("ncollection_sparsearraybase.nim", 
  comment = @[16,17],
  replaceAll = @[("header: \"NCollection_SparseArrayBase.hxx\", bycopy.} = object", "header: \"NCollection_SparseArrayBase.hxx\", bycopy.} = object of RootObj"),
    ("bycopy.} = object ##  Public interface", "bycopy.} = object of RootObj ##  Public interface")]
)

genFiles("NCollection_SparseArray", 
  remove = @[(254,256), (260,262)],
  addSemiColon = @[253, 259]
)
pp("ncollection_sparsearray.nim",
  commentRange = @[(166,168),(172,174), (217,218), (248,251)],
  replaceAll = @[("object of Iterator", "object of NCollectionSparseArrayBaseIterator")]
)

genFiles("NCollection_StdAllocator", 
  replaceAll = @[("void destroy( pointer p ) { p->~value_type(); }", "void destroy( pointer p );"),
                 ("template<>", ""),
                 ("class NCollection_StdAllocator<void>", "class NCollection_StdAllocator")
                ],
  remove = @[(97,97), (168,174)],
  addSemiColon = @[96]
  )
pp("ncollection_stdallocator.nim",
  comment = @[5,6, 42, 44,45,78, 79, 93,94,96,97,98, 103,107,108, 109, 110],
  replaceAll = @[("pointer = 0", "pointer = cast[pointer](0)")],
  commentRange = @[(92,106)]
)

genFiles("NCollection_StlIterator",
  replaceAll = @[(""" :
  public std::iterator<Category, ItemType, ptrdiff_t,
                       typename opencascade::std::conditional<IsConstant, const ItemType*, ItemType*>::type,
                       typename opencascade::std::conditional<IsConstant, const ItemType&, ItemType&>::type>""", "")],
  remove = @[(64,66), (68,83), (85,211)],
  addSemiColon = @[63]
)
pp("ncollection_stliterator.nim",
  replaceAll = @[("False", "false")]
)

genFiles("NCollection_String")
pp("ncollection_string.nim",
  comment = @[16,17]
)

genFiles("NCollection_TListIterator")
pp("ncollection_tlistiterator.nim",
  replaceAll = @[("= object of Iterator", "= object of NCollectionBaseListIterator")]
)

genFiles("NCollection_TListNode", remove = @[(41,44)], addSemiColon = @[40])
pp("ncollection_tlistnode.nim",
  commentRange = @[(36,38)]
)

genFiles("NCollection_TypeDef")  # Ignored: #assumedef NCollection_TypeDef_HeaderFile
genFiles("NCollection_UBTreeFiller", remove = @[(137, 208)] ) #, addSemiColon = @[143])
pp("ncollection_ubtreefiller.nim",
  replaceAll = @[("0L'i64", "0"),
    ("Handle[NCollectionBaseAllocator] = 0", "Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)"),
    ("standardTrue", "true")
  ]
  )

genFiles("NCollection_UBTree", 
  remove = @[(167, 183), (190,207), (218,227), (343, 434), (445,495)],
  addSemiColon = @[166, 189, 217]
   )
pp("ncollection_ubtree.nim",
  replaceAll = @[("0L'i64", "0"),
                 ("Handle[NCollectionBaseAllocator] = 0", "Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)")]
  )


genFiles("NCollection_UtfIterator",
  replaceAll = @[("""
  : myPosition(theString),
    myPosNext(theString),
    myCharIndex(0),
    myCharUtf32(0)
  {
    if (theString != NULL)
    {
      ++(*this);
      myCharIndex = 0;
    }
  }""", "; \n\n\n\n\n\n\n\n\n\n")], 
  remove = @[(52,61), (63, 86), (163,165), (173,175), (177, 239)],
  addSemiColon = @[51, 162, 172]
  ) 
pp("ncollection_utfiterator.nim",
  comment = @[89,90],
  #replaceAll = @[("StandardUtf32Char", "")]
  insert = @[(26, "  StandardUtf32Char* = object"), 
             (26, "  StandardWideChar*  = object"), 
  ],
  commentRange = @[(68,70)]
)

genFiles("NCollection_UtfString", remove = @[(112,122), (229,240), (250, 338)], addSemiColon = @[228])  #<-------
pp("ncollection_utfstring.nim",
  comment = @[121,122]
)

genFiles("NCollection_Vec2", 
  remove = @[(24,26), (118,171), (209,211), (258,261), (265,267), (296, 299)],
  addSemiColon = @[               208,       257,       264,       295])


genFiles("NCollection_Vec3",
  removeFuncBody = @[(23, 29), (185,188), (192,194), (198,203), (208,211), (215,219),
   (223,228), (233,236), (240,243), (247,249), (253,257), (261,265), (269,273), (277,281),
   (285, 288), (292, 295), (299,304), (308,313), (317,320), (325,328), (332,334), (338,340),
   (345,347), (351,359),(363,367),(372,376),(384,386),(390,392), (396,398), (402,404),
   (408,411)],
   remove = @[(419, 431)]) #, addSemiColon = @[           184,       191,       197,       207,       214,       222]
pp("ncollection_vec3.nim",
  comment = @[29,30],
  replaceAll = @[("elementT(0)", "ElementT(0)"), ("dx*","dxVec3*"), ("dy*","dyVec3*"),("dz*","dzVec3*")]
)

genFiles("NCollection_Vec4",
  removeFuncBody = @[(178,183),(201,207),(212,215),(219,221),(225,231), (236,239), (243,249),(254,257),(261,266),(270,273),
    (277,279),(283,287),(291,296),(300,305),(390,314), (318,323), (336,341),(345,351),(355,361),
    (365,368), (373,376),(380,383)],
    remove = @[(391,403)]
)
pp("ncollection_vec4.nim",
  replaceAll = @[("length*", "lengthV4*"), ("elementT(0)", "ElementT(0)")]
)

genFiles("NCollection_Vector",
  removeFuncBody = @[(326,353), (359,389)],
  remove = @[(100,102)]
)
pp("ncollection_vector.nim",
  comment = @[111,112, 152, 153, 166,167],
  replaceAll = @[("object of NCollectionVectorIterator", "object of RootObj"),
                 ("standardFalse", "false"), ("True", "true"), ("standardtrue", "true"),
                 ("Handle[NCollectionBaseAllocator] = nil", "Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](nil)")]
)

genFiles("NCollection_WinHeapAllocator")
pp("ncollection_winheapallocator.nim",
  comment = @[42,43]
  )

# genFiles("NCollection_Haft.h")   # IGNORE: only for C++/CLI under C#

# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != "ncollection_includes":
    txt &= "include " & name & "\n"
    #exp &= name & ", "
  #txt &= exp


var beggining = "{.passL:\"-lTKernel\".}\n"
beggining &= "{.passC:\"-I" & lib & "\" .}\n"
beggining &= "{.experimental: \"codeReordering\".}\n\n"
beggining &= """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 


"""

writeFile("ncollection_includes.nim", beggining & txt )#& exp)
pp("ncollection_includes.nim",
   comment = @[27, 28, 29, 30, 34, 35, 36, 37, 38, 39]
)