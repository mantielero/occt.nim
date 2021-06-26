# /usr/include/opencascade/BRepPrim_GWedge.hxx --> occt/brepprim/BRepPrim_GWedge.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimgwedge = "/usr/include/opencascade/BRepPrim_GWedge.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepPrim_Builder"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pln"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Lin"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
type
  BRepPrimGWedge* {.importcpp: "BRepPrim_GWedge", header: headerBrepprimgwedge,
                   bycopy.} = object


proc `new`*(this: var BRepPrimGWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_GWedge::operator new", header: headerBrepprimgwedge.}
proc `delete`*(this: var BRepPrimGWedge; theAddress: pointer) {.
    importcpp: "BRepPrim_GWedge::operator delete", header: headerBrepprimgwedge.}
proc `new[]`*(this: var BRepPrimGWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_GWedge::operator new[]", header: headerBrepprimgwedge.}
proc `delete[]`*(this: var BRepPrimGWedge; theAddress: pointer) {.
    importcpp: "BRepPrim_GWedge::operator delete[]", header: headerBrepprimgwedge.}
proc `new`*(this: var BRepPrimGWedge; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_GWedge::operator new", header: headerBrepprimgwedge.}
proc `delete`*(this: var BRepPrimGWedge; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_GWedge::operator delete", header: headerBrepprimgwedge.}
proc constructBRepPrimGWedge*(): BRepPrimGWedge {.constructor,
    importcpp: "BRepPrim_GWedge(@)", header: headerBrepprimgwedge.}
proc constructBRepPrimGWedge*(b: BRepPrimBuilder; axes: GpAx2; dx: StandardReal;
                             dy: StandardReal; dz: StandardReal): BRepPrimGWedge {.
    constructor, importcpp: "BRepPrim_GWedge(@)", header: headerBrepprimgwedge.}
proc constructBRepPrimGWedge*(b: BRepPrimBuilder; axes: GpAx2; dx: StandardReal;
                             dy: StandardReal; dz: StandardReal; ltx: StandardReal): BRepPrimGWedge {.
    constructor, importcpp: "BRepPrim_GWedge(@)", header: headerBrepprimgwedge.}
proc constructBRepPrimGWedge*(b: BRepPrimBuilder; axes: GpAx2; xmin: StandardReal;
                             ymin: StandardReal; zmin: StandardReal;
                             z2min: StandardReal; x2min: StandardReal;
                             xmax: StandardReal; ymax: StandardReal;
                             zmax: StandardReal; z2max: StandardReal;
                             x2max: StandardReal): BRepPrimGWedge {.constructor,
    importcpp: "BRepPrim_GWedge(@)", header: headerBrepprimgwedge.}
proc axes*(this: BRepPrimGWedge): GpAx2 {.noSideEffect, importcpp: "Axes",
                                      header: headerBrepprimgwedge.}
proc getXMin*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetXMin", header: headerBrepprimgwedge.}
proc getYMin*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetYMin", header: headerBrepprimgwedge.}
proc getZMin*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetZMin", header: headerBrepprimgwedge.}
proc getZ2Min*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetZ2Min", header: headerBrepprimgwedge.}
proc getX2Min*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetX2Min", header: headerBrepprimgwedge.}
proc getXMax*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetXMax", header: headerBrepprimgwedge.}
proc getYMax*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetYMax", header: headerBrepprimgwedge.}
proc getZMax*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetZMax", header: headerBrepprimgwedge.}
proc getZ2Max*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetZ2Max", header: headerBrepprimgwedge.}
proc getX2Max*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetX2Max", header: headerBrepprimgwedge.}
proc open*(this: var BRepPrimGWedge; d1: BRepPrimDirection) {.importcpp: "Open",
    header: headerBrepprimgwedge.}
proc close*(this: var BRepPrimGWedge; d1: BRepPrimDirection) {.importcpp: "Close",
    header: headerBrepprimgwedge.}
proc isInfinite*(this: BRepPrimGWedge; d1: BRepPrimDirection): StandardBoolean {.
    noSideEffect, importcpp: "IsInfinite", header: headerBrepprimgwedge.}
proc shell*(this: var BRepPrimGWedge): TopoDS_Shell {.importcpp: "Shell",
    header: headerBrepprimgwedge.}
proc hasFace*(this: BRepPrimGWedge; d1: BRepPrimDirection): StandardBoolean {.
    noSideEffect, importcpp: "HasFace", header: headerBrepprimgwedge.}
proc face*(this: var BRepPrimGWedge; d1: BRepPrimDirection): TopoDS_Face {.
    importcpp: "Face", header: headerBrepprimgwedge.}
proc plane*(this: var BRepPrimGWedge; d1: BRepPrimDirection): GpPln {.
    importcpp: "Plane", header: headerBrepprimgwedge.}
proc hasWire*(this: BRepPrimGWedge; d1: BRepPrimDirection): StandardBoolean {.
    noSideEffect, importcpp: "HasWire", header: headerBrepprimgwedge.}
proc wire*(this: var BRepPrimGWedge; d1: BRepPrimDirection): TopoDS_Wire {.
    importcpp: "Wire", header: headerBrepprimgwedge.}
proc hasEdge*(this: BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): StandardBoolean {.
    noSideEffect, importcpp: "HasEdge", header: headerBrepprimgwedge.}
proc edge*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): TopoDS_Edge {.
    importcpp: "Edge", header: headerBrepprimgwedge.}
proc line*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): GpLin {.
    importcpp: "Line", header: headerBrepprimgwedge.}
proc hasVertex*(this: BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
               d3: BRepPrimDirection): StandardBoolean {.noSideEffect,
    importcpp: "HasVertex", header: headerBrepprimgwedge.}
proc vertex*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
            d3: BRepPrimDirection): TopoDS_Vertex {.importcpp: "Vertex",
    header: headerBrepprimgwedge.}
proc point*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
           d3: BRepPrimDirection): GpPnt {.importcpp: "Point",
                                        header: headerBrepprimgwedge.}
proc isDegeneratedShape*(this: var BRepPrimGWedge): StandardBoolean {.
    importcpp: "IsDegeneratedShape", header: headerBrepprimgwedge.}