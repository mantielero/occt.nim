##  Created on: 2000-07-03
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_AssemblyComponentUsage

discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
discard "forward decl of StepRepr_NextAssemblyUsageOccurrence"
type
  Handle_StepRepr_NextAssemblyUsageOccurrence* = handle[
      StepRepr_NextAssemblyUsageOccurrence]

## ! Representation of STEP entity NextAssemblyUsageOccurrence

type
  StepRepr_NextAssemblyUsageOccurrence* {.
      importcpp: "StepRepr_NextAssemblyUsageOccurrence",
      header: "StepRepr_NextAssemblyUsageOccurrence.hxx", bycopy.} = object of StepRepr_AssemblyComponentUsage ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepRepr_NextAssemblyUsageOccurrence*(): StepRepr_NextAssemblyUsageOccurrence {.
    constructor, importcpp: "StepRepr_NextAssemblyUsageOccurrence(@)",
    header: "StepRepr_NextAssemblyUsageOccurrence.hxx".}
type
  StepRepr_NextAssemblyUsageOccurrencebase_type* = StepRepr_AssemblyComponentUsage

proc get_type_name*(): cstring {.importcpp: "StepRepr_NextAssemblyUsageOccurrence::get_type_name(@)", header: "StepRepr_NextAssemblyUsageOccurrence.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_NextAssemblyUsageOccurrence::get_type_descriptor(@)",
    header: "StepRepr_NextAssemblyUsageOccurrence.hxx".}
proc DynamicType*(this: StepRepr_NextAssemblyUsageOccurrence): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_NextAssemblyUsageOccurrence.hxx".}