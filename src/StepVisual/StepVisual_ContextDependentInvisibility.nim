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

discard "forward decl of StepVisual_InvisibilityContext"
discard "forward decl of StepVisual_ContextDependentInvisibility"
discard "forward decl of StepVisual_ContextDependentInvisibility"
type
  HandleC1C1* = Handle[StepVisualContextDependentInvisibility]
  StepVisualContextDependentInvisibility* {.
      importcpp: "StepVisual_ContextDependentInvisibility",
      header: "StepVisual_ContextDependentInvisibility.hxx", bycopy.} = object of StepVisualInvisibility ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## ContextDependentInvisibility


proc constructStepVisualContextDependentInvisibility*(): StepVisualContextDependentInvisibility {.
    constructor, importcpp: "StepVisual_ContextDependentInvisibility(@)",
    header: "StepVisual_ContextDependentInvisibility.hxx".}
proc init*(this: var StepVisualContextDependentInvisibility;
          aInvisibleItems: Handle[StepVisualHArray1OfInvisibleItem];
          aPresentationContext: StepVisualInvisibilityContext) {.
    importcpp: "Init", header: "StepVisual_ContextDependentInvisibility.hxx".}
proc setPresentationContext*(this: var StepVisualContextDependentInvisibility;
                            aPresentationContext: StepVisualInvisibilityContext) {.
    importcpp: "SetPresentationContext",
    header: "StepVisual_ContextDependentInvisibility.hxx".}
proc presentationContext*(this: StepVisualContextDependentInvisibility): StepVisualInvisibilityContext {.
    noSideEffect, importcpp: "PresentationContext",
    header: "StepVisual_ContextDependentInvisibility.hxx".}
type
  StepVisualContextDependentInvisibilitybaseType* = StepVisualInvisibility

proc getTypeName*(): cstring {.importcpp: "StepVisual_ContextDependentInvisibility::get_type_name(@)", header: "StepVisual_ContextDependentInvisibility.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_ContextDependentInvisibility::get_type_descriptor(@)",
    header: "StepVisual_ContextDependentInvisibility.hxx".}
proc dynamicType*(this: StepVisualContextDependentInvisibility): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_ContextDependentInvisibility.hxx".}