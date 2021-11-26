#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "topopebrepds"
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
               commentFuncBody:seq[tuple[a,b:int]] = @[]) =
    var (dir, name, ext) = splitFile(infile)
    if dir == "":
      dir = lib
    if ext == "":
      ext = ".hxx"
    cpFile(dir & name & ext, name & ".hxx")
    
    var rem:seq[tuple[a,b:int]] = remove
    var comm:seq[tuple[a,b:int]] = comment    
    var semiColon = addSemiColon
    if commentFuncBody.len > 0:
      for item in commentFuncBody:
        comm &= item
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
    if comm.len > 0:
      var txt = readFile(name & ".hxx") 
      var lines = txt.splitLines()
      for rng in comm:
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

# ls /usr/include/opencascade/TopOpeBRepDS*.hxx | cut -c 26-

genFiles("TopOpeBRepDS_Array1OfDataMapOfIntegerListOfInterference")
genFiles("TopOpeBRepDS_Association")
genFiles("TopOpeBRepDS_BuildTool")
genFiles("TopOpeBRepDS_Check")
genFiles("TopOpeBRepDS_CheckStatus")
genFiles("TopOpeBRepDS_Config")
genFiles("TopOpeBRepDS_connex")
genFiles("TopOpeBRepDS_CurveData")
genFiles("TopOpeBRepDS_CurveExplorer")
genFiles("TopOpeBRepDS_Curve")
genFiles("TopOpeBRepDS_CurveIterator")
genFiles("TopOpeBRepDS_CurvePointInterference")
genFiles("TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus")
genFiles("TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference")
genFiles("TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference")
genFiles("TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape")
genFiles("TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State")
genFiles("TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState")
genFiles("TopOpeBRepDS_DataMapIteratorOfMapOfCurve")
genFiles("TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData")
genFiles("TopOpeBRepDS_DataMapIteratorOfMapOfPoint")
genFiles("TopOpeBRepDS_DataMapIteratorOfMapOfSurface")
genFiles("TopOpeBRepDS_DataMapIteratorOfShapeSurface")
genFiles("TopOpeBRepDS_DataMapOfCheckStatus")
pp("topopebrepds_datamapofcheckstatus.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus* = Iterator[cint,
      TopOpeBRepDS_CheckStatus, TColStdMapIntegerHasher]""",
    """TopOpeBRepDS_DataMapIteratorOfDataMapOfCheckStatus* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_CheckStatus,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfCheckStatus.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepDS_DataMapOfIntegerListOfInterference")
pp("topopebrepds_datamapofintegerlistofinterference.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference* = Iterator[
      cint, TopOpeBRepDS_ListOfInterference, TColStdMapIntegerHasher]""",
      """TopOpeBRepDS_DataMapIteratorOfDataMapOfIntegerListOfInterference* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_ListOfInterference,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfIntegerListOfInterference.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepDS_DataMapOfInterferenceListOfInterference")
pp("topopebrepds_datamapofinterferencelistofinterference.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference* = Iterator[
      Handle[TopOpeBRepDS_Interference], TopOpeBRepDS_ListOfInterference,
      TColStdMapTransientHasher]""",
      """TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceListOfInterference* {.importcpp:"NCollection_DataMap<Handle(TopOpeBRepDS_Interference),TopOpeBRepDS_ListOfInterference,TColStd_MapTransientHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfInterferenceListOfInterference.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepDS_DataMapOfInterferenceShape")
pp("topopebrepds_datamapofinterferenceshape.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape* = Iterator[
      Handle[TopOpeBRepDS_Interference], TopoDS_Shape, TColStdMapTransientHasher]""",
      """TopOpeBRepDS_DataMapIteratorOfDataMapOfInterferenceShape* {.importcpp:"NCollection_DataMap<Handle(TopOpeBRepDS_Interference),TopoDS_Shape,TColStd_MapTransientHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfInterferenceShape.hxx", bycopy.} = object"""
      )]
)

genFiles("TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State")
pp("topopebrepds_datamapofshapelistofshapeon1state.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State* = Iterator[
      TopoDS_Shape, TopOpeBRepDS_ListOfShapeOn1State, TopToolsShapeMapHasher]""",
      """TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeListOfShapeOn1State* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepDS_ListOfShapeOn1State,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State.hxx", bycopy.} = object"""
      )]
)

genFiles("TopOpeBRepDS_DataMapOfShapeState")
pp("topopebrepds_datamapofshapestate.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState* = Iterator[TopoDS_Shape,
      TopAbsState, TopToolsShapeMapHasher]""",
      """TopOpeBRepDS_DataMapIteratorOfDataMapOfShapeState* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopAbs_State,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepDS_DataMapOfShapeState.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepDS_DataStructure")
genFiles("TopOpeBRepDS_define",
  comment = @[(37, 63)]
)
genFiles("TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape")
genFiles("TopOpeBRepDS_DoubleMapOfIntegerShape")
pp("topopebrepds_doublemapofintegershape.nim",
  replaceAll = @[("""TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape* = Iterator[cint,
      TopoDS_Shape, TColStdMapIntegerHasher, TopToolsShapeMapHasher]""",
      """TopOpeBRepDS_DoubleMapIteratorOfDoubleMapOfIntegerShape* {.importcpp:"NCollection_DoubleMap<Standard_Integer,TopoDS_Shape,TColStd_MapIntegerHasher,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepDS_DoubleMapOfIntegerShape.hxx", bycopy.} = object"""
      )]
)

genFiles("TopOpeBRepDS_DRAW")
genFiles("TopOpeBRepDS_Dumper")
pp("topopebrepds_dumper.nim",
  replaceAll = @[("""TCollectionAsciiString = """"", """TCollectionAsciiString = newTCollectionAsciiString("")""")]
)

genFiles("TopOpeBRepDS_Edge3dInterferenceTool")
genFiles("TopOpeBRepDS_EdgeInterferenceTool")
genFiles("TopOpeBRepDS_EdgeVertexInterference")
genFiles("TopOpeBRepDS_EIR")
genFiles("TopOpeBRepDS_Explorer")
genFiles("TopOpeBRepDS_EXPORT")
genFiles("TopOpeBRepDS_FaceEdgeInterference")
genFiles("TopOpeBRepDS_FaceInterferenceTool")
genFiles("TopOpeBRepDS_Filter")
pp("topopebrepds_filter.nim",
  replaceAll = @[("TopOpeBRepToolPShapeClassifier = 0", "TopOpeBRepToolPShapeClassifier = cast[TopOpeBRepToolPShapeClassifier](0)")]
)

genFiles("TopOpeBRepDS_FIR")
genFiles("TopOpeBRepDS_GapFiller")
genFiles("TopOpeBRepDS_GapTool")
genFiles("TopOpeBRepDS_GeometryData")
pp("topopebrepds_geometrydata.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("TopOpeBRepDS_HArray1OfDataMapOfIntegerListOfInterference")
genFiles("TopOpeBRepDS_HDataStructure")
pp("topopebrepds_hdatastructure.nim",
  replaceAll = @[("""TCollectionAsciiString = """"", """TCollectionAsciiString = newTCollectionAsciiString("")""")]
)
genFiles("TopOpeBRepDS")
pp("topopebrepds.nim",
  replaceAll = @[("""TCollectionAsciiString = """"",
  """TCollectionAsciiString = newTCollectionAsciiString("")""")]
)
genFiles("TopOpeBRepDS_IndexedDataMapOfShapeWithState")
genFiles("TopOpeBRepDS_IndexedDataMapOfVertexPoint")
genFiles("TopOpeBRepDS_Interference")
genFiles("TopOpeBRepDS_InterferenceIterator")
pp("topopebrepds_interferenceiterator.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("TopOpeBRepDS_InterferenceTool")
genFiles("TopOpeBRepDS_Kind")
pp("topopebrepds_kind.nim",
  replaceAll = @[("""TopOpeBRepDS_POINT, TopOpeBRepDS_CURVE, TopOpeBRepDS_SURFACE,
    TopOpeBRepDS_VERTEX, TopOpeBRepDS_EDGE, TopOpeBRepDS_WIRE, TopOpeBRepDS_FACE,
    TopOpeBRepDS_SHELL, TopOpeBRepDS_SOLID, TopOpeBRepDS_COMPSOLID,
    TopOpeBRepDS_COMPOUND, TopOpeBRepDS_UNKNOWN""",
    """tobrdsPOINT, tobrdsCURVE, tobrdsSURFACE,
    tobrdsVERTEX, tobrdsEDGE, tobrdsWIRE, tobrdsFACE,
    tobrdsSHELL, tobrdsSOLID, tobrdsCOMPSOLID,
    tobrdsCOMPOUND, tobrdsUNKNOWN""")]
)
genFiles("TopOpeBRepDS_ListIteratorOfListOfInterference")
genFiles("TopOpeBRepDS_ListOfInterference")
pp("topopebrepds_listofinterference.nim",
  replaceAll = @[("""TopOpeBRepDS_ListIteratorOfListOfInterference* = Iterator[
      Handle[TopOpeBRepDS_Interference]]""",
      """TopOpeBRepDS_ListIteratorOfListOfInterference* {.importcpp:"NCollection_List<Handle(TopOpeBRepDS_Interference)>::Iterator", header:"TopOpeBRepDS_ListOfInterference.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepDS_ListOfShapeOn1State")
genFiles("TopOpeBRepDS_MapOfCurve")
pp("topopebrepds_mapofcurve.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfMapOfCurve* = Iterator[cint,
      TopOpeBRepDS_CurveData, TColStdMapIntegerHasher]""", 
      """TopOpeBRepDS_DataMapIteratorOfMapOfCurve* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_CurveData,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_MapOfCurve.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepDS_MapOfIntegerShapeData")
pp("topopebrepds_mapofintegershapedata.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData* = Iterator[cint,
      TopOpeBRepDS_ShapeData, TColStdMapIntegerHasher]""",
      """TopOpeBRepDS_DataMapIteratorOfMapOfIntegerShapeData* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_ShapeData,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_MapOfIntegerShapeData.hxx", bycopy.} = object"""
      )]
)
genFiles("TopOpeBRepDS_MapOfPoint")
pp("topopebrepds_mapofpoint.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfMapOfPoint* = Iterator[cint,
      TopOpeBRepDS_PointData, TColStdMapIntegerHasher]""",
  """TopOpeBRepDS_DataMapIteratorOfMapOfPoint* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_PointData,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_MapOfPoint.hxx", bycopy.}  = object""")]
)
genFiles("TopOpeBRepDS_MapOfShapeData")
genFiles("TopOpeBRepDS_MapOfSurface")
pp("topopebrepds_mapofsurface.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfMapOfSurface* = Iterator[cint,
      TopOpeBRepDS_SurfaceData, TColStdMapIntegerHasher]""",
      """TopOpeBRepDS_DataMapIteratorOfMapOfSurface* {.importcpp:"NCollection_DataMap<Standard_Integer,TopOpeBRepDS_SurfaceData,TColStd_MapIntegerHasher>::Iterator", header:"TopOpeBRepDS_MapOfSurface.hxx", bycopy.} = object"""
      )]
)

genFiles("TopOpeBRepDS_Marker")
genFiles("TopOpeBRepDS_PDataStructure")
genFiles("TopOpeBRepDS_PointData")
genFiles("TopOpeBRepDS_PointExplorer")
genFiles("TopOpeBRepDS_Point")
genFiles("TopOpeBRepDS_PointIterator")
genFiles("TopOpeBRepDS_ProcessInterferencesTool")
genFiles("TopOpeBRepDS_Reducer")
genFiles("TopOpeBRepDS_repvg")
genFiles("TopOpeBRepDS_samdom")
genFiles("TopOpeBRepDS_ShapeData")
genFiles("TopOpeBRepDS_ShapeShapeInterference")
genFiles("TopOpeBRepDS_ShapeSurface")
pp("topopebrepds_shapesurface.nim",
  replaceAll = @[("""TopOpeBRepDS_DataMapIteratorOfShapeSurface* = Iterator[TopoDS_Shape,
      Handle[GeomSurface], TopToolsShapeMapHasher]""",
      """TopOpeBRepDS_DataMapIteratorOfShapeSurface* {.importcpp:"NCollection_DataMap<TopoDS_Shape,Handle(Geom_Surface),TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepDS_ShapeSurface.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepDS_ShapeWithState")
genFiles("TopOpeBRepDS_SolidSurfaceInterference")
genFiles("TopOpeBRepDS_SurfaceCurveInterference")
genFiles("TopOpeBRepDS_SurfaceData")
genFiles("TopOpeBRepDS_SurfaceExplorer")
genFiles("TopOpeBRepDS_Surface")
genFiles("TopOpeBRepDS_SurfaceIterator")
genFiles("TopOpeBRepDS_TKI")
pp("topopebrepds_tki.nim",
  replaceAll = @[("""TCollectionAsciiString = """"", """TCollectionAsciiString = newTCollectionAsciiString("")""")]
)
genFiles("TopOpeBRepDS_TOOL")
genFiles("TopOpeBRepDS_Transition")



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