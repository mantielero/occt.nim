##  Created on: 2003-02-10
##  Created by: Sergey KUUL
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of StepBasic_MassUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndMassUnit"
discard "forward decl of StepBasic_ConversionBasedUnitAndMassUnit"
type
  Handle_StepBasic_ConversionBasedUnitAndMassUnit* = handle[
      StepBasic_ConversionBasedUnitAndMassUnit]
  StepBasic_ConversionBasedUnitAndMassUnit* {.
      importcpp: "StepBasic_ConversionBasedUnitAndMassUnit",
      header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx", bycopy.} = object of StepBasic_ConversionBasedUnit ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## ConversionBasedUnitAndLengthUnit


proc constructStepBasic_ConversionBasedUnitAndMassUnit*(): StepBasic_ConversionBasedUnitAndMassUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnitAndMassUnit(@)",
    header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc Init*(this: var StepBasic_ConversionBasedUnitAndMassUnit;
          aDimensions: handle[StepBasic_DimensionalExponents];
          aName: handle[TCollection_HAsciiString];
          aConversionFactor: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc SetMassUnit*(this: var StepBasic_ConversionBasedUnitAndMassUnit;
                 aMassUnit: handle[StepBasic_MassUnit]) {.
    importcpp: "SetMassUnit",
    header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc MassUnit*(this: StepBasic_ConversionBasedUnitAndMassUnit): handle[
    StepBasic_MassUnit] {.noSideEffect, importcpp: "MassUnit",
                         header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
type
  StepBasic_ConversionBasedUnitAndMassUnitbase_type* = StepBasic_ConversionBasedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_ConversionBasedUnitAndMassUnit::get_type_name(@)", header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ConversionBasedUnitAndMassUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}
proc DynamicType*(this: StepBasic_ConversionBasedUnitAndMassUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ConversionBasedUnitAndMassUnit.hxx".}