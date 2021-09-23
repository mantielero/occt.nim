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
  ../Standard/Standard_Real, StepFEA_FeaMaterialPropertyRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_SymmetricTensor23d"
discard "forward decl of StepFEA_FeaSecantCoefficientOfLinearThermalExpansion"
discard "forward decl of StepFEA_FeaSecantCoefficientOfLinearThermalExpansion"
type
  Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion* = handle[
      StepFEA_FeaSecantCoefficientOfLinearThermalExpansion]

## ! Representation of STEP entity FeaSecantCoefficientOfLinearThermalExpansion

type
  StepFEA_FeaSecantCoefficientOfLinearThermalExpansion* {.
      importcpp: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion",
      header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx", bycopy.} = object of StepFEA_FeaMaterialPropertyRepresentationItem ##
                                                                                                                                      ## !
                                                                                                                                      ## Empty
                                                                                                                                      ## constructor


proc constructStepFEA_FeaSecantCoefficientOfLinearThermalExpansion*(): StepFEA_FeaSecantCoefficientOfLinearThermalExpansion {.
    constructor,
    importcpp: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion(@)",
    header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc Init*(this: var StepFEA_FeaSecantCoefficientOfLinearThermalExpansion;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aFeaConstants: StepFEA_SymmetricTensor23d;
          aReferenceTemperature: Standard_Real) {.importcpp: "Init",
    header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc FeaConstants*(this: StepFEA_FeaSecantCoefficientOfLinearThermalExpansion): StepFEA_SymmetricTensor23d {.
    noSideEffect, importcpp: "FeaConstants",
    header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc SetFeaConstants*(this: var StepFEA_FeaSecantCoefficientOfLinearThermalExpansion;
                     FeaConstants: StepFEA_SymmetricTensor23d) {.
    importcpp: "SetFeaConstants",
    header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc ReferenceTemperature*(this: StepFEA_FeaSecantCoefficientOfLinearThermalExpansion): Standard_Real {.
    noSideEffect, importcpp: "ReferenceTemperature",
    header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc SetReferenceTemperature*(this: var StepFEA_FeaSecantCoefficientOfLinearThermalExpansion;
                             ReferenceTemperature: Standard_Real) {.
    importcpp: "SetReferenceTemperature",
    header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}
type
  StepFEA_FeaSecantCoefficientOfLinearThermalExpansionbase_type* = StepFEA_FeaMaterialPropertyRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion::get_type_name(@)", header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion::get_type_descriptor(@)",
    header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}
proc DynamicType*(this: StepFEA_FeaSecantCoefficientOfLinearThermalExpansion): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx".}