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
  StepRepr_ReprItemAndMeasureWithUnitAndQRI

discard "forward decl of StepBasic_LengthMeasureWithUnit"
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI"
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI"
type
  Handle_StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI* = handle[
      StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI]
  StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI* {.
      importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI",
      header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx", bycopy.} = object of StepRepr_ReprItemAndMeasureWithUnitAndQRI


proc constructStepRepr_ReprItemAndLengthMeasureWithUnitAndQRI*(): StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI {.
    constructor, importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI(@)",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc SetLengthMeasureWithUnit*(this: var StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI;
                              aLMWU: handle[StepBasic_LengthMeasureWithUnit]) {.
    importcpp: "SetLengthMeasureWithUnit",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc GetLengthMeasureWithUnit*(this: StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI): handle[
    StepBasic_LengthMeasureWithUnit] {.noSideEffect,
                                      importcpp: "GetLengthMeasureWithUnit", header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
type
  StepRepr_ReprItemAndLengthMeasureWithUnitAndQRIbase_type* = StepRepr_ReprItemAndMeasureWithUnitAndQRI

proc get_type_name*(): cstring {.importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI::get_type_name(@)", header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc DynamicType*(this: StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}