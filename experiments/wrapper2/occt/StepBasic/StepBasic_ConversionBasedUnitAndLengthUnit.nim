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

discard "forward decl of StepBasic_LengthUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndLengthUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndLengthUnit"
type
  HandleC1C1* = Handle[StepBasicConversionBasedUnitAndLengthUnit]
  StepBasicConversionBasedUnitAndLengthUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndLengthUnit",
      header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx", bycopy.} = object of StepBasicConversionBasedUnit ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## ConversionBasedUnitAndLengthUnit


proc constructStepBasicConversionBasedUnitAndLengthUnit*(): StepBasicConversionBasedUnitAndLengthUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndLengthUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc init*(this: var StepBasicConversionBasedUnitAndLengthUnit;
          aDimensions: Handle[StepBasicDimensionalExponents];
          aName: Handle[TCollectionHAsciiString];
          aConversionFactor: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc setLengthUnit*(this: var StepBasicConversionBasedUnitAndLengthUnit;
                   aLengthUnit: Handle[StepBasicLengthUnit]) {.
    importcpp: "SetLengthUnit",
    header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc lengthUnit*(this: StepBasicConversionBasedUnitAndLengthUnit): Handle[
    StepBasicLengthUnit] {.noSideEffect, importcpp: "LengthUnit", header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
type
  StepBasicConversionBasedUnitAndLengthUnitbaseType* = StepBasicConversionBasedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndLengthUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ConversionBasedUnitAndLengthUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc dynamicType*(this: StepBasicConversionBasedUnitAndLengthUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}

























