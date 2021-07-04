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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_NamedUnit

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_DimensionalExponents"
discard "forward decl of StepBasic_ConversionBasedUnit"
discard "forward decl of StepBasic_ConversionBasedUnit"
type
  Handle_StepBasic_ConversionBasedUnit* = handle[StepBasic_ConversionBasedUnit]
  StepBasic_ConversionBasedUnit* {.importcpp: "StepBasic_ConversionBasedUnit",
                                  header: "StepBasic_ConversionBasedUnit.hxx",
                                  bycopy.} = object of StepBasic_NamedUnit ## ! Returns a
                                                                      ## ConversionBasedUnit


proc constructStepBasic_ConversionBasedUnit*(): StepBasic_ConversionBasedUnit {.
    constructor, importcpp: "StepBasic_ConversionBasedUnit(@)",
    header: "StepBasic_ConversionBasedUnit.hxx".}
proc Init*(this: var StepBasic_ConversionBasedUnit;
          aDimensions: handle[StepBasic_DimensionalExponents];
          aName: handle[TCollection_HAsciiString];
          aConversionFactor: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "Init", header: "StepBasic_ConversionBasedUnit.hxx".}
proc SetName*(this: var StepBasic_ConversionBasedUnit;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ConversionBasedUnit.hxx".}
proc Name*(this: StepBasic_ConversionBasedUnit): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ConversionBasedUnit.hxx".}
proc SetConversionFactor*(this: var StepBasic_ConversionBasedUnit;
                         aConversionFactor: handle[StepBasic_MeasureWithUnit]) {.
    importcpp: "SetConversionFactor", header: "StepBasic_ConversionBasedUnit.hxx".}
proc ConversionFactor*(this: StepBasic_ConversionBasedUnit): handle[
    StepBasic_MeasureWithUnit] {.noSideEffect, importcpp: "ConversionFactor",
                                header: "StepBasic_ConversionBasedUnit.hxx".}
type
  StepBasic_ConversionBasedUnitbase_type* = StepBasic_NamedUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_ConversionBasedUnit::get_type_name(@)",
                              header: "StepBasic_ConversionBasedUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ConversionBasedUnit::get_type_descriptor(@)",
    header: "StepBasic_ConversionBasedUnit.hxx".}
proc DynamicType*(this: StepBasic_ConversionBasedUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ConversionBasedUnit.hxx".}