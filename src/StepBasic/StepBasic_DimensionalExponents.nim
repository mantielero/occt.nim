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

discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_DimensionalExponents"
type
  HandleC1C1* = Handle[StepBasicDimensionalExponents]
  StepBasicDimensionalExponents* {.importcpp: "StepBasic_DimensionalExponents",
                                  header: "StepBasic_DimensionalExponents.hxx",
                                  bycopy.} = object of StandardTransient ## ! Returns a
                                                                    ## DimensionalExponents


proc constructStepBasicDimensionalExponents*(): StepBasicDimensionalExponents {.
    constructor, importcpp: "StepBasic_DimensionalExponents(@)",
    header: "StepBasic_DimensionalExponents.hxx".}
proc init*(this: var StepBasicDimensionalExponents; aLengthExponent: cfloat;
          aMassExponent: cfloat; aTimeExponent: cfloat;
          aElectricCurrentExponent: cfloat;
          aThermodynamicTemperatureExponent: cfloat;
          aAmountOfSubstanceExponent: cfloat; aLuminousIntensityExponent: cfloat) {.
    importcpp: "Init", header: "StepBasic_DimensionalExponents.hxx".}
proc setLengthExponent*(this: var StepBasicDimensionalExponents;
                       aLengthExponent: cfloat) {.importcpp: "SetLengthExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc lengthExponent*(this: StepBasicDimensionalExponents): cfloat {.noSideEffect,
    importcpp: "LengthExponent", header: "StepBasic_DimensionalExponents.hxx".}
proc setMassExponent*(this: var StepBasicDimensionalExponents; aMassExponent: cfloat) {.
    importcpp: "SetMassExponent", header: "StepBasic_DimensionalExponents.hxx".}
proc massExponent*(this: StepBasicDimensionalExponents): cfloat {.noSideEffect,
    importcpp: "MassExponent", header: "StepBasic_DimensionalExponents.hxx".}
proc setTimeExponent*(this: var StepBasicDimensionalExponents; aTimeExponent: cfloat) {.
    importcpp: "SetTimeExponent", header: "StepBasic_DimensionalExponents.hxx".}
proc timeExponent*(this: StepBasicDimensionalExponents): cfloat {.noSideEffect,
    importcpp: "TimeExponent", header: "StepBasic_DimensionalExponents.hxx".}
proc setElectricCurrentExponent*(this: var StepBasicDimensionalExponents;
                                aElectricCurrentExponent: cfloat) {.
    importcpp: "SetElectricCurrentExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc electricCurrentExponent*(this: StepBasicDimensionalExponents): cfloat {.
    noSideEffect, importcpp: "ElectricCurrentExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc setThermodynamicTemperatureExponent*(
    this: var StepBasicDimensionalExponents;
    aThermodynamicTemperatureExponent: cfloat) {.
    importcpp: "SetThermodynamicTemperatureExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc thermodynamicTemperatureExponent*(this: StepBasicDimensionalExponents): cfloat {.
    noSideEffect, importcpp: "ThermodynamicTemperatureExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc setAmountOfSubstanceExponent*(this: var StepBasicDimensionalExponents;
                                  aAmountOfSubstanceExponent: cfloat) {.
    importcpp: "SetAmountOfSubstanceExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc amountOfSubstanceExponent*(this: StepBasicDimensionalExponents): cfloat {.
    noSideEffect, importcpp: "AmountOfSubstanceExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc setLuminousIntensityExponent*(this: var StepBasicDimensionalExponents;
                                  aLuminousIntensityExponent: cfloat) {.
    importcpp: "SetLuminousIntensityExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
proc luminousIntensityExponent*(this: StepBasicDimensionalExponents): cfloat {.
    noSideEffect, importcpp: "LuminousIntensityExponent",
    header: "StepBasic_DimensionalExponents.hxx".}
type
  StepBasicDimensionalExponentsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DimensionalExponents::get_type_name(@)",
                            header: "StepBasic_DimensionalExponents.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DimensionalExponents::get_type_descriptor(@)",
    header: "StepBasic_DimensionalExponents.hxx".}
proc dynamicType*(this: StepBasicDimensionalExponents): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DimensionalExponents.hxx".}

























