import intsurf_types
import ../gp/gp_types
import ../geomabs/geomabs_types





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
proc newIntSurfQuadric*(c: gp_Cylinder): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc newIntSurfQuadric*(s: gp_Sphere): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc newIntSurfQuadric*(c: gp_Cone): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc newIntSurfQuadric*(t: gp_Torus): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; p: PlnObj) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; c: gp_Cylinder) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; s: gp_Sphere) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; c: gp_Cone) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; t: gp_Torus) {.cdecl, importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc distance*(this: IntSurfQuadric; p: gp_Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "IntSurf_Quadric.hxx".}
proc gradient*(this: IntSurfQuadric; p: gp_Pnt): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Gradient", header: "IntSurf_Quadric.hxx".}
proc valAndGrad*(this: IntSurfQuadric; p: gp_Pnt; dist: var cfloat; grad: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "ValAndGrad", header: "IntSurf_Quadric.hxx".}
proc typeQuadric*(this: IntSurfQuadric): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "TypeQuadric", header: "IntSurf_Quadric.hxx".}
proc plane*(this: IntSurfQuadric): PlnObj {.noSideEffect, cdecl, importcpp: "Plane",
                                     header: "IntSurf_Quadric.hxx".}
proc sphere*(this: IntSurfQuadric): gp_Sphere {.noSideEffect, cdecl, importcpp: "Sphere",
    header: "IntSurf_Quadric.hxx".}
proc cylinder*(this: IntSurfQuadric): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", header: "IntSurf_Quadric.hxx".}
proc cone*(this: IntSurfQuadric): gp_Cone {.noSideEffect, cdecl, importcpp: "Cone",
                                     header: "IntSurf_Quadric.hxx".}
proc torus*(this: IntSurfQuadric): gp_Torus {.noSideEffect, cdecl, importcpp: "Torus",
                                       header: "IntSurf_Quadric.hxx".}
proc value*(this: IntSurfQuadric; u: cfloat; v: cfloat): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Value", header: "IntSurf_Quadric.hxx".}
proc d1*(this: IntSurfQuadric; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec; d1v: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D1", header: "IntSurf_Quadric.hxx".}
proc dn*(this: IntSurfQuadric; u: cfloat; v: cfloat; nu: cint; nv: cint): gp_Vec {.
    noSideEffect, cdecl, importcpp: "DN", header: "IntSurf_Quadric.hxx".}
proc normale*(this: IntSurfQuadric; u: cfloat; v: cfloat): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Normale", header: "IntSurf_Quadric.hxx".}
proc parameters*(this: IntSurfQuadric; p: gp_Pnt; u: var cfloat; v: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", header: "IntSurf_Quadric.hxx".}
proc normale*(this: IntSurfQuadric; p: gp_Pnt): gp_Vec {.noSideEffect, cdecl,
    importcpp: "Normale", header: "IntSurf_Quadric.hxx".}


