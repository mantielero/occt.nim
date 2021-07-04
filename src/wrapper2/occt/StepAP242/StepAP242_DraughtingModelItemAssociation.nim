##  Created on: 2015-10-29
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP242_ItemIdentifiedRepresentationUsage

discard "forward decl of StepAP242_DraughtingModelItemAssociation"
discard "forward decl of StepAP242_DraughtingModelItemAssociation"
type
  Handle_StepAP242_DraughtingModelItemAssociation* = handle[
      StepAP242_DraughtingModelItemAssociation]

## ! Added for Dimensional Tolerances

type
  StepAP242_DraughtingModelItemAssociation* {.
      importcpp: "StepAP242_DraughtingModelItemAssociation",
      header: "StepAP242_DraughtingModelItemAssociation.hxx", bycopy.} = object of StepAP242_ItemIdentifiedRepresentationUsage


proc constructStepAP242_DraughtingModelItemAssociation*(): StepAP242_DraughtingModelItemAssociation {.
    constructor, importcpp: "StepAP242_DraughtingModelItemAssociation(@)",
    header: "StepAP242_DraughtingModelItemAssociation.hxx".}
type
  StepAP242_DraughtingModelItemAssociationbase_type* = StepAP242_ItemIdentifiedRepresentationUsage

proc get_type_name*(): cstring {.importcpp: "StepAP242_DraughtingModelItemAssociation::get_type_name(@)", header: "StepAP242_DraughtingModelItemAssociation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP242_DraughtingModelItemAssociation::get_type_descriptor(@)",
    header: "StepAP242_DraughtingModelItemAssociation.hxx".}
proc DynamicType*(this: StepAP242_DraughtingModelItemAssociation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP242_DraughtingModelItemAssociation.hxx".}