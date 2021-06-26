# /usr/include/opencascade/BRepPrim_OneAxis.hxx --> occt/tkPrim/brepprim/BRepPrim_OneAxis.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimoneaxis = "/usr/include/opencascade/BRepPrim_OneAxis.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepPrim_Builder"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
type
  BRepPrimOneAxis* {.importcpp: "BRepPrim_OneAxis", header: headerBrepprimoneaxis,
                    bycopy.} = object


proc `new`*(this: var BRepPrimOneAxis; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_OneAxis::operator new", header: headerBrepprimoneaxis.}
proc `delete`*(this: var BRepPrimOneAxis; theAddress: pointer) {.
    importcpp: "BRepPrim_OneAxis::operator delete", header: headerBrepprimoneaxis.}
proc `new[]`*(this: var BRepPrimOneAxis; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_OneAxis::operator new[]", header: headerBrepprimoneaxis.}
proc `delete[]`*(this: var BRepPrimOneAxis; theAddress: pointer) {.
    importcpp: "BRepPrim_OneAxis::operator delete[]",
    header: headerBrepprimoneaxis.}
proc `new`*(this: var BRepPrimOneAxis; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_OneAxis::operator new", header: headerBrepprimoneaxis.}
proc `delete`*(this: var BRepPrimOneAxis; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_OneAxis::operator delete", header: headerBrepprimoneaxis.}
proc setMeridianOffset*(this: var BRepPrimOneAxis; meridianOffset: StandardReal = 0) {.
    importcpp: "SetMeridianOffset", header: headerBrepprimoneaxis.}
proc axes*(this: BRepPrimOneAxis): GpAx2 {.noSideEffect, importcpp: "Axes",
                                       header: headerBrepprimoneaxis.}
proc axes*(this: var BRepPrimOneAxis; a: GpAx2) {.importcpp: "Axes",
    header: headerBrepprimoneaxis.}
proc angle*(this: BRepPrimOneAxis): StandardReal {.noSideEffect, importcpp: "Angle",
    header: headerBrepprimoneaxis.}
proc angle*(this: var BRepPrimOneAxis; a: StandardReal) {.importcpp: "Angle",
    header: headerBrepprimoneaxis.}
proc vMin*(this: BRepPrimOneAxis): StandardReal {.noSideEffect, importcpp: "VMin",
    header: headerBrepprimoneaxis.}
proc vMin*(this: var BRepPrimOneAxis; v: StandardReal) {.importcpp: "VMin",
    header: headerBrepprimoneaxis.}
proc vMax*(this: BRepPrimOneAxis): StandardReal {.noSideEffect, importcpp: "VMax",
    header: headerBrepprimoneaxis.}
proc vMax*(this: var BRepPrimOneAxis; v: StandardReal) {.importcpp: "VMax",
    header: headerBrepprimoneaxis.}
proc makeEmptyLateralFace*(this: BRepPrimOneAxis): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: headerBrepprimoneaxis.}
proc makeEmptyMeridianEdge*(this: BRepPrimOneAxis; ang: StandardReal): TopoDS_Edge {.
    noSideEffect, importcpp: "MakeEmptyMeridianEdge", header: headerBrepprimoneaxis.}
proc setMeridianPCurve*(this: BRepPrimOneAxis; e: var TopoDS_Edge; f: TopoDS_Face) {.
    noSideEffect, importcpp: "SetMeridianPCurve", header: headerBrepprimoneaxis.}
proc meridianValue*(this: BRepPrimOneAxis; v: StandardReal): GpPnt2d {.noSideEffect,
    importcpp: "MeridianValue", header: headerBrepprimoneaxis.}
proc meridianOnAxis*(this: BRepPrimOneAxis; v: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "MeridianOnAxis", header: headerBrepprimoneaxis.}
proc meridianClosed*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "MeridianClosed", header: headerBrepprimoneaxis.}
proc vMaxInfinite*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "VMaxInfinite", header: headerBrepprimoneaxis.}
proc vMinInfinite*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "VMinInfinite", header: headerBrepprimoneaxis.}
proc hasTop*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "HasTop", header: headerBrepprimoneaxis.}
proc hasBottom*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "HasBottom", header: headerBrepprimoneaxis.}
proc hasSides*(this: BRepPrimOneAxis): StandardBoolean {.noSideEffect,
    importcpp: "HasSides", header: headerBrepprimoneaxis.}
proc shell*(this: var BRepPrimOneAxis): TopoDS_Shell {.importcpp: "Shell",
    header: headerBrepprimoneaxis.}
proc lateralFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "LateralFace",
    header: headerBrepprimoneaxis.}
proc topFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "TopFace",
    header: headerBrepprimoneaxis.}
proc bottomFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "BottomFace",
    header: headerBrepprimoneaxis.}
proc startFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "StartFace",
    header: headerBrepprimoneaxis.}
proc endFace*(this: var BRepPrimOneAxis): TopoDS_Face {.importcpp: "EndFace",
    header: headerBrepprimoneaxis.}
proc lateralWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "LateralWire",
    header: headerBrepprimoneaxis.}
proc lateralStartWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.
    importcpp: "LateralStartWire", header: headerBrepprimoneaxis.}
proc lateralEndWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.
    importcpp: "LateralEndWire", header: headerBrepprimoneaxis.}
proc topWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "TopWire",
    header: headerBrepprimoneaxis.}
proc bottomWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "BottomWire",
    header: headerBrepprimoneaxis.}
proc startWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "StartWire",
    header: headerBrepprimoneaxis.}
proc axisStartWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.
    importcpp: "AxisStartWire", header: headerBrepprimoneaxis.}
proc endWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "EndWire",
    header: headerBrepprimoneaxis.}
proc axisEndWire*(this: var BRepPrimOneAxis): TopoDS_Wire {.importcpp: "AxisEndWire",
    header: headerBrepprimoneaxis.}
proc axisEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "AxisEdge",
    header: headerBrepprimoneaxis.}
proc startEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "StartEdge",
    header: headerBrepprimoneaxis.}
proc endEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "EndEdge",
    header: headerBrepprimoneaxis.}
proc startTopEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.
    importcpp: "StartTopEdge", header: headerBrepprimoneaxis.}
proc startBottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.
    importcpp: "StartBottomEdge", header: headerBrepprimoneaxis.}
proc endTopEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "EndTopEdge",
    header: headerBrepprimoneaxis.}
proc endBottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.
    importcpp: "EndBottomEdge", header: headerBrepprimoneaxis.}
proc topEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "TopEdge",
    header: headerBrepprimoneaxis.}
proc bottomEdge*(this: var BRepPrimOneAxis): TopoDS_Edge {.importcpp: "BottomEdge",
    header: headerBrepprimoneaxis.}
proc axisTopVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "AxisTopVertex", header: headerBrepprimoneaxis.}
proc axisBottomVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "AxisBottomVertex", header: headerBrepprimoneaxis.}
proc topStartVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "TopStartVertex", header: headerBrepprimoneaxis.}
proc topEndVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "TopEndVertex", header: headerBrepprimoneaxis.}
proc bottomStartVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "BottomStartVertex", header: headerBrepprimoneaxis.}
proc bottomEndVertex*(this: var BRepPrimOneAxis): TopoDS_Vertex {.
    importcpp: "BottomEndVertex", header: headerBrepprimoneaxis.}
proc destroyBRepPrimOneAxis*(this: var BRepPrimOneAxis) {.
    importcpp: "#.~BRepPrim_OneAxis()", header: headerBrepprimoneaxis.}