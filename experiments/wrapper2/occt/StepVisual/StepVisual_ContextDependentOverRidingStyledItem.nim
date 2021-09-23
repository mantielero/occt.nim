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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepVisual_HArray1OfStyleContextSelect, StepVisual_OverRidingStyledItem,
  StepVisual_HArray1OfPresentationStyleAssignment, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepVisual_StyledItem"
discard "forward decl of StepVisual_StyleContextSelect"
discard "forward decl of StepVisual_ContextDependentOverRidingStyledItem"
discard "forward decl of StepVisual_ContextDependentOverRidingStyledItem"
type
  Handle_StepVisual_ContextDependentOverRidingStyledItem* = handle[
      StepVisual_ContextDependentOverRidingStyledItem]
  StepVisual_ContextDependentOverRidingStyledItem* {.
      importcpp: "StepVisual_ContextDependentOverRidingStyledItem",
      header: "StepVisual_ContextDependentOverRidingStyledItem.hxx", bycopy.} = object of StepVisual_OverRidingStyledItem ##
                                                                                                                   ## !
                                                                                                                   ## Returns
                                                                                                                   ## a
                                                                                                                   ## ContextDependentOverRidingStyledItem


proc constructStepVisual_ContextDependentOverRidingStyledItem*(): StepVisual_ContextDependentOverRidingStyledItem {.
    constructor, importcpp: "StepVisual_ContextDependentOverRidingStyledItem(@)",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc Init*(this: var StepVisual_ContextDependentOverRidingStyledItem;
          aName: handle[TCollection_HAsciiString];
          aStyles: handle[StepVisual_HArray1OfPresentationStyleAssignment];
          aItem: handle[Standard_Transient];
          aOverRiddenStyle: handle[StepVisual_StyledItem];
          aStyleContext: handle[StepVisual_HArray1OfStyleContextSelect]) {.
    importcpp: "Init",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc SetStyleContext*(this: var StepVisual_ContextDependentOverRidingStyledItem;
    aStyleContext: handle[StepVisual_HArray1OfStyleContextSelect]) {.
    importcpp: "SetStyleContext",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc StyleContext*(this: StepVisual_ContextDependentOverRidingStyledItem): handle[
    StepVisual_HArray1OfStyleContextSelect] {.noSideEffect,
    importcpp: "StyleContext",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc StyleContextValue*(this: StepVisual_ContextDependentOverRidingStyledItem;
                       num: Standard_Integer): StepVisual_StyleContextSelect {.
    noSideEffect, importcpp: "StyleContextValue",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc NbStyleContext*(this: StepVisual_ContextDependentOverRidingStyledItem): Standard_Integer {.
    noSideEffect, importcpp: "NbStyleContext",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
type
  StepVisual_ContextDependentOverRidingStyledItembase_type* = StepVisual_OverRidingStyledItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_ContextDependentOverRidingStyledItem::get_type_name(@)", header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_ContextDependentOverRidingStyledItem::get_type_descriptor(@)",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc DynamicType*(this: StepVisual_ContextDependentOverRidingStyledItem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}