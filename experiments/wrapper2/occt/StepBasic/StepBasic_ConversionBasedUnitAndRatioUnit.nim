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

discard "forward decl of StepBasic_RatioUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndRatioUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndRatioUnit"
type
  HandleStepBasicConversionBasedUnitAndRatioUnit* = Handle[
      StepBasicConversionBasedUnitAndRatioUnit]
  StepBasicConversionBasedUnitAndRatioUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndRatioUnit",
      header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx", bycopy.} = object of StepBasicConversionBasedUnit ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## ConversionBasedUnitAndRatioUnit


proc constructStepBasicConversionBasedUnitAndRatioUnit*(): StepBasicConversionBasedUnitAndRatioUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndRatioUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc init*(this: var StepBasicConversionBasedUnitAndRatioUnit;
          aDimensions: Handle[StepBasicDimensionalExponents];
          aName: Handle[TCollectionHAsciiString];
          aConversionFactor: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc setRatioUnit*(this: var StepBasicConversionBasedUnitAndRatioUnit;
                  aRatioUnit: Handle[StepBasicRatioUnit]) {.
    importcpp: "SetRatioUnit",
    header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc ratioUnit*(this: StepBasicConversionBasedUnitAndRatioUnit): Handle[
    StepBasicRatioUnit] {.noSideEffect, importcpp: "RatioUnit", header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
type
  StepBasicConversionBasedUnitAndRatioUnitbaseType* = StepBasicConversionBasedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndRatioUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ConversionBasedUnitAndRatioUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
proc dynamicType*(this: StepBasicConversionBasedUnitAndRatioUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ConversionBasedUnitAndRatioUnit.hxx".}
