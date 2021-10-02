##  Created on: 2001-04-24
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of StepRepr_ValueRange"
discard "forward decl of StepRepr_ValueRange"
type
  HandleC1C1* = Handle[StepReprValueRange]

## ! Added for Dimensional Tolerances

type
  StepReprValueRange* {.importcpp: "StepRepr_ValueRange",
                       header: "StepRepr_ValueRange.hxx", bycopy.} = object of StepReprCompoundRepresentationItem


proc constructStepReprValueRange*(): StepReprValueRange {.constructor,
    importcpp: "StepRepr_ValueRange(@)", header: "StepRepr_ValueRange.hxx".}
type
  StepReprValueRangebaseType* = StepReprCompoundRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepRepr_ValueRange::get_type_name(@)",
                            header: "StepRepr_ValueRange.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ValueRange::get_type_descriptor(@)",
    header: "StepRepr_ValueRange.hxx".}
proc dynamicType*(this: StepReprValueRange): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepRepr_ValueRange.hxx".}