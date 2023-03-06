#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "topopebrepbuild"
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

# ls /usr/include/opencascade/TopOpeBRepBuild*.hxx | cut -c 26-


genFiles("TopOpeBRepBuild_Area1dBuilder")
genFiles("TopOpeBRepBuild_Area2dBuilder")
genFiles("TopOpeBRepBuild_Area3dBuilder")
genFiles("TopOpeBRepBuild_AreaBuilder")
pp("topopebrepbuild_areabuilder.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("TopOpeBRepBuild_BlockBuilder")
genFiles("TopOpeBRepBuild_BlockIterator")
genFiles("TopOpeBRepBuild_Builder1")
genFiles("TopOpeBRepBuild_Builder")
pp("topopebrepbuild_builder.nim",
  replaceAll = @[("""TCollectionAsciiString = """"", """TCollectionAsciiString = newTCollectionAsciiString("")"""),
  ("""TCollectionAsciiString = "\n"""", """TCollectionAsciiString = newTCollectionAsciiString("\n")"""),
  ("= object", "= object of RootObj")
  ]
)
genFiles("TopOpeBRepBuild_BuilderON")
genFiles("TopOpeBRepBuild_CompositeClassifier")
genFiles("TopOpeBRepBuild_CorrectFace2d")
genFiles("TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape")
genFiles("TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape")
pp("topopebrepbuild_datamapofshapelistofshapelistofshape.nim",
  replaceAll = @[("""TopOpeBRepBuildDataMapIteratorOfDataMapOfShapeListOfShapeListOfShape* = Iterator[
      TopoDS_Shape, TopOpeBRepBuildListOfShapeListOfShape, TopToolsShapeMapHasher]""",
      """TopOpeBRepBuildDataMapIteratorOfDataMapOfShapeListOfShapeListOfShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepBuild_ListOfShapeListOfShape,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepBuild_define",
  comment = @[(41, 60)]
)
genFiles("TopOpeBRepBuild_EdgeBuilder")
genFiles("TopOpeBRepBuild_FaceAreaBuilder")
genFiles("TopOpeBRepBuild_FaceBuilder")
genFiles("TopOpeBRepBuild_FuseFace")
genFiles("TopOpeBRepBuild_GIter")
genFiles("TopOpeBRepBuild_GTool")
genFiles("TopOpeBRepBuild_GTopo")
genFiles("TopOpeBRepBuild_HBuilder")
genFiles("TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo")
genFiles("TopOpeBRepBuild_kpresu")
genFiles("TopOpeBRepBuild_ListIteratorOfListOfListOfLoop")
genFiles("TopOpeBRepBuild_ListIteratorOfListOfLoop")
genFiles("TopOpeBRepBuild_ListIteratorOfListOfPave")
genFiles("TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape")
genFiles("TopOpeBRepBuild_ListOfListOfLoop")
pp("topopebrepbuild_listoflistofloop.nim",
  replaceAll = @[("""TopOpeBRepBuildListIteratorOfListOfListOfLoop* = Iterator[
      TopOpeBRepBuildListOfLoop]""",
      """TopOpeBRepBuildListIteratorOfListOfListOfLoop* {.importcpp:"NCollection_List<TopOpeBRepBuild_ListOfLoop>::Iterator", header:"TopOpeBRepBuild_ListOfListOfLoop.hxx", bycopy.} = object"""
      )]
)

genFiles("TopOpeBRepBuild_ListOfLoop")
pp("topopebrepbuild_listofloop.nim",
  replaceAll = @[("TopOpeBRepBuildListIteratorOfListOfLoop* = Iterator[Handle[TopOpeBRepBuildLoop]]",
    """TopOpeBRepBuildListIteratorOfListOfLoop* {.importcpp:"NCollection_List<Handle(TopOpeBRepBuild_Loop)>::Iterator", header:"TopOpeBRepBuild_ListOfLoop.hxx", bycopy.} = object"""
  )]
)
genFiles("TopOpeBRepBuild_ListOfPave")
pp("topopebrepbuild_listofpave.nim",
  replaceAll = @[("TopOpeBRepBuildListIteratorOfListOfPave* = Iterator[Handle[TopOpeBRepBuildPave]]",
    """TopOpeBRepBuildListIteratorOfListOfPave* {.importcpp:"NCollection_List<Handle(TopOpeBRepBuild_Pave)>::Iterator", header:"TopOpeBRepBuild_ListOfPave.hxx", bycopy.} = object"""
  )]
)

genFiles("TopOpeBRepBuild_ListOfShapeListOfShape")
pp("topopebrepbuild_listofshapelistofshape.nim",
  replaceAll = @[("""TopOpeBRepBuildListIteratorOfListOfShapeListOfShape* = Iterator[
      TopOpeBRepBuildShapeListOfShape]""",
      """TopOpeBRepBuildListIteratorOfListOfShapeListOfShape* {.importcpp:"NCollection_List<TopOpeBRepBuild_ShapeListOfShape>::Iterator", header:"TopOpeBRepBuild_ListOfShapeListOfShape.hxx", bycopy.} = object"""
      )]
)


genFiles("TopOpeBRepBuild_LoopClassifier")
pp("topopebrepbuild_loopclassifier.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("TopOpeBRepBuild_LoopEnum")
genFiles("TopOpeBRepBuild_Loop")
genFiles("TopOpeBRepBuild_LoopSet")
pp("topopebrepbuild_loopset.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("TopOpeBRepBuild_PaveClassifier")
genFiles("TopOpeBRepBuild_Pave")
genFiles("TopOpeBRepBuild_PaveSet")
genFiles("TopOpeBRepBuild_PBuilder")
genFiles("TopOpeBRepBuild_PGTopo")
genFiles("TopOpeBRepBuild_PWireEdgeSet")
genFiles("TopOpeBRepBuild_ShapeListOfShape")
genFiles("TopOpeBRepBuild_ShapeSet")
pp("topopebrepbuild_shapeset.nim",
  replaceAll = @[("= object", "= object of RootObj"),
  ("""TCollectionAsciiString = """"", """TCollectionAsciiString = newTCollectionAsciiString("")""")
  ]
)
genFiles("TopOpeBRepBuild_ShellFaceClassifier")
genFiles("TopOpeBRepBuild_ShellFaceSet")
pp("topopebrepbuild_shellfaceset.nim",
  replaceAll = @[
  ("""TCollectionAsciiString = """"", """TCollectionAsciiString = newTCollectionAsciiString("")""")
  ]
)
genFiles("TopOpeBRepBuild_ShellToSolid")
genFiles("TopOpeBRepBuild_SolidAreaBuilder")
genFiles("TopOpeBRepBuild_SolidBuilder")
genFiles("TopOpeBRepBuild_Tools2d")
genFiles("TopOpeBRepBuild_Tools")
genFiles("TopOpeBRepBuild_VertexInfo")
genFiles("TopOpeBRepBuild_WireEdgeClassifier")
genFiles("TopOpeBRepBuild_WireEdgeSet")
pp("topopebrepbuild_wireedgeset.nim",
  replaceAll = @[
  ("""TCollectionAsciiString = """"", """TCollectionAsciiString = newTCollectionAsciiString("")""")
  ]
)
genFiles("TopOpeBRepBuild_WireToFace")



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


var beggining = "{.passL:\"-lTKBool\".}\n"
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