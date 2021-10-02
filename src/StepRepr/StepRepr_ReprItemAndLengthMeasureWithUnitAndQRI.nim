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
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI"
discard "forward decl of StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI"
type
  HandleC1C1* = Handle[StepReprReprItemAndLengthMeasureWithUnitAndQRI]
  StepReprReprItemAndLengthMeasureWithUnitAndQRI* {.
      importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI",
      header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx", bycopy.} = object of StepReprReprItemAndMeasureWithUnitAndQRI


proc constructStepReprReprItemAndLengthMeasureWithUnitAndQRI*(): StepReprReprItemAndLengthMeasureWithUnitAndQRI {.
    constructor, importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI(@)",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc setLengthMeasureWithUnit*(this: var StepReprReprItemAndLengthMeasureWithUnitAndQRI;
                              aLMWU: Handle[StepBasicLengthMeasureWithUnit]) {.
    importcpp: "SetLengthMeasureWithUnit",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc getLengthMeasureWithUnit*(this: StepReprReprItemAndLengthMeasureWithUnitAndQRI): Handle[
    StepBasicLengthMeasureWithUnit] {.noSideEffect,
                                     importcpp: "GetLengthMeasureWithUnit", header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
type
  StepReprReprItemAndLengthMeasureWithUnitAndQRIbaseType* = StepReprReprItemAndMeasureWithUnitAndQRI

proc getTypeName*(): cstring {.importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI::get_type_name(@)", header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI::get_type_descriptor(@)",
    header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}
proc dynamicType*(this: StepReprReprItemAndLengthMeasureWithUnitAndQRI): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_ReprItemAndLengthMeasureWithUnitAndQRI.hxx".}