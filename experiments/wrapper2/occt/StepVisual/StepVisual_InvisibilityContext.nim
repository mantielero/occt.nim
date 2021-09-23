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
discard "forward decl of StepVisual_DraughtingModel"
discard "forward decl of StepVisual_PresentationRepresentation"
discard "forward decl of StepVisual_PresentationSet"
type
  StepVisual_InvisibilityContext* {.importcpp: "StepVisual_InvisibilityContext", header: "StepVisual_InvisibilityContext.hxx",
                                   bycopy.} = object of StepData_SelectType ## ! Returns a
                                                                       ## InvisibilityContext
                                                                       ## SelectType


proc constructStepVisual_InvisibilityContext*(): StepVisual_InvisibilityContext {.
    constructor, importcpp: "StepVisual_InvisibilityContext(@)",
    header: "StepVisual_InvisibilityContext.hxx".}
proc CaseNum*(this: StepVisual_InvisibilityContext; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepVisual_InvisibilityContext.hxx".}
proc PresentationRepresentation*(this: StepVisual_InvisibilityContext): handle[
    StepVisual_PresentationRepresentation] {.noSideEffect,
    importcpp: "PresentationRepresentation",
    header: "StepVisual_InvisibilityContext.hxx".}
proc PresentationSet*(this: StepVisual_InvisibilityContext): handle[
    StepVisual_PresentationSet] {.noSideEffect, importcpp: "PresentationSet",
                                 header: "StepVisual_InvisibilityContext.hxx".}
proc DraughtingModel*(this: StepVisual_InvisibilityContext): handle[
    StepVisual_DraughtingModel] {.noSideEffect, importcpp: "DraughtingModel",
                                 header: "StepVisual_InvisibilityContext.hxx".}