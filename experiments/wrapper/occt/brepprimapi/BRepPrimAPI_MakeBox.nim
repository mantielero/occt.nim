# /usr/include/opencascade/BRepPrimAPI_MakeBox.hxx --> occt/brepprimapi/BRepPrimAPI_MakeBox.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimapimakebox = "/usr/include/opencascade/BRepPrimAPI_MakeBox.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Wedge"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Face"
type
  BRepPrimAPI_MakeBox* {.importcpp: "BRepPrimAPI_MakeBox",
                        header: headerBrepprimapimakebox, bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepPrimAPI_MakeBox; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeBox::operator new",
    header: headerBrepprimapimakebox.}
proc `delete`*(this: var BRepPrimAPI_MakeBox; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeBox::operator delete",
    header: headerBrepprimapimakebox.}
proc `new[]`*(this: var BRepPrimAPI_MakeBox; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeBox::operator new[]",
    header: headerBrepprimapimakebox.}
proc `delete[]`*(this: var BRepPrimAPI_MakeBox; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeBox::operator delete[]",
    header: headerBrepprimapimakebox.}
proc `new`*(this: var BRepPrimAPI_MakeBox; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeBox::operator new",
    header: headerBrepprimapimakebox.}
proc `delete`*(this: var BRepPrimAPI_MakeBox; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeBox::operator delete",
    header: headerBrepprimapimakebox.}
proc constructBRepPrimAPI_MakeBox*(): BRepPrimAPI_MakeBox {.constructor,
    importcpp: "BRepPrimAPI_MakeBox(@)", header: headerBrepprimapimakebox.}
proc constructBRepPrimAPI_MakeBox*(dx: StandardReal; dy: StandardReal;
                                  dz: StandardReal): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: headerBrepprimapimakebox.}
proc constructBRepPrimAPI_MakeBox*(p: GpPnt; dx: StandardReal; dy: StandardReal;
                                  dz: StandardReal): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: headerBrepprimapimakebox.}
proc constructBRepPrimAPI_MakeBox*(p1: GpPnt; p2: GpPnt): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: headerBrepprimapimakebox.}
proc constructBRepPrimAPI_MakeBox*(axes: GpAx2; dx: StandardReal; dy: StandardReal;
                                  dz: StandardReal): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: headerBrepprimapimakebox.}
proc init*(this: var BRepPrimAPI_MakeBox; theDX: StandardReal; theDY: StandardReal;
          theDZ: StandardReal) {.importcpp: "Init", header: headerBrepprimapimakebox.}
proc init*(this: var BRepPrimAPI_MakeBox; thePnt: GpPnt; theDX: StandardReal;
          theDY: StandardReal; theDZ: StandardReal) {.importcpp: "Init",
    header: headerBrepprimapimakebox.}
proc init*(this: var BRepPrimAPI_MakeBox; thePnt1: GpPnt; thePnt2: GpPnt) {.
    importcpp: "Init", header: headerBrepprimapimakebox.}
proc init*(this: var BRepPrimAPI_MakeBox; theAxes: GpAx2; theDX: StandardReal;
          theDY: StandardReal; theDZ: StandardReal) {.importcpp: "Init",
    header: headerBrepprimapimakebox.}
proc wedge*(this: var BRepPrimAPI_MakeBox): var BRepPrimWedge {.importcpp: "Wedge",
    header: headerBrepprimapimakebox.}
proc build*(this: var BRepPrimAPI_MakeBox) {.importcpp: "Build",
    header: headerBrepprimapimakebox.}
proc shell*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell {.importcpp: "Shell",
    header: headerBrepprimapimakebox.}
converter `topoDS_Shell`*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell {.
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Shell",
    header: headerBrepprimapimakebox.}
proc solid*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid {.importcpp: "Solid",
    header: headerBrepprimapimakebox.}
converter `topoDS_Solid`*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid {.
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Solid",
    header: headerBrepprimapimakebox.}
proc bottomFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.
    importcpp: "BottomFace", header: headerBrepprimapimakebox.}
proc backFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "BackFace",
    header: headerBrepprimapimakebox.}
proc frontFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "FrontFace",
    header: headerBrepprimapimakebox.}
proc leftFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "LeftFace",
    header: headerBrepprimapimakebox.}
proc rightFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "RightFace",
    header: headerBrepprimapimakebox.}
proc topFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "TopFace",
    header: headerBrepprimapimakebox.}