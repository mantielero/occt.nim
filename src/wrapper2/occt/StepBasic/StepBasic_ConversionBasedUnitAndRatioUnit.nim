##  Created on: 1994-06-17
##  Created by: EXPRESS->CDL V0.2 Translator
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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_ConversionBasedUnit

discard "forward decl of StepBasic_RatioUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndRatioUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndRatioUnit"
type
  Handle_StepBasic_ConversionBasedUnitAndRatioUnit* = handle[
      StepBasic_ConversionBasedUnitAndRatioUnit]
  StepBasic_ConversionBasedUnitAndRatioUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndRatioUnit",
      header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx", bycopy.} = object of StepBasic_ConversionBasedUnit ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## ConversionBasedUnitAndRatioUnit


proc constructStepBasic_ConversionBasedUnitAndRatioUnit*(): StepBasic_ConversionBasedUnitAndRatioUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndRatioUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc Init*(this: var StepBasic_ConversionBasedUnitAndRatioUnit;
          aDimensions: handle[StepBasic_DimensionalExponents];
          aName: handle[TCollection_HAsciiString];
          aConversionFactor: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc SetRatioUnit*(this: var StepBasic_ConversionBasedUnitAndRatioUnit;
                  aRatioUnit: handle[StepBasic_RatioUnit]) {.
    importcpp: "SetRatioUnit",
    header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc RatioUnit*(this: StepBasic_ConversionBasedUnitAndRatioUnit): handle[
    StepBasic_RatioUnit] {.noSideEffect, importcpp: "RatioUnit", header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
type
  StepBasic_ConversionBasedUnitAndRatioUnitbase_type* = StepBasic_ConversionBasedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndRatioUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ConversionBasedUnitAndRatioUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc DynamicType*(this: StepBasic_ConversionBasedUnitAndRatioUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}