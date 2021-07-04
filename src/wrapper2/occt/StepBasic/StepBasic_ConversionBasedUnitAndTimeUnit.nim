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

discard "forward decl of StepBasic_TimeUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndTimeUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndTimeUnit"
type
  Handle_StepBasic_ConversionBasedUnitAndTimeUnit* = handle[
      StepBasic_ConversionBasedUnitAndTimeUnit]
  StepBasic_ConversionBasedUnitAndTimeUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndTimeUnit",
      header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx", bycopy.} = object of StepBasic_ConversionBasedUnit ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## ConversionBasedUnitAndTimeUnit


proc constructStepBasic_ConversionBasedUnitAndTimeUnit*(): StepBasic_ConversionBasedUnitAndTimeUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndTimeUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc Init*(this: var StepBasic_ConversionBasedUnitAndTimeUnit;
          aDimensions: handle[StepBasic_DimensionalExponents];
          aName: handle[TCollection_HAsciiString];
          aConversionFactor: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc SetTimeUnit*(this: var StepBasic_ConversionBasedUnitAndTimeUnit;
                 aTimeUnit: handle[StepBasic_TimeUnit]) {.
    importcpp: "SetTimeUnit",
    header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc TimeUnit*(this: StepBasic_ConversionBasedUnitAndTimeUnit): handle[
    StepBasic_TimeUnit] {.noSideEffect, importcpp: "TimeUnit",
                         header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
type
  StepBasic_ConversionBasedUnitAndTimeUnitbase_type* = StepBasic_ConversionBasedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndTimeUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ConversionBasedUnitAndTimeUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc DynamicType*(this: StepBasic_ConversionBasedUnitAndTimeUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}