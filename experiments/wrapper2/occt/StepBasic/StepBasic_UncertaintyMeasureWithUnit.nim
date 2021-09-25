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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of StepBasic_Unit"
discard "forward decl of StepBasic_UncertaintyMeasureWithUnit"
discard "forward decl of StepBasic_UncertaintyMeasureWithUnit"
type
  HandleStepBasicUncertaintyMeasureWithUnit* = Handle[
      StepBasicUncertaintyMeasureWithUnit]
  StepBasicUncertaintyMeasureWithUnit* {.importcpp: "StepBasic_UncertaintyMeasureWithUnit", header: "StepBasic_UncertaintyMeasureWithUnit.hxx",
                                        bycopy.} = object of StepBasicMeasureWithUnit ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## UncertaintyMeasureWithUnit


proc constructStepBasicUncertaintyMeasureWithUnit*(): StepBasicUncertaintyMeasureWithUnit {.
    constructor, importcpp: "StepBasic_UncertaintyMeasureWithUnit(@)",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc init*(this: var StepBasicUncertaintyMeasureWithUnit;
          aValueComponent: Handle[StepBasicMeasureValueMember];
          aUnitComponent: StepBasicUnit; aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc setName*(this: var StepBasicUncertaintyMeasureWithUnit;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc name*(this: StepBasicUncertaintyMeasureWithUnit): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc setDescription*(this: var StepBasicUncertaintyMeasureWithUnit;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc description*(this: StepBasicUncertaintyMeasureWithUnit): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
type
  StepBasicUncertaintyMeasureWithUnitbaseType* = StepBasicMeasureWithUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_UncertaintyMeasureWithUnit::get_type_name(@)",
                            header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_UncertaintyMeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
proc dynamicType*(this: StepBasicUncertaintyMeasureWithUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_UncertaintyMeasureWithUnit.hxx".}
