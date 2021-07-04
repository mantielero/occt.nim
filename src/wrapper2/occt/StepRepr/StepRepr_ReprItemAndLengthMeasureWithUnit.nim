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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepRepr_ReprItemAndMeasureWithUnit

discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnit"
type
  Handle_StepRepr_ReprItemAndLengthMeasureWithUnit* = handle[
      StepRepr_ReprItemAndLengthMeasureWithUnit]
  StepRepr_ReprItemAndLengthMeasureWithUnit* {.
      importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnit",
      header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx", bycopy.} = object of StepRepr_ReprItemAndMeasureWithUnit


proc constructStepRepr_ReprItemAndLengthMeasureWithUnit*(): StepRepr_ReprItemAndLengthMeasureWithUnit {.
    constructor, importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnit(@)",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
proc SetLengthMeasureWithUnit*(this: var StepRepr_ReprItemAndLengthMeasureWithUnit;
                              aLMWU: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetLengthMeasureWithUnit",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
proc GetLengthMeasureWithUnit*(this: StepRepr_ReprItemAndLengthMeasureWithUnit): handle[
    StepBasic_LengthMeasureWithUnit] {.noSideEffect,
                                      importcpp: "GetLengthMeasureWithUnit", header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
type
  StepRepr_ReprItemAndLengthMeasureWithUnitbase_type* = StepRepr_ReprItemAndMeasureWithUnit

proc get_type_name*(): cstring {.importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnit::get_type_name(@)", header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnit::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}
proc DynamicType*(this: StepRepr_ReprItemAndLengthMeasureWithUnit): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_ReprItemAndLengthMeasureWithUnit.hxx".}