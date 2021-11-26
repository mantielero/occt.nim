##  Created on: 2003-08-21
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

discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnit"
type
  HandleC1C1* = Handle[StepReprReprItemAndLengthMeasureWithUnit]
  StepReprReprItemAndLengthMeasureWithUnit* {.
      importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnit",
      header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx", bycopy.} = object of StepReprReprItemAndMeasureWithUnit


proc constructStepReprReprItemAndLengthMeasureWithUnit*(): StepReprReprItemAndLengthMeasureWithUnit {.
    constructor, importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnit(@)",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
proc setLengthMeasureWithUnit*(this: var StepReprReprItemAndLengthMeasureWithUnit;
                              aLMWU: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetLengthMeasureWithUnit",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
proc getLengthMeasureWithUnit*(this: StepReprReprItemAndLengthMeasureWithUnit): Handle[
    StepBasicLengthMeasureWithUnit] {.noSideEffect,
                                     importcpp: "GetLengthMeasureWithUnit", header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
type
  StepReprReprItemAndLengthMeasureWithUnitbaseType* = StepReprReprItemAndMeasureWithUnit

proc getTypeName*(): cstring {.importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnit::get_type_name(@)", header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnit::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
proc dynamicType*(this: StepReprReprItemAndLengthMeasureWithUnit): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}