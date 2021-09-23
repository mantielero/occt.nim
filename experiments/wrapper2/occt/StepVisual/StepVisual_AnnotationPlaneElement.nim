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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_DraughtingCallout"
discard "forward decl of StepVisual_StyledItem"
type
  StepVisual_AnnotationPlaneElement* {.importcpp: "StepVisual_AnnotationPlaneElement", header: "StepVisual_AnnotationPlaneElement.hxx",
                                      bycopy.} = object of StepData_SelectType ## !
                                                                          ## Returns a
                                                                          ## AnnotationPlaneElement select type


proc constructStepVisual_AnnotationPlaneElement*(): StepVisual_AnnotationPlaneElement {.
    constructor, importcpp: "StepVisual_AnnotationPlaneElement(@)",
    header: "StepVisual_AnnotationPlaneElement.hxx".}
proc CaseNum*(this: StepVisual_AnnotationPlaneElement;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepVisual_AnnotationPlaneElement.hxx".}
proc DraughtingCallout*(this: StepVisual_AnnotationPlaneElement): handle[
    StepVisual_DraughtingCallout] {.noSideEffect, importcpp: "DraughtingCallout", header: "StepVisual_AnnotationPlaneElement.hxx".}
proc StyledItem*(this: StepVisual_AnnotationPlaneElement): handle[
    StepVisual_StyledItem] {.noSideEffect, importcpp: "StyledItem",
                            header: "StepVisual_AnnotationPlaneElement.hxx".}