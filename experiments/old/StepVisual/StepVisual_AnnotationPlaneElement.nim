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

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_DraughtingCallout"
discard "forward decl of StepVisual_StyledItem"
type
  StepVisualAnnotationPlaneElement* {.importcpp: "StepVisual_AnnotationPlaneElement", header: "StepVisual_AnnotationPlaneElement.hxx",
                                     bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualAnnotationPlaneElement; theSize: csize_t): pointer {.
    importcpp: "StepVisual_AnnotationPlaneElement::operator new",
    header: "StepVisual_AnnotationPlaneElement.hxx".}
proc `delete`*(this: var StepVisualAnnotationPlaneElement; theAddress: pointer) {.
    importcpp: "StepVisual_AnnotationPlaneElement::operator delete",
    header: "StepVisual_AnnotationPlaneElement.hxx".}
proc `new[]`*(this: var StepVisualAnnotationPlaneElement; theSize: csize_t): pointer {.
    importcpp: "StepVisual_AnnotationPlaneElement::operator new[]",
    header: "StepVisual_AnnotationPlaneElement.hxx".}
proc `delete[]`*(this: var StepVisualAnnotationPlaneElement; theAddress: pointer) {.
    importcpp: "StepVisual_AnnotationPlaneElement::operator delete[]",
    header: "StepVisual_AnnotationPlaneElement.hxx".}
proc `new`*(this: var StepVisualAnnotationPlaneElement; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepVisual_AnnotationPlaneElement::operator new", header: "StepVisual_AnnotationPlaneElement.hxx".}
proc `delete`*(this: var StepVisualAnnotationPlaneElement; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_AnnotationPlaneElement::operator delete",
    header: "StepVisual_AnnotationPlaneElement.hxx".}
proc constructStepVisualAnnotationPlaneElement*(): StepVisualAnnotationPlaneElement {.
    constructor, importcpp: "StepVisual_AnnotationPlaneElement(@)",
    header: "StepVisual_AnnotationPlaneElement.hxx".}
proc caseNum*(this: StepVisualAnnotationPlaneElement;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepVisual_AnnotationPlaneElement.hxx".}
proc draughtingCallout*(this: StepVisualAnnotationPlaneElement): Handle[
    StepVisualDraughtingCallout] {.noSideEffect, importcpp: "DraughtingCallout", header: "StepVisual_AnnotationPlaneElement.hxx".}
proc styledItem*(this: StepVisualAnnotationPlaneElement): Handle[
    StepVisualStyledItem] {.noSideEffect, importcpp: "StyledItem",
                           header: "StepVisual_AnnotationPlaneElement.hxx".}