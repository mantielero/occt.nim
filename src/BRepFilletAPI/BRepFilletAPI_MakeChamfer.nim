import brepfilletapi_types
import ../TopoDS/topods_types
import ../Standard/standard
# /usr/include/opencascade/BRepFilletAPI_MakeChamfer.hxx --> occt/BRepFilletAPI/BRepFilletAPI_MakeChamfer.nim
#import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

#const sourcePath = currentSourcePath().splitPath.head
#{.passC: "-I\"/usr/include/opencascade/\"".}
#const headerBrepfilletapimakechamfer = "/usr/include/opencascade/BRepFilletAPI_MakeChamfer.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepBuild_HBuilder"

{.push header:"BRepFilletAPI_MakeChamfer.hxx".}

proc `new`*(this: var BRepFilletAPI_MakeChamfer; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeChamfer::operator new".}
proc `delete`*(this: var BRepFilletAPI_MakeChamfer; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeChamfer::operator delete".}
proc `new[]`*(this: var BRepFilletAPI_MakeChamfer; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeChamfer::operator new[]".}
proc `delete[]`*(this: var BRepFilletAPI_MakeChamfer; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeChamfer::operator delete[]".}
proc `new`*(this: var BRepFilletAPI_MakeChamfer; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFilletAPI_MakeChamfer::operator new".}
proc `delete`*(this: var BRepFilletAPI_MakeChamfer; a2: pointer; a3: pointer) {.
    importcpp: "BRepFilletAPI_MakeChamfer::operator delete".}
proc constructBRepFilletAPI_MakeChamfer*(s: TopoDS_Shape): BRepFilletAPI_MakeChamfer {.
    constructor, importcpp: "BRepFilletAPI_MakeChamfer(@)".}
proc add*(this: var BRepFilletAPI_MakeChamfer; e: TopoDS_Edge) {.importcpp: "Add".}
proc add*(this: var BRepFilletAPI_MakeChamfer; dis: StandardReal; e: TopoDS_Edge) {.
    importcpp: "Add".}
proc setDist*(this: var BRepFilletAPI_MakeChamfer; dis: StandardReal;
             ic: StandardInteger; f: TopoDS_Face) {.importcpp: "SetDist".}
proc getDist*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
             dis: var StandardReal) {.noSideEffect, importcpp: "GetDist".}
proc add*(this: var BRepFilletAPI_MakeChamfer; dis1: StandardReal; dis2: StandardReal;
         e: TopoDS_Edge; f: TopoDS_Face) {.importcpp: "Add".}
proc setDists*(this: var BRepFilletAPI_MakeChamfer; dis1: StandardReal;
              dis2: StandardReal; ic: StandardInteger; f: TopoDS_Face) {.
    importcpp: "SetDists".}
proc dists*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
           dis1: var StandardReal; dis2: var StandardReal) {.noSideEffect,
    importcpp: "Dists".}
proc addDA*(this: var BRepFilletAPI_MakeChamfer; dis: StandardReal;
           angle: StandardReal; e: TopoDS_Edge; f: TopoDS_Face) {.importcpp: "AddDA".}
proc setDistAngle*(this: var BRepFilletAPI_MakeChamfer; dis: StandardReal;
                  angle: StandardReal; ic: StandardInteger; f: TopoDS_Face) {.
    importcpp: "SetDistAngle".}
proc getDistAngle*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
                  dis: var StandardReal; angle: var StandardReal) {.noSideEffect,
    importcpp: "GetDistAngle".}
#[FIXME
proc setMode*(this: var BRepFilletAPI_MakeChamfer; theMode: ChFiDS_ChamfMode) {.
    importcpp: "SetMode".}
]#
proc isSymetric*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsSymetric".}
proc isTwoDistances*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTwoDistances".}
proc isDistanceAngle*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsDistanceAngle".}
proc resetContour*(this: var BRepFilletAPI_MakeChamfer; ic: StandardInteger) {.
    importcpp: "ResetContour".}
proc nbContours*(this: BRepFilletAPI_MakeChamfer): StandardInteger {.noSideEffect,
    importcpp: "NbContours".}
proc contour*(this: BRepFilletAPI_MakeChamfer; e: TopoDS_Edge): StandardInteger {.
    noSideEffect, importcpp: "Contour".}
proc nbEdges*(this: BRepFilletAPI_MakeChamfer; i: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbEdges".}
proc edge*(this: BRepFilletAPI_MakeChamfer; i: StandardInteger; j: StandardInteger): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge".}
proc remove*(this: var BRepFilletAPI_MakeChamfer; e: TopoDS_Edge) {.
    importcpp: "Remove".}
proc length*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Length".}
proc firstVertex*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex".}
proc lastVertex*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex".}
proc abscissa*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger; v: TopoDS_Vertex): StandardReal {.
    noSideEffect, importcpp: "Abscissa".}
proc relativeAbscissa*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
                      v: TopoDS_Vertex): StandardReal {.noSideEffect,
    importcpp: "RelativeAbscissa".}
proc closedAndTangent*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "ClosedAndTangent".}
proc closed*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Closed".}
proc build*(this: var BRepFilletAPI_MakeChamfer) {.importcpp: "Build".}
proc reset*(this: var BRepFilletAPI_MakeChamfer) {.importcpp: "Reset".}
#[FIXME
proc builder*(this: BRepFilletAPI_MakeChamfer): Handle[TopOpeBRepBuildHBuilder] {.
    noSideEffect, importcpp: "Builder".}
   
proc generated*(this: var BRepFilletAPI_MakeChamfer; eorV: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated".}
proc modified*(this: var BRepFilletAPI_MakeChamfer; f: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified".}
]#     
proc isDeleted*(this: var BRepFilletAPI_MakeChamfer; f: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted".}
proc simulate*(this: var BRepFilletAPI_MakeChamfer; ic: StandardInteger) {.
    importcpp: "Simulate".}
proc nbSurf*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbSurf".}
#[FIXME
proc sect*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
          `is`: StandardInteger): Handle[ChFiDS_SecHArray1] {.noSideEffect,
    importcpp: "Sect".}
]#
{.pop.}