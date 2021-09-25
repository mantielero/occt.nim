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

discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of StepBasic_Unit"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepBasic_MeasureWithUnit"
type
  HandleStepBasicMeasureWithUnit* = Handle[StepBasicMeasureWithUnit]
  StepBasicMeasureWithUnit* {.importcpp: "StepBasic_MeasureWithUnit",
                             header: "StepBasic_MeasureWithUnit.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## MeasureWithUnit


proc constructStepBasicMeasureWithUnit*(): StepBasicMeasureWithUnit {.constructor,
    importcpp: "StepBasic_MeasureWithUnit(@)",
    header: "StepBasic_MeasureWithUnit.hxx".}
proc init*(this: var StepBasicMeasureWithUnit;
          aValueComponent: Handle[StepBasicMeasureValueMember];
          aUnitComponent: StepBasicUnit) {.importcpp: "Init",
    header: "StepBasic_MeasureWithUnit.hxx".}
proc setValueComponent*(this: var StepBasicMeasureWithUnit; aValueComponent: float) {.
    importcpp: "SetValueComponent", header: "StepBasic_MeasureWithUnit.hxx".}
proc valueComponent*(this: StepBasicMeasureWithUnit): float {.noSideEffect,
    importcpp: "ValueComponent", header: "StepBasic_MeasureWithUnit.hxx".}
proc valueComponentMember*(this: StepBasicMeasureWithUnit): Handle[
    StepBasicMeasureValueMember] {.noSideEffect,
                                  importcpp: "ValueComponentMember",
                                  header: "StepBasic_MeasureWithUnit.hxx".}
proc setValueComponentMember*(this: var StepBasicMeasureWithUnit;
                             val: Handle[StepBasicMeasureValueMember]) {.
    importcpp: "SetValueComponentMember", header: "StepBasic_MeasureWithUnit.hxx".}
proc setUnitComponent*(this: var StepBasicMeasureWithUnit;
                      aUnitComponent: StepBasicUnit) {.
    importcpp: "SetUnitComponent", header: "StepBasic_MeasureWithUnit.hxx".}
proc unitComponent*(this: StepBasicMeasureWithUnit): StepBasicUnit {.noSideEffect,
    importcpp: "UnitComponent", header: "StepBasic_MeasureWithUnit.hxx".}
type
  StepBasicMeasureWithUnitbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_MeasureWithUnit::get_type_name(@)",
                            header: "StepBasic_MeasureWithUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_MeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_MeasureWithUnit.hxx".}
proc dynamicType*(this: StepBasicMeasureWithUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_MeasureWithUnit.hxx".}
