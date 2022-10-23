{.passL:"-lTKG3d".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}


discard "forward decl of gp_Pnt"
discard "forward decl of gp_TrsfObj"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_CartesianPoint"

import geom_types
import tkmath/gp/gp_types

## ! Describes a point in 3D space. A
## ! Geom_CartesianPoint is defined by a gp_Pnt point,
## ! with its three Cartesian coordinates X, Y and Z.




proc cartesianPoint*(p: PntObj): CartesianPointObj {.cdecl, constructor,
    importcpp: "Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}
proc cartesianPoint*(x: cfloat; y: cfloat; z: cfloat): CartesianPointObj {.
    cdecl, constructor, importcpp: "Geom_CartesianPoint(@)", header: "Geom_CartesianPoint.hxx".}


proc setCoord*(this: var CartesianPointObj; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "Geom_CartesianPoint.hxx".}
proc setPnt*(this: var CartesianPointObj; p: PntObj) {.cdecl, importcpp: "SetPnt",
    header: "Geom_CartesianPoint.hxx".}
proc setX*(this: var CartesianPointObj; x: cfloat) {.cdecl, importcpp: "SetX",
    header: "Geom_CartesianPoint.hxx".}
proc setY*(this: var CartesianPointObj; y: cfloat) {.cdecl, importcpp: "SetY",
    header: "Geom_CartesianPoint.hxx".}
proc setZ*(this: var CartesianPointObj; z: cfloat) {.cdecl, importcpp: "SetZ",
    header: "Geom_CartesianPoint.hxx".}
proc coord*(this: CartesianPointObj; x: var cfloat; y: var cfloat; z: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coord", header: "Geom_CartesianPoint.hxx".}
proc pnt*(this: CartesianPointObj): PntObj {.noSideEffect, cdecl, importcpp: "Pnt",
                                       header: "Geom_CartesianPoint.hxx".}
proc x*(this: CartesianPointObj): cfloat {.noSideEffect, cdecl, importcpp: "X",
                                        header: "Geom_CartesianPoint.hxx".}
proc y*(this: CartesianPointObj): cfloat {.noSideEffect, cdecl, importcpp: "Y",
                                        header: "Geom_CartesianPoint.hxx".}
proc z*(this: CartesianPointObj): cfloat {.noSideEffect, cdecl, importcpp: "Z",
                                        header: "Geom_CartesianPoint.hxx".}
proc transform*(this: var CartesianPointObj; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_CartesianPoint.hxx".}
proc copy*(this: CartesianPointObj): HandleGeometryObj {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_CartesianPoint.hxx".}