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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_MeasureWithUnit

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of StepBasic_Unit"
discard "forward decl of StepBasic_UncertaintyMeasureWithUnit"
discard "forward decl of StepBasic_UncertaintyMeasureWithUnit"
type
  Handle_StepBasic_UncertaintyMeasureWithUnit* = handle[
      StepBasic_UncertaintyMeasureWithUnit]
  StepBasic_UncertaintyMeasureWithUnit* {.
      importcpp: "StepBasic_UncertaintyMeasureWithUnit",
      header: "StepBasic_UncertaintyMeasureWithUnit.hxx", bycopy.} = object of StepBasic_MeasureWithUnit ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## UncertaintyMeasureWithUnit


proc constructStepBasic_UncertaintyMeasureWithUnit*(): StepBasic_UncertaintyMeasureWithUnit {.
    constructor, importcpp: "StepBasic_UncertaintyMeasureWithUnit(@)",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc Init*(this: var StepBasic_UncertaintyMeasureWithUnit;
          aValueComponent: handle[StepBasic_MeasureValueMember];
          aUnitComponent: StepBasic_Unit; aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc SetName*(this: var StepBasic_UncertaintyMeasureWithUnit;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc Name*(this: StepBasic_UncertaintyMeasureWithUnit): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc SetDescription*(this: var StepBasic_UncertaintyMeasureWithUnit;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc Description*(this: StepBasic_UncertaintyMeasureWithUnit): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
type
  StepBasic_UncertaintyMeasureWithUnitbase_type* = StepBasic_MeasureWithUnit

proc get_type_name*(): cstring {.importcpp: "StepBasic_UncertaintyMeasureWithUnit::get_type_name(@)", header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_UncertaintyMeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc DynamicType*(this: StepBasic_UncertaintyMeasureWithUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}