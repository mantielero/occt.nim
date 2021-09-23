# /usr/include/opencascade/BRepPrim_Revolution.hxx --> occt/brepprim/BRepPrim_Revolution.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimrevolution = "/usr/include/opencascade/BRepPrim_Revolution.hxx"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
type
  BRepPrimRevolution* {.importcpp: "BRepPrim_Revolution",
                       header: headerBrepprimrevolution, bycopy.} = object of BRepPrimOneAxis


proc `new`*(this: var BRepPrimRevolution; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Revolution::operator new",
    header: headerBrepprimrevolution.}
proc `delete`*(this: var BRepPrimRevolution; theAddress: pointer) {.
    importcpp: "BRepPrim_Revolution::operator delete",
    header: headerBrepprimrevolution.}
proc `new[]`*(this: var BRepPrimRevolution; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Revolution::operator new[]",
    header: headerBrepprimrevolution.}
proc `delete[]`*(this: var BRepPrimRevolution; theAddress: pointer) {.
    importcpp: "BRepPrim_Revolution::operator delete[]",
    header: headerBrepprimrevolution.}
proc `new`*(this: var BRepPrimRevolution; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Revolution::operator new",
    header: headerBrepprimrevolution.}
proc `delete`*(this: var BRepPrimRevolution; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Revolution::operator delete",
    header: headerBrepprimrevolution.}
proc constructBRepPrimRevolution*(a: GpAx2; vMin: StandardReal; vMax: StandardReal;
                                 m: Handle[GeomCurve]; pm: Handle[Geom2dCurve]): BRepPrimRevolution {.
    constructor, importcpp: "BRepPrim_Revolution(@)",
    header: headerBrepprimrevolution.}
proc makeEmptyLateralFace*(this: BRepPrimRevolution): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: headerBrepprimrevolution.}
proc makeEmptyMeridianEdge*(this: BRepPrimRevolution; ang: StandardReal): TopoDS_Edge {.
    noSideEffect, importcpp: "MakeEmptyMeridianEdge",
    header: headerBrepprimrevolution.}
proc meridianValue*(this: BRepPrimRevolution; v: StandardReal): GpPnt2d {.
    noSideEffect, importcpp: "MeridianValue", header: headerBrepprimrevolution.}
proc setMeridianPCurve*(this: BRepPrimRevolution; e: var TopoDS_Edge; f: TopoDS_Face) {.
    noSideEffect, importcpp: "SetMeridianPCurve", header: headerBrepprimrevolution.}