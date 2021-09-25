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

discard "forward decl of StepVisual_StyleContextSelect"
discard "forward decl of StepVisual_PresentationStyleByContext"
discard "forward decl of StepVisual_PresentationStyleByContext"
type
  HandleStepVisualPresentationStyleByContext* = Handle[
      StepVisualPresentationStyleByContext]
  StepVisualPresentationStyleByContext* {.
      importcpp: "StepVisual_PresentationStyleByContext",
      header: "StepVisual_PresentationStyleByContext.hxx", bycopy.} = object of StepVisualPresentationStyleAssignment ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## a
                                                                                                               ## PresentationStyleByContext


proc constructStepVisualPresentationStyleByContext*(): StepVisualPresentationStyleByContext {.
    constructor, importcpp: "StepVisual_PresentationStyleByContext(@)",
    header: "StepVisual_PresentationStyleByContext.hxx".}
proc init*(this: var StepVisualPresentationStyleByContext;
          aStyles: Handle[StepVisualHArray1OfPresentationStyleSelect];
          aStyleContext: StepVisualStyleContextSelect) {.importcpp: "Init",
    header: "StepVisual_PresentationStyleByContext.hxx".}
proc setStyleContext*(this: var StepVisualPresentationStyleByContext;
                     aStyleContext: StepVisualStyleContextSelect) {.
    importcpp: "SetStyleContext",
    header: "StepVisual_PresentationStyleByContext.hxx".}
proc styleContext*(this: StepVisualPresentationStyleByContext): StepVisualStyleContextSelect {.
    noSideEffect, importcpp: "StyleContext",
    header: "StepVisual_PresentationStyleByContext.hxx".}
type
  StepVisualPresentationStyleByContextbaseType* = StepVisualPresentationStyleAssignment

proc getTypeName*(): cstring {.importcpp: "StepVisual_PresentationStyleByContext::get_type_name(@)",
                            header: "StepVisual_PresentationStyleByContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_PresentationStyleByContext::get_type_descriptor(@)",
    header: "StepVisual_PresentationStyleByContext.hxx".}
proc dynamicType*(this: StepVisualPresentationStyleByContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PresentationStyleByContext.hxx".}
