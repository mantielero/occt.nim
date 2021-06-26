# /usr/include/opencascade/gp.hxx --> occt/tkMath/gp/gp.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGp = "/usr/include/opencascade/gp.hxx"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Quaternion"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Cone"
discard "forward decl of gp_XY"
discard "forward decl of gp_Mat2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
type
  Gp* {.importcpp: "gp", header: headerGp, bycopy.} = object


proc `new`*(this: var Gp; theSize: csize_t): pointer {.importcpp: "gp::operator new",
    header: headerGp.}
proc `delete`*(this: var Gp; theAddress: pointer) {.importcpp: "gp::operator delete",
    header: headerGp.}
proc `new[]`*(this: var Gp; theSize: csize_t): pointer {.
    importcpp: "gp::operator new[]", header: headerGp.}
proc `delete[]`*(this: var Gp; theAddress: pointer) {.
    importcpp: "gp::operator delete[]", header: headerGp.}
proc `new`*(this: var Gp; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp::operator new", header: headerGp.}
proc `delete`*(this: var Gp; a2: pointer; a3: pointer) {.
    importcpp: "gp::operator delete", header: headerGp.}
proc resolution*(): StandardReal {.importcpp: "gp::Resolution(@)", header: headerGp.}
proc origin*(): GpPnt {.importcpp: "gp::Origin(@)", header: headerGp.}
proc dx*(): GpDir {.importcpp: "gp::DX(@)", header: headerGp.}
proc dy*(): GpDir {.importcpp: "gp::DY(@)", header: headerGp.}
proc dz*(): GpDir {.importcpp: "gp::DZ(@)", header: headerGp.}
proc ox*(): GpAx1 {.importcpp: "gp::OX(@)", header: headerGp.}
proc oy*(): GpAx1 {.importcpp: "gp::OY(@)", header: headerGp.}
proc oz*(): GpAx1 {.importcpp: "gp::OZ(@)", header: headerGp.}
proc xoy*(): GpAx2 {.importcpp: "gp::XOY(@)", header: headerGp.}
proc zox*(): GpAx2 {.importcpp: "gp::ZOX(@)", header: headerGp.}
proc yoz*(): GpAx2 {.importcpp: "gp::YOZ(@)", header: headerGp.}
proc origin2d*(): GpPnt2d {.importcpp: "gp::Origin2d(@)", header: headerGp.}
proc dX2d*(): GpDir2d {.importcpp: "gp::DX2d(@)", header: headerGp.}
proc dY2d*(): GpDir2d {.importcpp: "gp::DY2d(@)", header: headerGp.}
proc oX2d*(): GpAx2d {.importcpp: "gp::OX2d(@)", header: headerGp.}
proc oY2d*(): GpAx2d {.importcpp: "gp::OY2d(@)", header: headerGp.}