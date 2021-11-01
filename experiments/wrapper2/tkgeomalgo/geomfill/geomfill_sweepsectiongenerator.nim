##  Created on: 1994-02-28
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Trsf"
type
  GeomFillSweepSectionGenerator* {.importcpp: "GeomFill_SweepSectionGenerator",
                                  header: "GeomFill_SweepSectionGenerator.hxx",
                                  bycopy.} = object


proc newGeomFillSweepSectionGenerator*(): GeomFillSweepSectionGenerator {.cdecl,
    constructor, importcpp: "GeomFill_SweepSectionGenerator(@)", dynlib: tkgeomalgo.}
proc newGeomFillSweepSectionGenerator*(path: Handle[GeomCurve]; radius: cfloat): GeomFillSweepSectionGenerator {.
    cdecl, constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    dynlib: tkgeomalgo.}
proc newGeomFillSweepSectionGenerator*(path: Handle[GeomCurve];
                                      firstSect: Handle[GeomCurve]): GeomFillSweepSectionGenerator {.
    cdecl, constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    dynlib: tkgeomalgo.}
proc newGeomFillSweepSectionGenerator*(path: Handle[GeomCurve];
                                      firstSect: Handle[GeomCurve];
                                      lastSect: Handle[GeomCurve]): GeomFillSweepSectionGenerator {.
    cdecl, constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    dynlib: tkgeomalgo.}
proc newGeomFillSweepSectionGenerator*(path: Handle[GeomCurve];
                                      curve1: Handle[GeomCurve];
                                      curve2: Handle[GeomCurve]; radius: cfloat): GeomFillSweepSectionGenerator {.
    cdecl, constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    dynlib: tkgeomalgo.}
proc newGeomFillSweepSectionGenerator*(path: Handle[Adaptor3dHCurve];
                                      curve1: Handle[Adaptor3dHCurve];
                                      curve2: Handle[Adaptor3dHCurve];
                                      radius: cfloat): GeomFillSweepSectionGenerator {.
    cdecl, constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    dynlib: tkgeomalgo.}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[GeomCurve];
          radius: cfloat) {.cdecl, importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve]) {.cdecl, importcpp: "Init",
                                        dynlib: tkgeomalgo.}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve]; lastSect: Handle[GeomCurve]) {.cdecl,
    importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[GeomCurve];
          curve1: Handle[GeomCurve]; curve2: Handle[GeomCurve]; radius: cfloat) {.
    cdecl, importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[Adaptor3dHCurve];
          curve1: Handle[Adaptor3dHCurve]; curve2: Handle[Adaptor3dHCurve];
          radius: cfloat) {.cdecl, importcpp: "Init", dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillSweepSectionGenerator; polynomial: bool = false) {.
    cdecl, importcpp: "Perform", dynlib: tkgeomalgo.}
proc getShape*(this: GeomFillSweepSectionGenerator; nbPoles: var cint;
              nbKnots: var cint; degree: var cint; nbPoles2d: var cint) {.noSideEffect,
    cdecl, importcpp: "GetShape", dynlib: tkgeomalgo.}
proc knots*(this: GeomFillSweepSectionGenerator; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", dynlib: tkgeomalgo.}
proc mults*(this: GeomFillSweepSectionGenerator; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkgeomalgo.}
proc nbSections*(this: GeomFillSweepSectionGenerator): cint {.noSideEffect, cdecl,
    importcpp: "NbSections", dynlib: tkgeomalgo.}
proc section*(this: GeomFillSweepSectionGenerator; p: cint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    noSideEffect, cdecl, importcpp: "Section", dynlib: tkgeomalgo.}
proc section*(this: GeomFillSweepSectionGenerator; p: cint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Section", dynlib: tkgeomalgo.}
proc transformation*(this: GeomFillSweepSectionGenerator; index: cint): Trsf {.
    noSideEffect, cdecl, importcpp: "Transformation", dynlib: tkgeomalgo.}
proc parameter*(this: GeomFillSweepSectionGenerator; p: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Parameter", dynlib: tkgeomalgo.}