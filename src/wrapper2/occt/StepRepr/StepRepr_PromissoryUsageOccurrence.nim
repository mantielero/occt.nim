##  Created on: 1998-06-30
##  Created by: Administrateur Atelier XSTEP
##  Copyright (c) 1998-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_AssemblyComponentUsage

discard "forward decl of StepRepr_PromissoryUsageOccurrence"
discard "forward decl of StepRepr_PromissoryUsageOccurrence"
type
  Handle_StepRepr_PromissoryUsageOccurrence* = handle[
      StepRepr_PromissoryUsageOccurrence]
  StepRepr_PromissoryUsageOccurrence* {.importcpp: "StepRepr_PromissoryUsageOccurrence", header: "StepRepr_PromissoryUsageOccurrence.hxx",
                                       bycopy.} = object of StepRepr_AssemblyComponentUsage


proc constructStepRepr_PromissoryUsageOccurrence*(): StepRepr_PromissoryUsageOccurrence {.
    constructor, importcpp: "StepRepr_PromissoryUsageOccurrence(@)",
    header: "StepRepr_PromissoryUsageOccurrence.hxx".}
type
  StepRepr_PromissoryUsageOccurrencebase_type* = StepRepr_AssemblyComponentUsage

proc get_type_name*(): cstring {.importcpp: "StepRepr_PromissoryUsageOccurrence::get_type_name(@)",
                              header: "StepRepr_PromissoryUsageOccurrence.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_PromissoryUsageOccurrence::get_type_descriptor(@)",
    header: "StepRepr_PromissoryUsageOccurrence.hxx".}
proc DynamicType*(this: StepRepr_PromissoryUsageOccurrence): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_PromissoryUsageOccurrence.hxx".}