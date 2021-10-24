#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "toptools"
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

# ls /usr/include/opencascade/TopTools*.hxx | cut -c 26-



genFiles("TopTools_Array1OfListOfShape")
genFiles("TopTools_Array1OfShape")
genFiles("TopTools_Array2OfShape")
genFiles("TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape")
genFiles("TopTools_DataMapIteratorOfDataMapOfIntegerShape")
genFiles("TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger")
genFiles("TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape")
genFiles("TopTools_DataMapIteratorOfDataMapOfShapeInteger")
genFiles("TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger")
genFiles("TopTools_DataMapIteratorOfDataMapOfShapeListOfShape")
genFiles("TopTools_DataMapIteratorOfDataMapOfShapeReal")
genFiles("TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape")
genFiles("TopTools_DataMapIteratorOfDataMapOfShapeShape")
genFiles("TopTools_DataMapOfIntegerListOfShape")
pp("toptools_datamapofintegerlistofshape.nim",
  replaceAll = @[("""  TopToolsDataMapIteratorOfDataMapOfIntegerListOfShape* = Iterator[cint,
      TopToolsListOfShape, TColStdMapIntegerHasher]""", 
      """  TopToolsDataMapIteratorOfDataMapOfIntegerListOfShape* {.importcpp:"NCollection_DataMap<Standard_Integer,TopTools_ListOfShape,TColStd_MapIntegerHasher>::Iterator", header:"TopTools_DataMapOfIntegerListOfShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfIntegerShape")
pp("toptools_datamapofintegershape.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfIntegerShape* = Iterator[cint, TopoDS_Shape,
      TColStdMapIntegerHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfIntegerShape* {.importcpp:"NCollection_DataMap<Standard_Integer,TopoDS_Shape,TColStd_MapIntegerHasher>::Iterator", header:"TopTools_DataMapOfIntegerShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfOrientedShapeInteger")
pp("toptools_datamapoforientedshapeinteger.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfOrientedShapeInteger* = Iterator[TopoDS_Shape,
      cint, TopToolsOrientedShapeMapHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfOrientedShapeInteger* {.importcpp:"NCollection_DataMap<TopoDS_Shape,Standard_Integer,TopTools_OrientedShapeMapHasher>::Iterator", header:"TopTools_DataMapOfOrientedShapeInteger.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfOrientedShapeShape")
pp("toptools_datamapoforientedshapeshape.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfOrientedShapeShape* = Iterator[TopoDS_Shape,
      TopoDS_Shape, TopToolsOrientedShapeMapHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfOrientedShapeShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopoDS_Shape,TopTools_OrientedShapeMapHasher>::Iterator", header:"TopTools_DataMapOfOrientedShapeShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfShapeBox")
pp("toptools_datamapofshapebox.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfShapeBox* = Iterator""", 
      """TopToolsDataMapIteratorOfDataMapOfShapeBox* {.importcpp:"TopTools_DataMapOfShapeBox::Iterator", header:"TopTools_DataMapOfShapeBox.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfShapeInteger")
pp("toptools_datamapofshapeinteger.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfShapeInteger* = Iterator[TopoDS_Shape, cint,
      TopToolsShapeMapHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfShapeInteger* {.importcpp:"NCollection_DataMap<TopoDS_Shape,Standard_Integer,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeInteger.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfShapeListOfInteger")
pp("toptools_datamapofshapelistofinteger.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfShapeListOfInteger* = Iterator[TopoDS_Shape,
      TColStdListOfInteger, TopToolsShapeMapHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfShapeListOfInteger* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TColStd_ListOfInteger,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeListOfInteger.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfShapeListOfShape")
pp("toptools_datamapofshapelistofshape.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfShapeListOfShape* = Iterator[TopoDS_Shape,
      TopToolsListOfShape, TopToolsShapeMapHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfShapeListOfShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopTools_ListOfShape,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeListOfShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfShapeReal")
pp("toptools_datamapofshapereal.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfShapeReal* = Iterator[TopoDS_Shape, cfloat,
      TopToolsShapeMapHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfShapeReal* {.importcpp:"NCollection_DataMap<TopoDS_Shape,Standard_Real,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeReal.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfShapeSequenceOfShape")
pp("toptools_datamapofshapesequenceofshape.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfShapeSequenceOfShape* = Iterator[TopoDS_Shape,
      TopToolsSequenceOfShape, TopToolsShapeMapHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfShapeSequenceOfShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopTools_SequenceOfShape,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeSequenceOfShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_DataMapOfShapeShape")
pp("toptools_datamapofshapeshape.nim",
  replaceAll = @[("""TopToolsDataMapIteratorOfDataMapOfShapeShape* = Iterator[TopoDS_Shape,
      TopoDS_Shape, TopToolsShapeMapHasher]""", 
      """TopToolsDataMapIteratorOfDataMapOfShapeShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopoDS_Shape,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_HArray1OfListOfShape")
genFiles("TopTools_HArray1OfShape")
genFiles("TopTools_HArray2OfShape")
genFiles("TopTools_HSequenceOfShape")
genFiles("TopTools")
genFiles("TopTools_IndexedDataMapOfShapeAddress")
genFiles("TopTools_IndexedDataMapOfShapeListOfShape")
genFiles("TopTools_IndexedDataMapOfShapeReal")
genFiles("TopTools_IndexedDataMapOfShapeShape")
genFiles("TopTools_IndexedMapOfOrientedShape")
genFiles("TopTools_IndexedMapOfShape")
genFiles("TopTools_ListIteratorOfListOfShape")
genFiles("TopTools_ListOfListOfShape")
pp("toptools_listoflistofshape.nim",
  replaceAll = @[("""TopToolsListIteratorOfListOfListOfShape* = Iterator""", 
      """TopToolsListIteratorOfListOfListOfShape* {.importcpp:"TopTools_ListOfListOfShape::Iterator", header:"TopTools_ListOfListOfShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_ListOfShape")
pp("toptools_listofshape.nim",
  replaceAll = @[("""TopToolsListIteratorOfListOfShape* = Iterator[TopoDS_Shape]""", 
      """TopToolsListIteratorOfListOfShape* {.importcpp:"NCollection_List<TopoDS_Shape>::Iterator", header:"TopTools_ListOfShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_LocationSet")
pp("toptools_locationset.nim",
  replaceAll = @[("""messageProgressRange()""", 
      """newMessageProgressRange()""")]
)

genFiles("TopTools_LocationSetPtr")
genFiles("TopTools_MapIteratorOfMapOfOrientedShape")
genFiles("TopTools_MapIteratorOfMapOfShape")
genFiles("TopTools_MapOfOrientedShape")
pp("toptools_mapoforientedshape.nim",
  replaceAll = @[("""TopToolsMapIteratorOfMapOfOrientedShape* = Iterator[TopoDS_Shape,
      TopToolsOrientedShapeMapHasher]""", 
      """TopToolsMapIteratorOfMapOfOrientedShape* {.importcpp:"NCollection_Map<TopoDS_Shape,TopTools_OrientedShapeMapHasher>::Iterator", header:"TopTools_MapOfOrientedShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_MapOfShape")
pp("toptools_mapofshape.nim",
  replaceAll = @[("""TopToolsMapIteratorOfMapOfShape* = Iterator[TopoDS_Shape, TopToolsShapeMapHasher]""", 
      """TopToolsMapIteratorOfMapOfShape* {.importcpp:"NCollection_Map<TopoDS_Shape,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_MapOfShape.hxx",bycopy.} = object""")]
)

genFiles("TopTools_MutexForShapeProvider")
genFiles("TopTools_OrientedShapeMapHasher")
pp("toptools_orientedshapemaphasher.nim",
  commentRange = @[(26,27)]
)
genFiles("TopTools_SequenceOfShape")
genFiles("TopTools_ShapeMapHasher")
pp("toptools_shapemaphasher.nim",
  commentRange = @[(72,75)]
)
genFiles("TopTools_ShapeSet")
pp("toptools_shapeset.nim",
  replaceAll = @[("""messageProgressRange()""", 
      """newMessageProgressRange()""")]
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