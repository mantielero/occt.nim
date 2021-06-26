# /usr/include/opencascade/BRepPrim_Wedge.hxx --> occt/tkPrim/brepprim/BRepPrim_Wedge.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimwedge = "/usr/include/opencascade/BRepPrim_Wedge.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
type
  BRepPrimWedge* {.importcpp: "BRepPrim_Wedge", header: headerBrepprimwedge, bycopy.} = object of BRepPrimGWedge


proc `new`*(this: var BRepPrimWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Wedge::operator new", header: headerBrepprimwedge.}
proc `delete`*(this: var BRepPrimWedge; theAddress: pointer) {.
    importcpp: "BRepPrim_Wedge::operator delete", header: headerBrepprimwedge.}
proc `new[]`*(this: var BRepPrimWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Wedge::operator new[]", header: headerBrepprimwedge.}
proc `delete[]`*(this: var BRepPrimWedge; theAddress: pointer) {.
    importcpp: "BRepPrim_Wedge::operator delete[]", header: headerBrepprimwedge.}
proc `new`*(this: var BRepPrimWedge; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Wedge::operator new", header: headerBrepprimwedge.}
proc `delete`*(this: var BRepPrimWedge; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Wedge::operator delete", header: headerBrepprimwedge.}
proc constructBRepPrimWedge*(): BRepPrimWedge {.constructor,
    importcpp: "BRepPrim_Wedge(@)", header: headerBrepprimwedge.}
proc constructBRepPrimWedge*(axes: GpAx2; dx: StandardReal; dy: StandardReal;
                            dz: StandardReal): BRepPrimWedge {.constructor,
    importcpp: "BRepPrim_Wedge(@)", header: headerBrepprimwedge.}
proc constructBRepPrimWedge*(axes: GpAx2; dx: StandardReal; dy: StandardReal;
                            dz: StandardReal; ltx: StandardReal): BRepPrimWedge {.
    constructor, importcpp: "BRepPrim_Wedge(@)", header: headerBrepprimwedge.}
proc constructBRepPrimWedge*(axes: GpAx2; xmin: StandardReal; ymin: StandardReal;
                            zmin: StandardReal; z2min: StandardReal;
                            x2min: StandardReal; xmax: StandardReal;
                            ymax: StandardReal; zmax: StandardReal;
                            z2max: StandardReal; x2max: StandardReal): BRepPrimWedge {.
    constructor, importcpp: "BRepPrim_Wedge(@)", header: headerBrepprimwedge.}