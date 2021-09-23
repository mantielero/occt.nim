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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_ConversionBasedUnit

discard "forward decl of StepBasic_LengthUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndLengthUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndLengthUnit"
type
  Handle_StepBasic_ConversionBasedUnitAndLengthUnit* = handle[
      StepBasic_ConversionBasedUnitAndLengthUnit]
  StepBasic_ConversionBasedUnitAndLengthUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndLengthUnit",
      header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx", bycopy.} = object of StepBasic_ConversionBasedUnit ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## ConversionBasedUnitAndLengthUnit


proc constructStepBasic_ConversionBasedUnitAndLengthUnit*(): StepBasic_ConversionBasedUnitAndLengthUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndLengthUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc Init*(this: var StepBasic_ConversionBasedUnitAndLengthUnit;
          aDimensions: handle[StepBasic_DimensionalExponents];
          aName: handle[TCollection_HAsciiString];
          aConversionFactor: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc SetLengthUnit*(this: var StepBasic_ConversionBasedUnitAndLengthUnit;
                   aLengthUnit: handle[StepBasic_LengthUnit]) {.
    importcpp: "SetLengthUnit",
    header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc LengthUnit*(this: StepBasic_ConversionBasedUnitAndLengthUnit): handle[
    StepBasic_LengthUnit] {.noSideEffect, importcpp: "LengthUnit", header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
type
  StepBasic_ConversionBasedUnitAndLengthUnitbase_type* = StepBasic_ConversionBasedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndLengthUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ConversionBasedUnitAndLengthUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}
proc DynamicType*(this: StepBasic_ConversionBasedUnitAndLengthUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ConversionBasedUnitAndLengthUnit.hxx".}