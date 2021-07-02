##  Created on: 1995-10-18
##  Created by: Andre LIEUTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Plate_PinpointConstraint"
discard "forward decl of Plate_LinearXYZConstraint"
discard "forward decl of Plate_LinearScalarConstraint"
discard "forward decl of Plate_GlobalTranslationConstraint"
discard "forward decl of Plate_LineConstraint"
discard "forward decl of Plate_PlaneConstraint"
discard "forward decl of Plate_SampledCurveConstraint"
discard "forward decl of Plate_GtoCConstraint"
discard "forward decl of Plate_FreeGtoCConstraint"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_XY"
discard "forward decl of math_Matrix"
type
  PlatePlate* {.importcpp: "Plate_Plate", header: "Plate_Plate.hxx", bycopy.} = object


proc constructPlatePlate*(): PlatePlate {.constructor, importcpp: "Plate_Plate(@)",
                                       header: "Plate_Plate.hxx".}
proc constructPlatePlate*(`ref`: PlatePlate): PlatePlate {.constructor,
    importcpp: "Plate_Plate(@)", header: "Plate_Plate.hxx".}
proc copy*(this: var PlatePlate; `ref`: PlatePlate): var PlatePlate {.importcpp: "Copy",
    header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; pConst: PlatePinpointConstraint) {.importcpp: "Load",
    header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; lXYZConst: PlateLinearXYZConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; lScalarConst: PlateLinearScalarConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; gTConst: PlateGlobalTranslationConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; lConst: PlateLineConstraint) {.importcpp: "Load",
    header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; pConst: PlatePlaneConstraint) {.importcpp: "Load",
    header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; sCConst: PlateSampledCurveConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; gtoCConst: PlateGtoCConstraint) {.importcpp: "Load",
    header: "Plate_Plate.hxx".}
proc load*(this: var PlatePlate; fGtoCConst: PlateFreeGtoCConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc solveTI*(this: var PlatePlate; ord: StandardInteger = 4;
             anisotropie: StandardReal = 1.0;
             theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "SolveTI", header: "Plate_Plate.hxx".}
proc isDone*(this: PlatePlate): StandardBoolean {.noSideEffect, importcpp: "IsDone",
    header: "Plate_Plate.hxx".}
proc destroy*(this: var PlatePlate) {.importcpp: "destroy", header: "Plate_Plate.hxx".}
proc destroyPlatePlate*(this: var PlatePlate) {.importcpp: "#.~Plate_Plate()",
    header: "Plate_Plate.hxx".}
proc init*(this: var PlatePlate) {.importcpp: "Init", header: "Plate_Plate.hxx".}
proc evaluate*(this: PlatePlate; point2d: GpXY): GpXYZ {.noSideEffect,
    importcpp: "Evaluate", header: "Plate_Plate.hxx".}
proc evaluateDerivative*(this: PlatePlate; point2d: GpXY; iu: StandardInteger;
                        iv: StandardInteger): GpXYZ {.noSideEffect,
    importcpp: "EvaluateDerivative", header: "Plate_Plate.hxx".}
proc coefPol*(this: PlatePlate; coefs: var Handle[TColgpHArray2OfXYZ]) {.noSideEffect,
    importcpp: "CoefPol", header: "Plate_Plate.hxx".}
proc setPolynomialPartOnly*(this: var PlatePlate;
                           pPOnly: StandardBoolean = standardTrue) {.
    importcpp: "SetPolynomialPartOnly", header: "Plate_Plate.hxx".}
proc continuity*(this: PlatePlate): StandardInteger {.noSideEffect,
    importcpp: "Continuity", header: "Plate_Plate.hxx".}
proc uVBox*(this: PlatePlate; uMin: var StandardReal; uMax: var StandardReal;
           vMin: var StandardReal; vMax: var StandardReal) {.noSideEffect,
    importcpp: "UVBox", header: "Plate_Plate.hxx".}
proc uVConstraints*(this: PlatePlate; seq: var TColgpSequenceOfXY) {.noSideEffect,
    importcpp: "UVConstraints", header: "Plate_Plate.hxx".}

