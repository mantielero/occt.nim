##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_StyledItem"
discard "forward decl of StepVisual_PresentationLayerAssignment"
discard "forward decl of StepVisual_PresentationRepresentation"
type
  StepVisual_InvisibleItem* {.importcpp: "StepVisual_InvisibleItem",
                             header: "StepVisual_InvisibleItem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## InvisibleItem
                                                                                                       ## SelectType


proc constructStepVisual_InvisibleItem*(): StepVisual_InvisibleItem {.constructor,
    importcpp: "StepVisual_InvisibleItem(@)",
    header: "StepVisual_InvisibleItem.hxx".}
proc CaseNum*(this: StepVisual_InvisibleItem; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_InvisibleItem.hxx".}
proc StyledItem*(this: StepVisual_InvisibleItem): handle[StepVisual_StyledItem] {.
    noSideEffect, importcpp: "StyledItem", header: "StepVisual_InvisibleItem.hxx".}
proc PresentationLayerAssignment*(this: StepVisual_InvisibleItem): handle[
    StepVisual_PresentationLayerAssignment] {.noSideEffect,
    importcpp: "PresentationLayerAssignment",
    header: "StepVisual_InvisibleItem.hxx".}
proc PresentationRepresentation*(this: StepVisual_InvisibleItem): handle[
    StepVisual_PresentationRepresentation] {.noSideEffect,
    importcpp: "PresentationRepresentation",
    header: "StepVisual_InvisibleItem.hxx".}