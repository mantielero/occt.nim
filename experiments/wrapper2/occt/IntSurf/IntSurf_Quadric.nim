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

discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  IntSurfQuadric* {.importcpp: "IntSurf_Quadric", header: "IntSurf_Quadric.hxx",
                   bycopy.} = object


proc constructIntSurfQuadric*(): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(p: Pln): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(c: Cylinder): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(s: Sphere): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(c: Cone): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(t: Torus): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; p: Pln) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; c: Cylinder) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; s: Sphere) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; c: Cone) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; t: Torus) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc distance*(this: IntSurfQuadric; p: Pnt): float {.noSideEffect,
    importcpp: "Distance", header: "IntSurf_Quadric.hxx".}
proc gradient*(this: IntSurfQuadric; p: Pnt): Vec {.noSideEffect,
    importcpp: "Gradient", header: "IntSurf_Quadric.hxx".}
proc valAndGrad*(this: IntSurfQuadric; p: Pnt; dist: var float; grad: var Vec) {.
    noSideEffect, importcpp: "ValAndGrad", header: "IntSurf_Quadric.hxx".}
proc typeQuadric*(this: IntSurfQuadric): GeomAbsSurfaceType {.noSideEffect,
    importcpp: "TypeQuadric", header: "IntSurf_Quadric.hxx".}
proc plane*(this: IntSurfQuadric): Pln {.noSideEffect, importcpp: "Plane",
                                     header: "IntSurf_Quadric.hxx".}
proc sphere*(this: IntSurfQuadric): Sphere {.noSideEffect, importcpp: "Sphere",
    header: "IntSurf_Quadric.hxx".}
proc cylinder*(this: IntSurfQuadric): Cylinder {.noSideEffect, importcpp: "Cylinder",
    header: "IntSurf_Quadric.hxx".}
proc cone*(this: IntSurfQuadric): Cone {.noSideEffect, importcpp: "Cone",
                                     header: "IntSurf_Quadric.hxx".}
proc torus*(this: IntSurfQuadric): Torus {.noSideEffect, importcpp: "Torus",
                                       header: "IntSurf_Quadric.hxx".}
proc value*(this: IntSurfQuadric; u: float; v: float): Pnt {.noSideEffect,
    importcpp: "Value", header: "IntSurf_Quadric.hxx".}
proc d1*(this: IntSurfQuadric; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "IntSurf_Quadric.hxx".}
proc dn*(this: IntSurfQuadric; u: float; v: float; nu: int; nv: int): Vec {.noSideEffect,
    importcpp: "DN", header: "IntSurf_Quadric.hxx".}
proc normale*(this: IntSurfQuadric; u: float; v: float): Vec {.noSideEffect,
    importcpp: "Normale", header: "IntSurf_Quadric.hxx".}
proc parameters*(this: IntSurfQuadric; p: Pnt; u: var float; v: var float) {.noSideEffect,
    importcpp: "Parameters", header: "IntSurf_Quadric.hxx".}
proc normale*(this: IntSurfQuadric; p: Pnt): Vec {.noSideEffect, importcpp: "Normale",
    header: "IntSurf_Quadric.hxx".}
