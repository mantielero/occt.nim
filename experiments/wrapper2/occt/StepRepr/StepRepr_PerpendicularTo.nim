##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of StepRepr_PerpendicularTo"
discard "forward decl of StepRepr_PerpendicularTo"
type
  HandleC1C1* = Handle[StepReprPerpendicularTo]

## ! Added for Dimensional Tolerances

type
  StepReprPerpendicularTo* {.importcpp: "StepRepr_PerpendicularTo",
                            header: "StepRepr_PerpendicularTo.hxx", bycopy.} = object of StepReprDerivedShapeAspect


proc constructStepReprPerpendicularTo*(): StepReprPerpendicularTo {.constructor,
    importcpp: "StepRepr_PerpendicularTo(@)",
    header: "StepRepr_PerpendicularTo.hxx".}
type
  StepReprPerpendicularTobaseType* = StepReprDerivedShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_PerpendicularTo::get_type_name(@)",
                            header: "StepRepr_PerpendicularTo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_PerpendicularTo::get_type_descriptor(@)",
    header: "StepRepr_PerpendicularTo.hxx".}
proc dynamicType*(this: StepReprPerpendicularTo): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_PerpendicularTo.hxx".}

























