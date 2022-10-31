import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import geom_types



##  Created on: 1993-03-10
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.





proc newGeomPlane*(a3: Ax3Obj): GeomPlane {.cdecl, constructor,
                                     importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc newGeomPlane*(pl: PlnObj): GeomPlane {.cdecl, constructor,
                                     importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc newGeomPlane*(p: PntObj; v: DirObj): GeomPlane {.cdecl, constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc newGeomPlane*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): GeomPlane {.cdecl,
    constructor, importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc setPln*(this: var GeomPlane; pl: PlnObj) {.cdecl, importcpp: "SetPln", header: "Geom_Plane.hxx".}
proc pln*(this: GeomPlane): PlnObj {.noSideEffect, cdecl, importcpp: "Pln", header: "Geom_Plane.hxx".}
proc uReverse*(this: var GeomPlane) {.cdecl, importcpp: "UReverse", header: "Geom_Plane.hxx".}
proc uReversedParameter*(this: GeomPlane; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UReversedParameter", header: "Geom_Plane.hxx".}
proc vReverse*(this: var GeomPlane) {.cdecl, importcpp: "VReverse", header: "Geom_Plane.hxx".}
proc vReversedParameter*(this: GeomPlane; v: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VReversedParameter", header: "Geom_Plane.hxx".}
proc transformParameters*(this: GeomPlane; u: var cfloat; v: var cfloat; t: TrsfObj) {.
    noSideEffect, cdecl, importcpp: "TransformParameters", header: "Geom_Plane.hxx".}
proc parametricTransformation*(this: GeomPlane; t: TrsfObj): GTrsf2d {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", header: "Geom_Plane.hxx".}
proc bounds*(this: GeomPlane; u1: var cfloat; u2: var cfloat; v1: var cfloat; v2: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Bounds", header: "Geom_Plane.hxx".}
proc coefficients*(this: GeomPlane; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat) {.noSideEffect, cdecl, importcpp: "Coefficients",
                                header: "Geom_Plane.hxx".}
proc isUClosed*(this: GeomPlane): bool {.noSideEffect, cdecl, importcpp: "IsUClosed",
                                     header: "Geom_Plane.hxx".}
proc isVClosed*(this: GeomPlane): bool {.noSideEffect, cdecl, importcpp: "IsVClosed",
                                     header: "Geom_Plane.hxx".}
proc isUPeriodic*(this: GeomPlane): bool {.noSideEffect, cdecl,
                                       importcpp: "IsUPeriodic", header: "Geom_Plane.hxx".}
proc isVPeriodic*(this: GeomPlane): bool {.noSideEffect, cdecl,
                                       importcpp: "IsVPeriodic", header: "Geom_Plane.hxx".}
proc uIso*(this: GeomPlane; u: cfloat): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "UIso", header: "Geom_Plane.hxx".}
proc vIso*(this: GeomPlane; v: cfloat): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "VIso", header: "Geom_Plane.hxx".}
proc d0*(this: GeomPlane; u: cfloat; v: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_Plane.hxx".}
proc d1*(this: GeomPlane; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj; d1v: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D1", header: "Geom_Plane.hxx".}
proc d2*(this: GeomPlane; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj; d1v: var VecObj;
        d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl, importcpp: "D2",
    header: "Geom_Plane.hxx".}
proc d3*(this: GeomPlane; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj; d1v: var VecObj;
        d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj; d3v: var VecObj; d3uuv: var VecObj;
        d3uvv: var VecObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom_Plane.hxx".}
proc dn*(this: GeomPlane; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.noSideEffect,
    cdecl, importcpp: "DN", header: "Geom_Plane.hxx".}
proc transform*(this: var GeomPlane; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Plane.hxx".}
proc copy*(this: GeomPlane): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Plane.hxx".}
proc dumpJson*(this: GeomPlane; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Geom_Plane.hxx".}

