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


proc `new`*(this: var GeomFillSweepSectionGenerator; theSize: csize_t): pointer {.
    importcpp: "GeomFill_SweepSectionGenerator::operator new",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc `delete`*(this: var GeomFillSweepSectionGenerator; theAddress: pointer) {.
    importcpp: "GeomFill_SweepSectionGenerator::operator delete",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc `new[]`*(this: var GeomFillSweepSectionGenerator; theSize: csize_t): pointer {.
    importcpp: "GeomFill_SweepSectionGenerator::operator new[]",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc `delete[]`*(this: var GeomFillSweepSectionGenerator; theAddress: pointer) {.
    importcpp: "GeomFill_SweepSectionGenerator::operator delete[]",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc `new`*(this: var GeomFillSweepSectionGenerator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomFill_SweepSectionGenerator::operator new",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc `delete`*(this: var GeomFillSweepSectionGenerator; a2: pointer; a3: pointer) {.
    importcpp: "GeomFill_SweepSectionGenerator::operator delete",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFillSweepSectionGenerator*(): GeomFillSweepSectionGenerator {.
    constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFillSweepSectionGenerator*(path: Handle[GeomCurve];
    radius: StandardReal): GeomFillSweepSectionGenerator {.constructor,
    importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFillSweepSectionGenerator*(path: Handle[GeomCurve];
    firstSect: Handle[GeomCurve]): GeomFillSweepSectionGenerator {.constructor,
    importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFillSweepSectionGenerator*(path: Handle[GeomCurve];
    firstSect: Handle[GeomCurve]; lastSect: Handle[GeomCurve]): GeomFillSweepSectionGenerator {.
    constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFillSweepSectionGenerator*(path: Handle[GeomCurve];
    curve1: Handle[GeomCurve]; curve2: Handle[GeomCurve]; radius: StandardReal): GeomFillSweepSectionGenerator {.
    constructor, importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc constructGeomFillSweepSectionGenerator*(path: Handle[Adaptor3dHCurve];
    curve1: Handle[Adaptor3dHCurve]; curve2: Handle[Adaptor3dHCurve];
    radius: StandardReal): GeomFillSweepSectionGenerator {.constructor,
    importcpp: "GeomFill_SweepSectionGenerator(@)",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[GeomCurve];
          radius: StandardReal) {.importcpp: "Init",
                                header: "GeomFill_SweepSectionGenerator.hxx".}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve]) {.importcpp: "Init", header: "GeomFill_SweepSectionGenerator.hxx".}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve]; lastSect: Handle[GeomCurve]) {.
    importcpp: "Init", header: "GeomFill_SweepSectionGenerator.hxx".}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[GeomCurve];
          curve1: Handle[GeomCurve]; curve2: Handle[GeomCurve]; radius: StandardReal) {.
    importcpp: "Init", header: "GeomFill_SweepSectionGenerator.hxx".}
proc init*(this: var GeomFillSweepSectionGenerator; path: Handle[Adaptor3dHCurve];
          curve1: Handle[Adaptor3dHCurve]; curve2: Handle[Adaptor3dHCurve];
          radius: StandardReal) {.importcpp: "Init",
                                header: "GeomFill_SweepSectionGenerator.hxx".}
proc perform*(this: var GeomFillSweepSectionGenerator;
             polynomial: StandardBoolean = false) {.importcpp: "Perform",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc getShape*(this: GeomFillSweepSectionGenerator; nbPoles: var int;
              nbKnots: var int; degree: var int; nbPoles2d: var int) {.noSideEffect,
    importcpp: "GetShape", header: "GeomFill_SweepSectionGenerator.hxx".}
proc knots*(this: GeomFillSweepSectionGenerator; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_SweepSectionGenerator.hxx".}
proc mults*(this: GeomFillSweepSectionGenerator; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_SweepSectionGenerator.hxx".}
proc nbSections*(this: GeomFillSweepSectionGenerator): int {.noSideEffect,
    importcpp: "NbSections", header: "GeomFill_SweepSectionGenerator.hxx".}
proc section*(this: GeomFillSweepSectionGenerator; p: int;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    noSideEffect, importcpp: "Section",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc section*(this: GeomFillSweepSectionGenerator; p: int;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.noSideEffect, importcpp: "Section",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc transformation*(this: GeomFillSweepSectionGenerator; index: int): Trsf {.
    noSideEffect, importcpp: "Transformation",
    header: "GeomFill_SweepSectionGenerator.hxx".}
proc parameter*(this: GeomFillSweepSectionGenerator; p: int): StandardReal {.
    noSideEffect, importcpp: "Parameter",
    header: "GeomFill_SweepSectionGenerator.hxx".}