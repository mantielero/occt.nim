#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "bvh"
let c2nimFile = packageName & ".c2nim"
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
               comment:seq[tuple[a,b:int]] = @[]; 
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

    # Comment lines
    if comment.len > 0:
      var txt = readFile(name & ".hxx") 
      var lines = txt.splitLines()
      for rng in comment:
        for i in (rng.a - 1) .. (rng.b - 1):
          lines[i] = "// " & lines[i]
      writeFile(name & ".hxx", lines.join("\n"))
        
    # Search and comment


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

# ls /usr/include/opencascade/BVH*.hxx | cut -c 26-

genFiles("BVH_BinaryTree",
  comment = @[(24, 145), (190, 271)])
pp("bvh_binarytree.nim",
  commentRange = @[(142, 144)])
genFiles("BVH_BinnedBuilder",
  comment = @[(46, 98), (104,130), (194, 202), (209, 320)])
pp("bvh_binnedbuilder.nim",
  replaceAll = @[("= Type[T, N]", "= object")])
genFiles("BVH_Box",
  replaceAll = @[("""template <class T, int N, template <class /*T*/, int /*N*/> class TheDerivedBox>
class BVH_BaseBox {};
""", """template <class T, int N> 
class TheDerivedBox {};

template <class T, int N, class TheDerivedBox>
class BVH_BaseBox {};""")],
  comment = @[(40,100), (185, 203), (342, 475), (501, 518), (524, 561)] )
pp("bvh_box.nim",
  replaceAll = @[("""importcpp: "BVH_BaseBox<\'0,\'1,\'2>", header: "BVH_Box.hxx", bycopy.} = object""",
                 """importcpp: "BVH_BaseBox<\'0,\'1,\'2>", header: "BVH_Box.hxx", bycopy.} = object of RootObj"""),
                ("""= object of BVH_BaseBox[
      T, N, BVH_Box]""", """= object""") ,
      ("= Type[T, N]", "= object")              
  ])
genFiles("BVH_BoxSet",
  replaceAll = @[("= Standard_Integer", "")],
  comment = @[(64,66),(74,74), (82,84)])
genFiles("BVH_Builder")
genFiles("BVH_BuildQueue")
genFiles("BVH_BuildThread")
genFiles("BVH_Constants")
pp("bvh_constants.nim",
  replaceAll = @[("dynlib: tkmath", "header: \"BVH_Constants.hxx\"")]
)
genFiles("BVH_DistanceField")
pp("bvh_distancefield.nim",
  replaceAll = @[("= Type[T, N]", "= object")])
genFiles("BVH_Distance")
genFiles("BVH_Geometry",
  comment = @[(100,104)])
genFiles("BVH_IndexedBoxSet",
  replaceAll = @[("= Standard_Integer", "")],
  comment = @[(57,58), (66,67), (75,76)])
genFiles("BVH_LinearBuilder",
  comment = @[(79, 165), (172,212), (278,281), (303, 337 )]
)
pp("bvh_linearbuilder.nim",
  replaceAll = @[("= Type[T, N]", "= object"),
    ("bVH_ConstantsLeafNodeSizeDefault", "BVH_ConstantsLeafNodeSizeDefault"),
    ("bVH_ConstantsMaxTreeDepth", "BVH_ConstantsMaxTreeDepth")])
genFiles("BVH_Object")
genFiles("BVH_ObjectSet",
  comment = @[(46,50)] )
pp("bvh_objectset.nim",
  replaceAll = @[("""BVH_ObjectSetBVH_ObjectList* = NCollectionVector[Handle[BVH_Object[T, N]]]""", ""),
  ("BVH_ObjectSetBVH_ObjectList", "NCollectionVector[Handle[BVH_Object[T, N]]]")]
)
genFiles("BVH_PairDistance")
pp("bvh_pairdistance.nim",
  replaceAll = @[("= BVH_VecNt[NumType, Dimension]", "= object")])
genFiles("BVH_PrimitiveSet3d")
genFiles("BVH_PrimitiveSet",
  comment = @[(98,102)] )
genFiles("BVH_Properties",
  comment = @[(80, 98), (106, 131), (138,143), (149,172)])
pp("bvh_properties.nim",
  replaceAll = @[("= Type[T, N]", "= object")])
genFiles("BVH_QuadTree",
  comment = @[(22,38)] ) 
genFiles("BVH_QueueBuilder",
  comment = @[(147, 148), (163,165), (183,228), (234,289)])
genFiles("BVH_QuickSorter")
genFiles("BVH_RadixSorter",
  comment = @[(132, 134), (176, 243)])
pp("bvh_radixsorter.nim",
  replaceAll = @[("= Type[T, N]", "= object")],
  commentRange = @[(88, 92)])
genFiles("BVH_Ray")
pp("bvh_ray.nim",
  replaceAll = @[("= Type[T, N]", "= object")])
genFiles("BVH_Set")
pp("bvh_set.nim",
  replaceAll = @[("""header: "BVH_Set.hxx", bycopy.} = object""", """header: "BVH_Set.hxx", bycopy.} = object of RootObj""")],
  commentRange = @[(26,26)]
)
genFiles("BVH_Sorter")
pp("bvh_sorter.nim",
  replaceAll = @[("""header: "BVH_Sorter.hxx", bycopy.} = object """, """header: "BVH_Sorter.hxx", bycopy.} = object of RootObj""")]
)
genFiles("BVH_SpatialMedianBuilder")
pp("bvh_spatialmedianbuilder.nim",
  replaceAll = @[("""      header: "BVH_SpatialMedianBuilder.hxx", bycopy.} = object of BVH_BinnedBuilder[
      T, N, 2]                  ## ! Creates spatial median split builder.""",
      """      header: "BVH_SpatialMedianBuilder.hxx", bycopy.} = object"""),
      ("bVH_ConstantsLeafNodeSizeDefault", "BVH_ConstantsLeafNodeSizeDefault"),
      ("bVH_ConstantsMaxTreeDepth", "BVH_ConstantsMaxTreeDepth")]

)
genFiles("BVH_SweepPlaneBuilder",
  comment = @[(43,139)])
pp("bvh_sweepplanebuilder.nim",
  replaceAll = @[("bVH_ConstantsLeafNodeSizeDefault", "BVH_ConstantsLeafNodeSizeDefault"),
      ("bVH_ConstantsMaxTreeDepth", "BVH_ConstantsMaxTreeDepth")]
)
genFiles("BVH_Tools")
pp("bvh_tools.nim",
  replaceAll = @[("= Type[T, N]", "= object")])
genFiles("BVH_Traverse",
  replaceAll = @[("class BVHSetType = void, class MetricType = NumType", "class BVHSetType, class MetricType")] )
pp("bvh_traverse.nim",
  replaceAll = @[("""header: "BVH_Traverse.hxx", bycopy.} = object ## ! @name""", """header: "BVH_Traverse.hxx", bycopy.} = object of RootObj  ## ! @name""")],
  commentRange = @[(199,199), (255,255), (264, 270)]
)
genFiles("BVH_Tree",
  comment = @[(165,168), (171, 174), (177,187), (189,199), (202, 216), (224,227), (241,245)] )
pp("bvh_tree.nim",
  commentRange = @[(105, 105), (115, 122)]
)
genFiles("BVH_Triangulation",
  comment = @[(49,52), (68,80)] )
pp("bvh_triangulation.nim",
  replaceAll = @[("= Type[T, N]", "= object")])
  #commentRange = @[(88, 92)])
genFiles("BVH_Types",
  comment = @[(47, 60), (88,91), (101,104), (109,116), (177,206), (212, 296)] )
pp("bvh_types.nim",
  replaceAll = @[("Type[cint, 2]", "object"),
    ("Type[cint, 3]", "object"),
    ("Type[cint, 4]", "object"),
    ("= VectorTypeobject", "= object"),
    ("= VectorTypeType[StandardShortReal, 2]", "= object"),
    ("= VectorTypeType[StandardShortReal, 3]", "= object"),
    ("= VectorTypeType[StandardShortReal, 4]", "= object"),
    ("= Type[StandardShortReal, 2]", "= object"),
    ("= Type[StandardShortReal, 3]", "= object"),
    ("= Type[StandardShortReal, 4]", "= object"),        
    ("= VectorTypeobject", "= object"),
    ("= VectorTypeType[cfloat, 2]", "= object"),
    ("= VectorTypeType[cfloat, 3]", "= object"),
    ("= VectorTypeType[cfloat, 4]", "= object"),    
    ("= Type[cfloat, 2]", "= object"),
    ("= Type[cfloat, 3]", "= object"),
    ("= Type[cfloat, 4]", "= object"),  
    ("= MatrixTypeType[StandardShortReal, 4]", "= object"),
    ("= MatrixTypeType[cfloat, 4]", "= object"),           
  ]
)



# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != packageName & "_includes":
    txt &= "include " & name & "\n"
    #exp &= name & ", "
  #txt &= exp


var beggining = "{.passL:\"-lTKMath\".}\n"
beggining &= "{.passC:\"-I" & lib & "\" .}\n"
beggining &= "{.experimental: \"codeReordering\".}\n\n"
#[ beggining &= """
when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 


""" ]#

writeFile(packageName & "_includes.nim", beggining & txt )#& exp)
pp(packageName & "_includes.nim")