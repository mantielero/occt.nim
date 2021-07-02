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
proc constructIntSurfQuadric*(p: GpPln): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(c: GpCylinder): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(s: GpSphere): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(c: GpCone): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc constructIntSurfQuadric*(t: GpTorus): IntSurfQuadric {.constructor,
    importcpp: "IntSurf_Quadric(@)", header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; p: GpPln) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; c: GpCylinder) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; s: GpSphere) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; c: GpCone) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc setValue*(this: var IntSurfQuadric; t: GpTorus) {.importcpp: "SetValue",
    header: "IntSurf_Quadric.hxx".}
proc distance*(this: IntSurfQuadric; p: GpPnt): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "IntSurf_Quadric.hxx".}
proc gradient*(this: IntSurfQuadric; p: GpPnt): GpVec {.noSideEffect,
    importcpp: "Gradient", header: "IntSurf_Quadric.hxx".}
proc valAndGrad*(this: IntSurfQuadric; p: GpPnt; dist: var StandardReal; grad: var GpVec) {.
    noSideEffect, importcpp: "ValAndGrad", header: "IntSurf_Quadric.hxx".}
proc typeQuadric*(this: IntSurfQuadric): GeomAbsSurfaceType {.noSideEffect,
    importcpp: "TypeQuadric", header: "IntSurf_Quadric.hxx".}
proc plane*(this: IntSurfQuadric): GpPln {.noSideEffect, importcpp: "Plane",
                                       header: "IntSurf_Quadric.hxx".}
proc sphere*(this: IntSurfQuadric): GpSphere {.noSideEffect, importcpp: "Sphere",
    header: "IntSurf_Quadric.hxx".}
proc cylinder*(this: IntSurfQuadric): GpCylinder {.noSideEffect,
    importcpp: "Cylinder", header: "IntSurf_Quadric.hxx".}
proc cone*(this: IntSurfQuadric): GpCone {.noSideEffect, importcpp: "Cone",
                                       header: "IntSurf_Quadric.hxx".}
proc torus*(this: IntSurfQuadric): GpTorus {.noSideEffect, importcpp: "Torus",
    header: "IntSurf_Quadric.hxx".}
proc value*(this: IntSurfQuadric; u: StandardReal; v: StandardReal): GpPnt {.
    noSideEffect, importcpp: "Value", header: "IntSurf_Quadric.hxx".}
proc d1*(this: IntSurfQuadric; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.noSideEffect, importcpp: "D1",
                                    header: "IntSurf_Quadric.hxx".}
proc dn*(this: IntSurfQuadric; u: StandardReal; v: StandardReal; nu: StandardInteger;
        nv: StandardInteger): GpVec {.noSideEffect, importcpp: "DN",
                                   header: "IntSurf_Quadric.hxx".}
proc normale*(this: IntSurfQuadric; u: StandardReal; v: StandardReal): GpVec {.
    noSideEffect, importcpp: "Normale", header: "IntSurf_Quadric.hxx".}
proc parameters*(this: IntSurfQuadric; p: GpPnt; u: var StandardReal;
                v: var StandardReal) {.noSideEffect, importcpp: "Parameters",
                                    header: "IntSurf_Quadric.hxx".}
proc normale*(this: IntSurfQuadric; p: GpPnt): GpVec {.noSideEffect,
    importcpp: "Normale", header: "IntSurf_Quadric.hxx".}

