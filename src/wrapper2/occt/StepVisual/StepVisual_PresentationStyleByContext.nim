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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_StyleContextSelect,
  StepVisual_PresentationStyleAssignment,
  StepVisual_HArray1OfPresentationStyleSelect

discard "forward decl of StepVisual_StyleContextSelect"
discard "forward decl of StepVisual_PresentationStyleByContext"
discard "forward decl of StepVisual_PresentationStyleByContext"
type
  Handle_StepVisual_PresentationStyleByContext* = handle[
      StepVisual_PresentationStyleByContext]
  StepVisual_PresentationStyleByContext* {.
      importcpp: "StepVisual_PresentationStyleByContext",
      header: "StepVisual_PresentationStyleByContext.hxx", bycopy.} = object of StepVisual_PresentationStyleAssignment ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## PresentationStyleByContext


proc constructStepVisual_PresentationStyleByContext*(): StepVisual_PresentationStyleByContext {.
    constructor, importcpp: "StepVisual_PresentationStyleByContext(@)",
    header: "StepVisual_PresentationStyleByContext.hxx".}
proc Init*(this: var StepVisual_PresentationStyleByContext;
          aStyles: handle[StepVisual_HArray1OfPresentationStyleSelect];
          aStyleContext: StepVisual_StyleContextSelect) {.importcpp: "Init",
    header: "StepVisual_PresentationStyleByContext.hxx".}
proc SetStyleContext*(this: var StepVisual_PresentationStyleByContext;
                     aStyleContext: StepVisual_StyleContextSelect) {.
    importcpp: "SetStyleContext",
    header: "StepVisual_PresentationStyleByContext.hxx".}
proc StyleContext*(this: StepVisual_PresentationStyleByContext): StepVisual_StyleContextSelect {.
    noSideEffect, importcpp: "StyleContext",
    header: "StepVisual_PresentationStyleByContext.hxx".}
type
  StepVisual_PresentationStyleByContextbase_type* = StepVisual_PresentationStyleAssignment

proc get_type_name*(): cstring {.importcpp: "StepVisual_PresentationStyleByContext::get_type_name(@)", header: "StepVisual_PresentationStyleByContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_PresentationStyleByContext::get_type_descriptor(@)",
    header: "StepVisual_PresentationStyleByContext.hxx".}
proc DynamicType*(this: StepVisual_PresentationStyleByContext): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_PresentationStyleByContext.hxx".}