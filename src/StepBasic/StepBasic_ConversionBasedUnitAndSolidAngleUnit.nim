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

discard "forward decl of StepBasic_SolidAngleUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndSolidAngleUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndSolidAngleUnit"
type
  HandleC1C1* = Handle[StepBasicConversionBasedUnitAndSolidAngleUnit]
  StepBasicConversionBasedUnitAndSolidAngleUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndSolidAngleUnit",
      header: "StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx", bycopy.} = object of StepBasicConversionBasedUnit ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## a
                                                                                                               ## ConversionBasedUnitAndSolidAngleUnit


proc constructStepBasicConversionBasedUnitAndSolidAngleUnit*(): StepBasicConversionBasedUnitAndSolidAngleUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndSolidAngleUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx".}
proc init*(this: var StepBasicConversionBasedUnitAndSolidAngleUnit;
          aDimensions: Handle[StepBasicDimensionalExponents];
          aName: Handle[TCollectionHAsciiString];
          aConversionFactor: Handle[StepBasicMeasureWithUnit]) {.
    importcpp: "Init",
    header: "StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx".}
proc setSolidAngleUnit*(this: var StepBasicConversionBasedUnitAndSolidAngleUnit;
                       aSolidAngleUnit: Handle[StepBasicSolidAngleUnit]) {.
    importcpp: "SetSolidAngleUnit",
    header: "StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx".}
proc solidAngleUnit*(this: StepBasicConversionBasedUnitAndSolidAngleUnit): Handle[
    StepBasicSolidAngleUnit] {.noSideEffect, importcpp: "SolidAngleUnit", header: "StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx".}
type
  StepBasicConversionBasedUnitAndSolidAngleUnitbaseType* = StepBasicConversionBasedUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndSolidAngleUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ConversionBasedUnitAndSolidAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx".}
proc dynamicType*(this: StepBasicConversionBasedUnitAndSolidAngleUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx".}

























