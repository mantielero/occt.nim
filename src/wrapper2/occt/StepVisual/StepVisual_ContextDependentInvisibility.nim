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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_InvisibilityContext,
  StepVisual_Invisibility, StepVisual_HArray1OfInvisibleItem

discard "forward decl of StepVisual_InvisibilityContext"
discard "forward decl of StepVisual_ContextDependentInvisibility"
discard "forward decl of StepVisual_ContextDependentInvisibility"
type
  Handle_StepVisual_ContextDependentInvisibility* = handle[
      StepVisual_ContextDependentInvisibility]
  StepVisual_ContextDependentInvisibility* {.
      importcpp: "StepVisual_ContextDependentInvisibility",
      header: "StepVisual_ContextDependentInvisibility.hxx", bycopy.} = object of StepVisual_Invisibility ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## ContextDependentInvisibility


proc constructStepVisual_ContextDependentInvisibility*(): StepVisual_ContextDependentInvisibility {.
    constructor, importcpp: "StepVisual_ContextDependentInvisibility(@)",
    header: "StepVisual_ContextDependentInvisibility.hxx".}
proc Init*(this: var StepVisual_ContextDependentInvisibility;
          aInvisibleItems: handle[StepVisual_HArray1OfInvisibleItem];
          aPresentationContext: StepVisual_InvisibilityContext) {.
    importcpp: "Init", header: "StepVisual_ContextDependentInvisibility.hxx".}
proc SetPresentationContext*(this: var StepVisual_ContextDependentInvisibility;
    aPresentationContext: StepVisual_InvisibilityContext) {.
    importcpp: "SetPresentationContext",
    header: "StepVisual_ContextDependentInvisibility.hxx".}
proc PresentationContext*(this: StepVisual_ContextDependentInvisibility): StepVisual_InvisibilityContext {.
    noSideEffect, importcpp: "PresentationContext",
    header: "StepVisual_ContextDependentInvisibility.hxx".}
type
  StepVisual_ContextDependentInvisibilitybase_type* = StepVisual_Invisibility

proc get_type_name*(): cstring {.importcpp: "StepVisual_ContextDependentInvisibility::get_type_name(@)", header: "StepVisual_ContextDependentInvisibility.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_ContextDependentInvisibility::get_type_descriptor(@)",
    header: "StepVisual_ContextDependentInvisibility.hxx".}
proc DynamicType*(this: StepVisual_ContextDependentInvisibility): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_ContextDependentInvisibility.hxx".}