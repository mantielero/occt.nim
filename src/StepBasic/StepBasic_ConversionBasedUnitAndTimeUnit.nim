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

discard "forward decl of StepBasic_TimeUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndTimeUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndTimeUnit"
type
  HandleC1C1* = Handle[StepBasicConversionBasedUnitAndTimeUnit]
  StepBasicConversionBasedUnitAndTimeUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndTimeUnit",
      header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx", bycopy.} = object of StepBasicConversionBasedUnit ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## ConversionBasedUnitAndTimeUnit


proc constructStepBasicConversionBasedUnitAndTimeUnit*(): StepBasicConversionBasedUnitAndTimeUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndTimeUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc init*(this: var StepBasicConversionBasedUnitAndTimeUnit;
          aDimensions: Handle[StepBasicDimensionalExponents];
          aName: Handle[TCollectionHAsciiString];
          aConversionFactor: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc setTimeUnit*(this: var StepBasicConversionBasedUnitAndTimeUnit;
                 aTimeUnit: Handle[StepBasicTimeUnit]) {.importcpp: "SetTimeUnit",
    header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc timeUnit*(this: StepBasicConversionBasedUnitAndTimeUnit): Handle[
    StepBasicTimeUnit] {.noSideEffect, importcpp: "TimeUnit",
                        header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
type
  StepBasicConversionBasedUnitAndTimeUnitbaseType* = StepBasicConversionBasedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndTimeUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ConversionBasedUnitAndTimeUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}
proc dynamicType*(this: StepBasicConversionBasedUnitAndTimeUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ConversionBasedUnitAndTimeUnit.hxx".}

























