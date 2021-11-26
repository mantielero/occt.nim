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


proc newIntSurfQuadric*(): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", dynlib: tkgeomalgo.}
proc newIntSurfQuadric*(p: Pln): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", dynlib: tkgeomalgo.}
proc newIntSurfQuadric*(c: Cylinder): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", dynlib: tkgeomalgo.}
proc newIntSurfQuadric*(s: Sphere): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", dynlib: tkgeomalgo.}
proc newIntSurfQuadric*(c: Cone): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", dynlib: tkgeomalgo.}
proc newIntSurfQuadric*(t: Torus): IntSurfQuadric {.cdecl, constructor,
    importcpp: "IntSurf_Quadric(@)", dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfQuadric; p: Pln) {.cdecl, importcpp: "SetValue",
    dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfQuadric; c: Cylinder) {.cdecl, importcpp: "SetValue",
    dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfQuadric; s: Sphere) {.cdecl, importcpp: "SetValue",
    dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfQuadric; c: Cone) {.cdecl, importcpp: "SetValue",
    dynlib: tkgeomalgo.}
proc setValue*(this: var IntSurfQuadric; t: Torus) {.cdecl, importcpp: "SetValue",
    dynlib: tkgeomalgo.}
proc distance*(this: IntSurfQuadric; p: Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkgeomalgo.}
proc gradient*(this: IntSurfQuadric; p: Pnt): Vec {.noSideEffect, cdecl,
    importcpp: "Gradient", dynlib: tkgeomalgo.}
proc valAndGrad*(this: IntSurfQuadric; p: Pnt; dist: var cfloat; grad: var Vec) {.
    noSideEffect, cdecl, importcpp: "ValAndGrad", dynlib: tkgeomalgo.}
proc typeQuadric*(this: IntSurfQuadric): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "TypeQuadric", dynlib: tkgeomalgo.}
proc plane*(this: IntSurfQuadric): Pln {.noSideEffect, cdecl, importcpp: "Plane",
                                     dynlib: tkgeomalgo.}
proc sphere*(this: IntSurfQuadric): Sphere {.noSideEffect, cdecl, importcpp: "Sphere",
    dynlib: tkgeomalgo.}
proc cylinder*(this: IntSurfQuadric): Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", dynlib: tkgeomalgo.}
proc cone*(this: IntSurfQuadric): Cone {.noSideEffect, cdecl, importcpp: "Cone",
                                     dynlib: tkgeomalgo.}
proc torus*(this: IntSurfQuadric): Torus {.noSideEffect, cdecl, importcpp: "Torus",
                                       dynlib: tkgeomalgo.}
proc value*(this: IntSurfQuadric; u: cfloat; v: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeomalgo.}
proc d1*(this: IntSurfQuadric; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, cdecl, importcpp: "D1", dynlib: tkgeomalgo.}
proc dn*(this: IntSurfQuadric; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkgeomalgo.}
proc normale*(this: IntSurfQuadric; u: cfloat; v: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "Normale", dynlib: tkgeomalgo.}
proc parameters*(this: IntSurfQuadric; p: Pnt; u: var cfloat; v: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", dynlib: tkgeomalgo.}
proc normale*(this: IntSurfQuadric; p: Pnt): Vec {.noSideEffect, cdecl,
    importcpp: "Normale", dynlib: tkgeomalgo.}