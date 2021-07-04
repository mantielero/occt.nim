##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_DimensionalExponents"
type
  Handle_StepBasic_DimensionalExponents* = handle[StepBasic_DimensionalExponents]
  StepBasic_DimensionalExponents* {.importcpp: "StepBasic_DimensionalExponents", header: "StepBasic_DimensionalExponents.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Returns a
                                                                      ## DimensionalExponents


proc constructStepBasic_DimensionalExponents*(): StepBasic_DimensionalExponents {.
    constructor, importcpp: "StepBasic_DimensionalExponents(@)",
    header: "StepBasic_DimensionalExponents.hxx".}
proc Init*(this: var StepBasic_DimensionalExponents; aLengthExponent: Standard_Real;
          aMassExponent: Standard_Real; aTimeExponent: Standard_Real;
          aElectricCurrentExponent: Standard_Real;
          aThermodynamicTemperatureExponent: Standard_Real;
          aAmountOfSubstanceExponent: Standard_Real;
          aLuminousIntensityExponent: Standard_Real) {.importcpp: "Init",
    header: "StepBasic_DimensionalExponents.hxx".}
proc SetLengthExponent*(this: var StepBasic_DimensionalExponents;
                       aLengthExponent: Standard_Real) {.
    importcpp: "SetLengthExponent", header: "StepBasic_DimensionalExponents.hxx".}
proc LengthExponent*(this: StepBasic_DimensionalExponents): Standard_Real {.
    noSideEffect, importcpp: "LengthExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc SetMassExponent*(this: var StepBasic_DimensionalExponents;
                     aMassExponent: Standard_Real) {.importcpp: "SetMassExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc MassExponent*(this: StepBasic_DimensionalExponents): Standard_Real {.
    noSideEffect, importcpp: "MassExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc SetTimeExponent*(this: var StepBasic_DimensionalExponents;
                     aTimeExponent: Standard_Real) {.importcpp: "SetTimeExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc TimeExponent*(this: StepBasic_DimensionalExponents): Standard_Real {.
    noSideEffect, importcpp: "TimeExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc SetElectricCurrentExponent*(this: var StepBasic_DimensionalExponents;
                                aElectricCurrentExponent: Standard_Real) {.
    importcpp: "SetElectricCurrentExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc ElectricCurrentExponent*(this: StepBasic_DimensionalExponents): Standard_Real {.
    noSideEffect, importcpp: "ElectricCurrentExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc SetThermodynamicTemperatureExponent*(
    this: var StepBasic_DimensionalExponents;
    aThermodynamicTemperatureExponent: Standard_Real) {.
    importcpp: "SetThermodynamicTemperatureExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc ThermodynamicTemperatureExponent*(this: StepBasic_DimensionalExponents): Standard_Real {.
    noSideEffect, importcpp: "ThermodynamicTemperatureExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc SetAmountOfSubstanceExponent*(this: var StepBasic_DimensionalExponents;
                                  aAmountOfSubstanceExponent: Standard_Real) {.
    importcpp: "SetAmountOfSubstanceExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc AmountOfSubstanceExponent*(this: StepBasic_DimensionalExponents): Standard_Real {.
    noSideEffect, importcpp: "AmountOfSubstanceExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc SetLuminousIntensityExponent*(this: var StepBasic_DimensionalExponents;
                                  aLuminousIntensityExponent: Standard_Real) {.
    importcpp: "SetLuminousIntensityExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc LuminousIntensityExponent*(this: StepBasic_DimensionalExponents): Standard_Real {.
    noSideEffect, importcpp: "LuminousIntensityExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
type
  StepBasic_DimensionalExponentsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DimensionalExponents::get_type_name(@)",
                              header: "StepBasic_DimensionalExponents.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DimensionalExponents::get_type_descriptor(@)",
    header: "StepBasic_DimensionalExponents.hxx".}
proc DynamicType*(this: StepBasic_DimensionalExponents): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DimensionalExponents.hxx".}