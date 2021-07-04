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

discard "forward decl of StepBasic_PlaneAngleUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndPlaneAngleUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndPlaneAngleUnit"
type
  Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit* = handle[
      StepBasic_ConversionBasedUnitAndPlaneAngleUnit]
  StepBasic_ConversionBasedUnitAndPlaneAngleUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit",
      header: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx", bycopy.} = object of StepBasic_ConversionBasedUnit ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## ConversionBasedUnitAndPlaneAngleUnit


proc constructStepBasic_ConversionBasedUnitAndPlaneAngleUnit*(): StepBasic_ConversionBasedUnitAndPlaneAngleUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx".}
proc Init*(this: var StepBasic_ConversionBasedUnitAndPlaneAngleUnit;
          aDimensions: handle[StepBasic_DimensionalExponents];
          aName: handle[TCollection_HAsciiString];
          aConversionFactor: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "Init",
    header: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx".}
proc SetPlaneAngleUnit*(this: var StepBasic_ConversionBasedUnitAndPlaneAngleUnit;
                       aPlaneAngleUnit: handle[StepBasic_PlaneAngleUnit]) {.
    importcpp: "SetPlaneAngleUnit",
    header: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx".}
proc PlaneAngleUnit*(this: StepBasic_ConversionBasedUnitAndPlaneAngleUnit): handle[
    StepBasic_PlaneAngleUnit] {.noSideEffect, importcpp: "PlaneAngleUnit", header: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx".}
type
  StepBasic_ConversionBasedUnitAndPlaneAngleUnitbase_type* = StepBasic_ConversionBasedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx".}
proc DynamicType*(this: StepBasic_ConversionBasedUnitAndPlaneAngleUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx".}