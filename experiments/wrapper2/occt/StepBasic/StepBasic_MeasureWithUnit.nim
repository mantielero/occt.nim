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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_Unit,
  ../Standard/Standard_Transient, ../Standard/Standard_Real

discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of StepBasic_Unit"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_MeasureWithUnit"
type
  Handle_StepBasic_MeasureWithUnit* = handle[StepBasic_MeasureWithUnit]
  StepBasic_MeasureWithUnit* {.importcpp: "StepBasic_MeasureWithUnit",
                              header: "StepBasic_MeasureWithUnit.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## MeasureWithUnit


proc constructStepBasic_MeasureWithUnit*(): StepBasic_MeasureWithUnit {.
    constructor, importcpp: "StepBasic_MeasureWithUnit(@)",
    header: "StepBasic_MeasureWithUnit.hxx".}
proc Init*(this: var StepBasic_MeasureWithUnit;
          aValueComponent: handle[StepBasic_MeasureValueMember];
          aUnitComponent: StepBasic_Unit) {.importcpp: "Init",
    header: "StepBasic_MeasureWithUnit.hxx".}
proc SetValueComponent*(this: var StepBasic_MeasureWithUnit;
                       aValueComponent: Standard_Real) {.
    importcpp: "SetValueComponent", header: "StepBasic_MeasureWithUnit.hxx".}
proc ValueComponent*(this: StepBasic_MeasureWithUnit): Standard_Real {.noSideEffect,
    importcpp: "ValueComponent", header: "StepBasic_MeasureWithUnit.hxx".}
proc ValueComponentMember*(this: StepBasic_MeasureWithUnit): handle[
    StepBasic_MeasureValueMember] {.noSideEffect,
                                   importcpp: "ValueComponentMember",
                                   header: "StepBasic_MeasureWithUnit.hxx".}
proc SetValueComponentMember*(this: var StepBasic_MeasureWithUnit;
                             val: handle[StepBasic_MeasureValueMember]) {.
    importcpp: "SetValueComponentMember", header: "StepBasic_MeasureWithUnit.hxx".}
proc SetUnitComponent*(this: var StepBasic_MeasureWithUnit;
                      aUnitComponent: StepBasic_Unit) {.
    importcpp: "SetUnitComponent", header: "StepBasic_MeasureWithUnit.hxx".}
proc UnitComponent*(this: StepBasic_MeasureWithUnit): StepBasic_Unit {.noSideEffect,
    importcpp: "UnitComponent", header: "StepBasic_MeasureWithUnit.hxx".}
type
  StepBasic_MeasureWithUnitbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_MeasureWithUnit::get_type_name(@)",
                              header: "StepBasic_MeasureWithUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_MeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_MeasureWithUnit.hxx".}
proc DynamicType*(this: StepBasic_MeasureWithUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_MeasureWithUnit.hxx".}