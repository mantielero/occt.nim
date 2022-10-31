import intsurf_types
import ../../tkmath/gp/gp_types
import ../../tkmath/geomabs/geomabs_types



##  Created on: 1992-04-13
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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



proc newIntSurfQuadric*(): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc newIntSurfQuadric*(p: PlnObj): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc newIntSurfQuadric*(c: CylinderObj): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc newIntSurfQuadric*(s: SphereObj): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc newIntSurfQuadric*(c: ConeObj): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc newIntSurfQuadric*(t: TorusObj): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; p: PlnObj) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; c: CylinderObj) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; s: SphereObj) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; c: ConeObj) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; t: TorusObj) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc distance*(this: IntSurfQuadric; p: PntObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "IntSurf_Quadric.hxx".}
proc gradient*(this: IntSurfQuadric; p: PntObj): VecObj {.noSideEffect, cdecl,
    importcpp: "Gradient", header: "IntSurf_Quadric.hxx".}
proc valAndGrad*(this: IntSurfQuadric; p: PntObj; dist: var cfloat; grad: var VecObj) {.
    noSideEffect, cdecl, importcpp: "ValAndGrad", header: "IntSurf_Quadric.hxx".}
proc typeQuadric*(this: IntSurfQuadric): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "TypeQuadric", header: "IntSurf_Quadric.hxx".}
proc plane*(this: IntSurfQuadric): PlnObj {.noSideEffect, cdecl, importcpp: "Plane",
                                     header: "IntSurf_Quadric.hxx".}
proc sphere*(this: IntSurfQuadric): SphereObj {.noSideEffect, cdecl, importcpp: "Sphere",
    header: "IntSurf_Quadric.hxx".}
proc cylinder*(this: IntSurfQuadric): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Cylinder", header: "IntSurf_Quadric.hxx".}
proc cone*(this: IntSurfQuadric): ConeObj {.noSideEffect, cdecl, importcpp: "Cone",
                                     header: "IntSurf_Quadric.hxx".}
proc torus*(this: IntSurfQuadric): TorusObj {.noSideEffect, cdecl, importcpp: "Torus",
                                       header: "IntSurf_Quadric.hxx".}
proc value*(this: IntSurfQuadric; u: cfloat; v: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "IntSurf_Quadric.hxx".}
proc d1*(this: IntSurfQuadric; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj; d1v: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D1", header: "IntSurf_Quadric.hxx".}
proc dn*(this: IntSurfQuadric; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "IntSurf_Quadric.hxx".}
proc normale*(this: IntSurfQuadric; u: cfloat; v: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "Normale", header: "IntSurf_Quadric.hxx".}
proc parameters*(this: IntSurfQuadric; p: PntObj; u: var cfloat; v: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", header: "IntSurf_Quadric.hxx".}
proc normale*(this: IntSurfQuadric; p: PntObj): VecObj {.noSideEffect, cdecl,
    importcpp: "Normale", header: "IntSurf_Quadric.hxx".}

