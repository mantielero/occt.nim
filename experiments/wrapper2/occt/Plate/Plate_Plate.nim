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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Address, ../Standard/Standard_Boolean,
  Plate_SequenceOfPinpointConstraint, Plate_SequenceOfLinearXYZConstraint,
  Plate_SequenceOfLinearScalarConstraint, ../Standard/Standard_Real,
  ../TColgp/TColgp_HArray2OfXYZ, ../TColgp/TColgp_SequenceOfXY,
  ../Message/Message_ProgressScope

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
  Plate_Plate* {.importcpp: "Plate_Plate", header: "Plate_Plate.hxx", bycopy.} = object


proc constructPlate_Plate*(): Plate_Plate {.constructor,
    importcpp: "Plate_Plate(@)", header: "Plate_Plate.hxx".}
proc constructPlate_Plate*(Ref: Plate_Plate): Plate_Plate {.constructor,
    importcpp: "Plate_Plate(@)", header: "Plate_Plate.hxx".}
proc Copy*(this: var Plate_Plate; Ref: Plate_Plate): var Plate_Plate {.
    importcpp: "Copy", header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; PConst: Plate_PinpointConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; LXYZConst: Plate_LinearXYZConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; LScalarConst: Plate_LinearScalarConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; GTConst: Plate_GlobalTranslationConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; LConst: Plate_LineConstraint) {.importcpp: "Load",
    header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; PConst: Plate_PlaneConstraint) {.importcpp: "Load",
    header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; SCConst: Plate_SampledCurveConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; GtoCConst: Plate_GtoCConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc Load*(this: var Plate_Plate; FGtoCConst: Plate_FreeGtoCConstraint) {.
    importcpp: "Load", header: "Plate_Plate.hxx".}
proc SolveTI*(this: var Plate_Plate; ord: Standard_Integer = 4;
             anisotropie: Standard_Real = 1.0;
             theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "SolveTI", header: "Plate_Plate.hxx".}
proc IsDone*(this: Plate_Plate): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Plate_Plate.hxx".}
proc destroy*(this: var Plate_Plate) {.importcpp: "destroy", header: "Plate_Plate.hxx".}
proc destroyPlate_Plate*(this: var Plate_Plate) {.importcpp: "#.~Plate_Plate()",
    header: "Plate_Plate.hxx".}
proc Init*(this: var Plate_Plate) {.importcpp: "Init", header: "Plate_Plate.hxx".}
proc Evaluate*(this: Plate_Plate; point2d: gp_XY): gp_XYZ {.noSideEffect,
    importcpp: "Evaluate", header: "Plate_Plate.hxx".}
proc EvaluateDerivative*(this: Plate_Plate; point2d: gp_XY; iu: Standard_Integer;
                        iv: Standard_Integer): gp_XYZ {.noSideEffect,
    importcpp: "EvaluateDerivative", header: "Plate_Plate.hxx".}
proc CoefPol*(this: Plate_Plate; Coefs: var handle[TColgp_HArray2OfXYZ]) {.
    noSideEffect, importcpp: "CoefPol", header: "Plate_Plate.hxx".}
proc SetPolynomialPartOnly*(this: var Plate_Plate;
                           PPOnly: Standard_Boolean = Standard_True) {.
    importcpp: "SetPolynomialPartOnly", header: "Plate_Plate.hxx".}
proc Continuity*(this: Plate_Plate): Standard_Integer {.noSideEffect,
    importcpp: "Continuity", header: "Plate_Plate.hxx".}
proc UVBox*(this: Plate_Plate; UMin: var Standard_Real; UMax: var Standard_Real;
           VMin: var Standard_Real; VMax: var Standard_Real) {.noSideEffect,
    importcpp: "UVBox", header: "Plate_Plate.hxx".}
proc UVConstraints*(this: Plate_Plate; Seq: var TColgp_SequenceOfXY) {.noSideEffect,
    importcpp: "UVConstraints", header: "Plate_Plate.hxx".}