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

discard "forward decl of StepRepr_PromissoryUsageOccurrence"
discard "forward decl of StepRepr_PromissoryUsageOccurrence"
type
  HandleC1C1* = Handle[StepReprPromissoryUsageOccurrence]
  StepReprPromissoryUsageOccurrence* {.importcpp: "StepRepr_PromissoryUsageOccurrence", header: "StepRepr_PromissoryUsageOccurrence.hxx",
                                      bycopy.} = object of StepReprAssemblyComponentUsage


proc constructStepReprPromissoryUsageOccurrence*(): StepReprPromissoryUsageOccurrence {.
    constructor, importcpp: "StepRepr_PromissoryUsageOccurrence(@)",
    header: "StepRepr_PromissoryUsageOccurrence.hxx".}
type
  StepReprPromissoryUsageOccurrencebaseType* = StepReprAssemblyComponentUsage

proc getTypeName*(): cstring {.importcpp: "StepRepr_PromissoryUsageOccurrence::get_type_name(@)",
                            header: "StepRepr_PromissoryUsageOccurrence.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_PromissoryUsageOccurrence::get_type_descriptor(@)",
    header: "StepRepr_PromissoryUsageOccurrence.hxx".}
proc dynamicType*(this: StepReprPromissoryUsageOccurrence): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_PromissoryUsageOccurrence.hxx".}