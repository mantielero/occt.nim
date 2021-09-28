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

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_StyledItem"
discard "forward decl of StepVisual_PresentationLayerAssignment"
discard "forward decl of StepVisual_PresentationRepresentation"
type
  StepVisualInvisibleItem* {.importcpp: "StepVisual_InvisibleItem",
                            header: "StepVisual_InvisibleItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## InvisibleItem
                                                                                                     ## SelectType


proc constructStepVisualInvisibleItem*(): StepVisualInvisibleItem {.constructor,
    importcpp: "StepVisual_InvisibleItem(@)",
    header: "StepVisual_InvisibleItem.hxx".}
proc caseNum*(this: StepVisualInvisibleItem; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_InvisibleItem.hxx".}
proc styledItem*(this: StepVisualInvisibleItem): Handle[StepVisualStyledItem] {.
    noSideEffect, importcpp: "StyledItem", header: "StepVisual_InvisibleItem.hxx".}
proc presentationLayerAssignment*(this: StepVisualInvisibleItem): Handle[
    StepVisualPresentationLayerAssignment] {.noSideEffect,
    importcpp: "PresentationLayerAssignment",
    header: "StepVisual_InvisibleItem.hxx".}
proc presentationRepresentation*(this: StepVisualInvisibleItem): Handle[
    StepVisualPresentationRepresentation] {.noSideEffect,
    importcpp: "PresentationRepresentation",
    header: "StepVisual_InvisibleItem.hxx".}

























