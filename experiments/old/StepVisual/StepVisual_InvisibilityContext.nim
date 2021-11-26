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
discard "forward decl of StepVisual_DraughtingModel"
discard "forward decl of StepVisual_PresentationRepresentation"
discard "forward decl of StepVisual_PresentationSet"
type
  StepVisualInvisibilityContext* {.importcpp: "StepVisual_InvisibilityContext",
                                  header: "StepVisual_InvisibilityContext.hxx",
                                  bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualInvisibilityContext; theSize: csize_t): pointer {.
    importcpp: "StepVisual_InvisibilityContext::operator new",
    header: "StepVisual_InvisibilityContext.hxx".}
proc `delete`*(this: var StepVisualInvisibilityContext; theAddress: pointer) {.
    importcpp: "StepVisual_InvisibilityContext::operator delete",
    header: "StepVisual_InvisibilityContext.hxx".}
proc `new[]`*(this: var StepVisualInvisibilityContext; theSize: csize_t): pointer {.
    importcpp: "StepVisual_InvisibilityContext::operator new[]",
    header: "StepVisual_InvisibilityContext.hxx".}
proc `delete[]`*(this: var StepVisualInvisibilityContext; theAddress: pointer) {.
    importcpp: "StepVisual_InvisibilityContext::operator delete[]",
    header: "StepVisual_InvisibilityContext.hxx".}
proc `new`*(this: var StepVisualInvisibilityContext; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepVisual_InvisibilityContext::operator new",
    header: "StepVisual_InvisibilityContext.hxx".}
proc `delete`*(this: var StepVisualInvisibilityContext; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_InvisibilityContext::operator delete",
    header: "StepVisual_InvisibilityContext.hxx".}
proc constructStepVisualInvisibilityContext*(): StepVisualInvisibilityContext {.
    constructor, importcpp: "StepVisual_InvisibilityContext(@)",
    header: "StepVisual_InvisibilityContext.hxx".}
proc caseNum*(this: StepVisualInvisibilityContext; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepVisual_InvisibilityContext.hxx".}
proc presentationRepresentation*(this: StepVisualInvisibilityContext): Handle[
    StepVisualPresentationRepresentation] {.noSideEffect,
    importcpp: "PresentationRepresentation",
    header: "StepVisual_InvisibilityContext.hxx".}
proc presentationSet*(this: StepVisualInvisibilityContext): Handle[
    StepVisualPresentationSet] {.noSideEffect, importcpp: "PresentationSet",
                                header: "StepVisual_InvisibilityContext.hxx".}
proc draughtingModel*(this: StepVisualInvisibilityContext): Handle[
    StepVisualDraughtingModel] {.noSideEffect, importcpp: "DraughtingModel",
                                header: "StepVisual_InvisibilityContext.hxx".}