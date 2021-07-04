##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_SymmetricTensor23d,
  StepFEA_FeaMaterialPropertyRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_SymmetricTensor23d"
discard "forward decl of StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion"
discard "forward decl of StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion"
type
  Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion* = handle[
      StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion]

## ! Representation of STEP entity FeaTangentialCoefficientOfLinearThermalExpansion

type
  StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion* {.
      importcpp: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion",
      header: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx",
      bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ## ! Empty constructor


proc constructStepFEA_FeaTangentialCoefficientOfLinearThermalExpansion*(): StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion {.
    constructor,
    importcpp: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion(@)",
    header: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
proc Init*(this: var StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aFeaConstants: StepFEA_SymmetricTensor23d) {.importcpp: "Init",
    header: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
proc FeaConstants*(this: StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion): StepFEA_SymmetricTensor23d {.
    noSideEffect, importcpp: "FeaConstants",
    header: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
proc SetFeaConstants*(this: var StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion;
                     FeaConstants: StepFEA_SymmetricTensor23d) {.
    importcpp: "SetFeaConstants",
    header: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
type
  StepFEA_FeaTangentialCoefficientOfLinearThermalExpansionbase_type* = StepFEA_FeaMaterialPropertyRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion::get_type_name(@)", header: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion::get_type_descriptor(@)",
    header: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx".}
proc DynamicType*(this: StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx".}