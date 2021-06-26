# /usr/include/opencascade/BRepPrimAPI_MakeWedge.hxx --> occt/tkPrim/brepprimapi/BRepPrimAPI_MakeWedge.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakewedge = "/usr/include/opencascade/BRepPrimAPI_MakeWedge.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Wedge"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  BRepPrimAPI_MakeWedge* {.importcpp: "BRepPrimAPI_MakeWedge",
                          header: headerBrepprimapimakewedge, bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepPrimAPI_MakeWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeWedge::operator new",
    header: headerBrepprimapimakewedge.}
proc `delete`*(this: var BRepPrimAPI_MakeWedge; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeWedge::operator delete",
    header: headerBrepprimapimakewedge.}
proc `new[]`*(this: var BRepPrimAPI_MakeWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeWedge::operator new[]",
    header: headerBrepprimapimakewedge.}
proc `delete[]`*(this: var BRepPrimAPI_MakeWedge; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeWedge::operator delete[]",
    header: headerBrepprimapimakewedge.}
proc `new`*(this: var BRepPrimAPI_MakeWedge; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeWedge::operator new",
    header: headerBrepprimapimakewedge.}
proc `delete`*(this: var BRepPrimAPI_MakeWedge; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeWedge::operator delete",
    header: headerBrepprimapimakewedge.}
proc constructBRepPrimAPI_MakeWedge*(dx: StandardReal; dy: StandardReal;
                                    dz: StandardReal; ltx: StandardReal): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: headerBrepprimapimakewedge.}
proc constructBRepPrimAPI_MakeWedge*(axes: GpAx2; dx: StandardReal; dy: StandardReal;
                                    dz: StandardReal; ltx: StandardReal): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: headerBrepprimapimakewedge.}
proc constructBRepPrimAPI_MakeWedge*(dx: StandardReal; dy: StandardReal;
                                    dz: StandardReal; xmin: StandardReal;
                                    zmin: StandardReal; xmax: StandardReal;
                                    zmax: StandardReal): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: headerBrepprimapimakewedge.}
proc constructBRepPrimAPI_MakeWedge*(axes: GpAx2; dx: StandardReal; dy: StandardReal;
                                    dz: StandardReal; xmin: StandardReal;
                                    zmin: StandardReal; xmax: StandardReal;
                                    zmax: StandardReal): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: headerBrepprimapimakewedge.}
proc wedge*(this: var BRepPrimAPI_MakeWedge): var BRepPrimWedge {.importcpp: "Wedge",
    header: headerBrepprimapimakewedge.}
proc build*(this: var BRepPrimAPI_MakeWedge) {.importcpp: "Build",
    header: headerBrepprimapimakewedge.}
proc shell*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell {.importcpp: "Shell",
    header: headerBrepprimapimakewedge.}
converter `topoDS_Shell`*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell {.
    importcpp: "BRepPrimAPI_MakeWedge::operator TopoDS_Shell",
    header: headerBrepprimapimakewedge.}
proc solid*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid {.importcpp: "Solid",
    header: headerBrepprimapimakewedge.}
converter `topoDS_Solid`*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid {.
    importcpp: "BRepPrimAPI_MakeWedge::operator TopoDS_Solid",
    header: headerBrepprimapimakewedge.}