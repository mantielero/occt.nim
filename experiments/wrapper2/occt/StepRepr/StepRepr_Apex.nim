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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_DerivedShapeAspect

discard "forward decl of StepRepr_Apex"
discard "forward decl of StepRepr_Apex"
type
  Handle_StepRepr_Apex* = handle[StepRepr_Apex]

## ! Added for Dimensional Tolerances

type
  StepRepr_Apex* {.importcpp: "StepRepr_Apex", header: "StepRepr_Apex.hxx", bycopy.} = object of StepRepr_DerivedShapeAspect


proc constructStepRepr_Apex*(): StepRepr_Apex {.constructor,
    importcpp: "StepRepr_Apex(@)", header: "StepRepr_Apex.hxx".}
type
  StepRepr_Apexbase_type* = StepRepr_DerivedShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepRepr_Apex::get_type_name(@)",
                              header: "StepRepr_Apex.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_Apex::get_type_descriptor(@)",
    header: "StepRepr_Apex.hxx".}
proc DynamicType*(this: StepRepr_Apex): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepRepr_Apex.hxx".}