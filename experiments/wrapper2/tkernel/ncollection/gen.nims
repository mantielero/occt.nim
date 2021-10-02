#!/usr/bin/env nim
import strutils
let lib = "/usr/include/opencascade/"
let c2nimFile = "ncollection.c2nim"
let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

"""
proc genFiles( file:string;
               remove:seq[tuple[a,b:int]] = @[]; 
               addSemiColon:seq[int] = @[];
               replaceAll:seq[tuple[sub,by:string]] =  @[]) =
    cpFile(lib & file & ".hxx", file & ".hxx")

    # Replace text strings
    if replaceAll.len > 0:    
      for item in replaceAll:
        var txt = readFile(file & ".hxx")        
        txt = txt.replace(item.sub, item.by)
        writeFile(file & ".hxx", txt)


    # Colons to add at the end of line
    if addSemiColon.len > 0:
        for line in addSemiColon:
            var edit = "'" & $line & " s/$/;/i'"
            edit = "sed -e " & edit & " -i " & file & ".hxx"

            exec edit

    # Lines to remove from the header
    if remove.len > 0:
        var edit = ""
        var n = 0
        for item in remove:
            edit &= $item.a & "," & $item.b & "d"
            n += 1
            if n != remove.len:
                edit &= ";"
        exec "sed -e '" & edit & "' -i " & file & ".hxx"


    exec "c2nim --cpp --header --strict --out:" & file.toLower & ".nim " & c2nimFile & " " & file & ".hxx"
    let txt = readFile(file.toLower & ".nim")
    writeFile(file.toLower & ".nim", beg & txt)
    #rmFile(file & ".hxx")
    echo file



# ls -l | cut -c 44-
genFiles("NCollection_AccAllocator", remove= @[(116,118)], addSemiColon = @[115])
genFiles("NCollection_AlignedAllocator")
genFiles("NCollection_Array1")
genFiles("NCollection_Array2", remove= @[(390,423)])
genFiles("NCollection_BaseAllocator", remove = @[(30,32),(49,81)])
genFiles("NCollection_BaseList")
genFiles("NCollection_BaseMap")
genFiles("NCollection_BaseSequence")
genFiles("NCollection_BaseVector")
genFiles("NCollection_Buffer")
genFiles("NCollection_CellFilter", remove= @[(235,237), (239,239), (304, 309), (324, 336), (348,350), (353,353), (369,378), (399, 421), (442,465)], addSemiColon = @[303, 323, 347,352, 368, 398, 441])
genFiles("NCollection_DataMap", replaceAll = @[ ("class Hasher = NCollection_DefaultHasher<TheKeyType> >", "class Hasher >")],
          remove       = @[(76,79), (226, 244), (248,266), (277,301)], 
          addSemiColon = @[75,       225,        247,       276])
genFiles("NCollection_DefaultHasher")
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
genFiles("NCollection_EBTree", remove = @[(114, 125),(136, 169), (180,211)], addSemiColon = @[138])

genFiles("NCollection_Handle")
genFiles("NCollection_HArray1")
genFiles("NCollection_HArray2")
genFiles("NCollection_HeapAllocator")
genFiles("NCollection_HSequence")    # Ignored: #assumedef NCollection_HSequence_HeaderFile
genFiles("NCollection_IncAllocator")
genFiles("NCollection_IndexedDataMap",
  replaceAll = @[("= NCollection_DefaultHasher<TheKeyType>", "")],
  remove = @[(81,84), (190,211), (255, 277), (367, 389)],
  addSemiColon = @[80, 189, 254, 366]
)
genFiles("NCollection_IndexedMap",
  replaceAll = @[("= NCollection_DefaultHasher<TheKeyType>", "")],
  remove = @[(69,72), (150,170), (211,233), (320, 342)],
  addSemiColon = @[68, 149, 210, 319] )
genFiles("NCollection_Lerp")
genFiles("NCollection_List", 
  remove = @[(133, 137), (142,145), (169,173), (207,219), (224,228), (254,258), (263,284), (291, 291),(293,302), (310,329)], 
  addSemiColon = @[132,141,168,208, 223,253,262, 292])
genFiles("NCollection_ListNode")
genFiles("NCollection_LocalArray",
  replaceAll = @[("= 1024> class NCollection_LocalArray", "> class NCollection_LocalArray")],
  remove = @[(18,19)])
genFiles("NCollection_Map",
  replaceAll = @[("= NCollection_DefaultHasher<TheKeyType> ", "")],
  remove = @[(202,217), (222,237), (257, 281)],
  addSemiColon = @[201, 221, 256]
  )
genFiles("NCollection_Mat4",
  remove = @[(468, 474), (489, 494)],
  addSemiColon = @[467]
  )
genFiles("NCollection_Sequence",
  remove       = @[(162, 165), (208, 208), (231,231), (265,265), (270,285), (290, 293), (347,353), (362, 396)], # , (362,362) 
  addSemiColon = @[ 161,        207,        230,       264,       269,       289,        346,       361]
)
genFiles("NCollection_Shared",
  replaceAll = @[(", typename = typename opencascade::std::enable_if<! opencascade::std::is_base_of<Standard_Transient, T>::value>::type", "")]#,
  #remove = @[(19,19)]

)
genFiles("NCollection_SparseArrayBase",
  remove = @[(51,53), (55,55), (230,234)],
  addSemiColon = @[             229]
  )
genFiles("NCollection_SparseArray", 
  remove = @[(254,256), (260,262)],
  addSemiColon = @[253, 259]
)
genFiles("NCollection_StdAllocator", 
  replaceAll = @[("void destroy( pointer p ) { p->~value_type(); }", "void destroy( pointer p );"),
                 ("template<>", ""),
                 ("class NCollection_StdAllocator<void>", "class NCollection_StdAllocator")
                ],
  remove = @[(97,97), (168,174)],
  addSemiColon = @[96]
  )
genFiles("NCollection_StlIterator",
  replaceAll = @[(""" :
  public std::iterator<Category, ItemType, ptrdiff_t,
                       typename opencascade::std::conditional<IsConstant, const ItemType*, ItemType*>::type,
                       typename opencascade::std::conditional<IsConstant, const ItemType&, ItemType&>::type>""", "")],
  remove = @[(64,66), (68,83), (85,211)],
  addSemiColon = @[63]
)
genFiles("NCollection_String")
genFiles("NCollection_TListIterator")
genFiles("NCollection_TListNode", remove = @[(41,44)], addSemiColon = @[40])
genFiles("NCollection_TypeDef")  # Ignored: #assumedef NCollection_TypeDef_HeaderFile
genFiles("NCollection_UBTreeFiller", remove = @[(137, 208)] ) #, addSemiColon = @[143])
genFiles("NCollection_UBTree", 
  remove = @[(167, 183), (190,207), (218,227), (343, 434), (445,495)],
  addSemiColon = @[166, 189, 217]
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
genFiles("NCollection_UtfString", remove = @[(112,122), (229,240), (250, 338)], addSemiColon = @[228])  #<-------
genFiles("NCollection_Vec2", 
  remove = @[(24,26), (118,171), (209,211), (258,261), (265,267), (296, 299)],
  addSemiColon = @[               208,       257,       264,       295])



genFiles("NCollection_Vec3")
genFiles("NCollection_Vec4")
genFiles("NCollection_Vector")
genFiles("NCollection_WinHeapAllocator")

genFiles("NCollection_Haft.h")