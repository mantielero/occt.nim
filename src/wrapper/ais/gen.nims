#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "ais"
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

# ls /usr/include/opencascade/AIS*.hxx | cut -c 26-

genFiles("AIS_AngleDimension")
genFiles("AIS_AnimationCamera")
genFiles("AIS_Animation")
genFiles("AIS_AnimationObject")
genFiles("AIS_AnimationTimer")
genFiles("AIS_AttributeFilter")
genFiles("AIS_Axis")
genFiles("AIS_BadEdgeFilter")
genFiles("AIS_C0RegularityFilter")
genFiles("AIS_CameraFrustum")
genFiles("AIS_Chamf2dDimension")
genFiles("AIS_Chamf3dDimension")
genFiles("AIS_Circle")
genFiles("AIS_ClearMode")
genFiles("AIS_ColoredDrawer")
genFiles("AIS_ColoredShape")
genFiles("AIS_ColorScale")
genFiles("AIS_ConcentricRelation")
genFiles("AIS_ConnectedInteractive")
genFiles("AIS_ConnectStatus")
genFiles("AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive")
genFiles("AIS_DataMapIteratorOfDataMapOfIOStatus")
genFiles("AIS_DataMapIteratorOfDataMapOfSelStat")
genFiles("AIS_DataMapofIntegerListOfinteractive")
pp("ais_datamapofintegerlistofinteractive.nim",
  replaceAll = @[
    ("""AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive* = Iterator[cint,
      AIS_ListOfInteractive, TColStdMapIntegerHasher]""",
      """AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive*[cint,
      AIS_ListOfInteractive, TColStdMapIntegerHasher] {.importcpp:"NCollection_DataMap<'0,'1,'2>::Iterator", header:"AIS_DataMapofIntegerListOfinteractive.hxx", bycopy.} = object"""
      )

  ]
)
genFiles("AIS_DataMapOfIOStatus")
pp("ais_datamapofiostatus.nim",
  replaceAll = @[
    ("""AIS_DataMapIteratorOfDataMapOfIOStatus* = Iterator[
      Handle[AIS_InteractiveObject], Handle[AIS_GlobalStatus],
      TColStdMapTransientHasher]""",
      """AIS_DataMapIteratorOfDataMapOfIOStatus* [ HandleAIS_InteractiveObject, HandleAIS_GlobalStatus, TColStdMapTransientHasher] {.importcpp:"NCollection_DataMap<'0,'1,'2>::Iterator", header:"AIS_DataMapOfIOStatus.hxx", bycopy.} = object"""
      )

  ]
)
genFiles("AIS_DataMapOfSelStat")
pp("ais_datamapofselstat.nim",
  commentRange = @[(17,22)]
)
genFiles("AIS_DataMapOfShapeDrawer")
genFiles("AIS_DiameterDimension")
genFiles("AIS_Dimension")
genFiles("AIS_DimensionOwner")
genFiles("AIS_DisplayMode")
genFiles("AIS_DisplayStatus")
pp("ais_displaystatus.nim",
  replaceAll = @[("AIS_DS_", "aIS_DS_")]
)
genFiles("AIS_DragAction")
genFiles("AIS_EllipseRadiusDimension")
genFiles("AIS_EqualDistanceRelation")
genFiles("AIS_EqualRadiusRelation")
genFiles("AIS_ExclusionFilter")
genFiles("AIS_FixRelation")
genFiles("AIS_GlobalStatus")
genFiles("AIS_GraphicTool")
genFiles("AIS")
genFiles("AIS_IdenticRelation")
genFiles("AIS_IndexedDataMapOfOwnerPrs")
genFiles("AIS_InteractiveContext")
pp("ais_interactivecontext.nim",
  replaceAll = @[("pnt(0.0, 0.0, 0.0)", "newPnt(0.0, 0.0, 0.0)"),
    ("Handle[AIS_InteractiveObject] = nil", "Handle[AIS_InteractiveObject] = cast[HandleAIS_InteractiveObject](nil)")
  ]
)
genFiles("AIS_InteractiveObject")
genFiles("AIS_KindOfInteractive")
pp("ais_kindofinteractive.nim",
  replaceAll = @[("AIS_KOI", "aIS_KOI")]
)
genFiles("AIS_LengthDimension")
genFiles("AIS_Line")
genFiles("AIS_ListIteratorOfListOfInteractive")
genFiles("AIS_ListOfInteractive")
pp("ais_listofinteractive.nim",
  replaceAll = @[("AIS_ListIteratorOfListOfInteractive* = Iterator[Handle[AIS_InteractiveObject]]",
    """AIS_ListIteratorOfListOfInteractive*[HandleAIS_InteractiveObject] {.importcpp:"NCollection_List<'0>::Iterator", header:"AIS_ListOfInteractive.hxx", bycopy.} = object"""
  )]
)
genFiles("AIS_Manipulator")
pp("ais_manipulator.nim",
  commentRange = @[(30,32), (172,178)]
)
genFiles("AIS_ManipulatorMode")
genFiles("AIS_ManipulatorOwner")
genFiles("AIS_MapIteratorOfMapOfInteractive")
genFiles("AIS_MapOfInteractive")
pp("ais_mapofinteractive.nim",
  replaceAll = @[("""AIS_MapIteratorOfMapOfInteractive* = Iterator[Handle[AIS_InteractiveObject],
      TColStdMapTransientHasher]""",
      """AIS_MapIteratorOfMapOfInteractive*[HandleAIS_InteractiveObject,
      TColStdMapTransientHasher] {.importcpp:"NCollection_Map<'0, '1>::Iterator", header:"AIS_MapOfInteractive.hxx", bycopy.} = object""")]
)
genFiles("AIS_MaxRadiusDimension")
genFiles("AIS_MediaPlayer")
genFiles("AIS_MidPointRelation")
genFiles("AIS_MinRadiusDimension")
genFiles("AIS_MouseGesture")
pp("ais_mousegesture.nim",
  replaceAll = @[("AIS_MouseGestureNONE", "aIS_MouseGestureNONE"),
    ("AIS_MouseGestureSelectRectangle", "aIS_MouseGestureSelectRectangle"),
    ("AIS_MouseGestureSelectLasso", "aIS_MouseGestureSelectLasso"),
    ("AIS_MouseGestureZoom", "aIS_MouseGestureZoom"),
    ("AIS_MouseGestureZoomWindow", "aIS_MouseGestureZoomWindow"),
    ("AIS_MouseGesturePan", "aIS_MouseGesturePan"),
    ("AIS_MouseGestureRotateOrbit", "aIS_MouseGestureRotateOrbit"),
    ("AIS_MouseGestureRotateView", "aIS_MouseGestureRotateView"),
    ("AIS_MouseGestureMap* = NCollectionDataMap[cuint, AIS_MouseGesture]",
    """AIS_MouseGestureMap*[cuint, AIS_MouseGesture] {.importcpp:"NCollection_DataMap<'0, '1>", header:"AIS_MouseGesture.hxx", bycopy.} = object""")
  ]
)
genFiles("AIS_MultipleConnectedInteractive")
genFiles("AIS_NavigationMode")
pp("ais_navigationmode.nim",
  replaceAll = @[("AIS_NavigationModeOrbit", "aIS_NavigationModeOrbit"), 
    ("AIS_NavigationModeFirstPersonFlight", "aIS_NavigationModeFirstPersonFlight"),
    ("AIS_NavigationModeFirstPersonWalk", "aIS_NavigationModeFirstPersonWalk")
    ]
)
genFiles("AIS_NListOfEntityOwner")
genFiles("AIS_OffsetDimension")
genFiles("AIS_ParallelRelation")
genFiles("AIS_PerpendicularRelation")
genFiles("AIS_Plane")
genFiles("AIS_PlaneTrihedron")
genFiles("AIS_PointCloud")
pp("ais_pointcloud.nim",
  replaceAll = @[("Handle[QuantityHArray1OfColor] = nil", "Handle[QuantityHArray1OfColor] = cast[Handle[QuantityHArray1OfColor]](nil)"),
    ("Handle[TColgpHArray1OfDir] = nil", "Handle[TColgpHArray1OfDir] = cast[Handle[TColgpHArray1OfDir]](nil)")
  ]
)
genFiles("AIS_Point")
genFiles("AIS_RadiusDimension")
genFiles("AIS_Relation")
genFiles("AIS_RotationMode")
pp("ais_rotationmode.nim",
  replaceAll = @[
    ("AIS_RotationModeBndBoxActive", "aIS_RotationModeBndBoxActive"),
    ("AIS_RotationModePickLast", "aIS_RotationModePickLast"),
    ("AIS_RotationModePickCenter", "aIS_RotationModePickCenter"),
    ("AIS_RotationModeCameraAt", "aIS_RotationModeCameraAt"),
    ("AIS_RotationModeBndBoxScene", "aIS_RotationModeBndBoxScene")
  ]
)
genFiles("AIS_RubberBand")
genFiles("AIS_Selection")
genFiles("AIS_SelectionModesConcurrency")
pp("ais_selectionmodesconcurrency.nim",
  replaceAll = @[("AIS_SelectionModesConcurrencySingle", "aIS_SelectionModesConcurrencySingle"),
    ("AIS_SelectionModesConcurrencyGlobalOrLocal", "aIS_SelectionModesConcurrencyGlobalOrLocal"),
    ("AIS_SelectionModesConcurrencyMultiple", "aIS_SelectionModesConcurrencyMultiple")
  ]
)
genFiles("AIS_SelectStatus")
genFiles("AIS_SequenceOfInteractive")
genFiles("AIS_Shape")
genFiles("AIS_SignatureFilter")
genFiles("AIS_StatusOfDetection")
genFiles("AIS_StatusOfPick")
genFiles("AIS_SymmetricRelation")
genFiles("AIS_TangentRelation")
genFiles("AIS_TextLabel")
genFiles("AIS_TexturedShape")
genFiles("AIS_Triangulation")
genFiles("AIS_Trihedron")
genFiles("AIS_TrihedronOwner")
genFiles("AIS_TrihedronSelectionMode")
genFiles("AIS_TypeFilter")
genFiles("AIS_TypeOfAttribute")
genFiles("AIS_TypeOfAxis")
genFiles("AIS_TypeOfIso")
pp("ais_typeofiso.nim",
  replaceAll = @[("AIS_TOI", "aIS_TOI")]
)
genFiles("AIS_TypeOfPlane")
genFiles("AIS_ViewController")
genFiles("AIS_ViewCube",
  replaceAll = @[("return ::HashCode (theValue, theUpper);", "")]
)
genFiles("AIS_ViewInputBuffer")
pp("ais_viewinputbuffer.nim",
  commentRange = @[(52,52), (64,64), (77,77), (91,91), (106,106), (120,120), (134, 134), (147,147)]
)
genFiles("AIS_WalkDelta")
genFiles("AIS_XRTrackedDevice")





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