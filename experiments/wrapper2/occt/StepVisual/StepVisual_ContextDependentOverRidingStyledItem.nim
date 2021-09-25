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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepVisual_StyledItem"
discard "forward decl of StepVisual_StyleContextSelect"
discard "forward decl of StepVisual_ContextDependentOverRidingStyledItem"
discard "forward decl of StepVisual_ContextDependentOverRidingStyledItem"
type
  HandleStepVisualContextDependentOverRidingStyledItem* = Handle[
      StepVisualContextDependentOverRidingStyledItem]
  StepVisualContextDependentOverRidingStyledItem* {.
      importcpp: "StepVisual_ContextDependentOverRidingStyledItem",
      header: "StepVisual_ContextDependentOverRidingStyledItem.hxx", bycopy.} = object of StepVisualOverRidingStyledItem ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## ContextDependentOverRidingStyledItem


proc constructStepVisualContextDependentOverRidingStyledItem*(): StepVisualContextDependentOverRidingStyledItem {.
    constructor, importcpp: "StepVisual_ContextDependentOverRidingStyledItem(@)",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc init*(this: var StepVisualContextDependentOverRidingStyledItem;
          aName: Handle[TCollectionHAsciiString];
          aStyles: Handle[StepVisualHArray1OfPresentationStyleAssignment];
          aItem: Handle[StandardTransient];
          aOverRiddenStyle: Handle[StepVisualStyledItem];
          aStyleContext: Handle[StepVisualHArray1OfStyleContextSelect]) {.
    importcpp: "Init",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc setStyleContext*(this: var StepVisualContextDependentOverRidingStyledItem;
    aStyleContext: Handle[StepVisualHArray1OfStyleContextSelect]) {.
    importcpp: "SetStyleContext",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc styleContext*(this: StepVisualContextDependentOverRidingStyledItem): Handle[
    StepVisualHArray1OfStyleContextSelect] {.noSideEffect,
    importcpp: "StyleContext",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc styleContextValue*(this: StepVisualContextDependentOverRidingStyledItem;
                       num: int): StepVisualStyleContextSelect {.noSideEffect,
    importcpp: "StyleContextValue",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc nbStyleContext*(this: StepVisualContextDependentOverRidingStyledItem): int {.
    noSideEffect, importcpp: "NbStyleContext",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
type
  StepVisualContextDependentOverRidingStyledItembaseType* = StepVisualOverRidingStyledItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_ContextDependentOverRidingStyledItem::get_type_name(@)", header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_ContextDependentOverRidingStyledItem::get_type_descriptor(@)",
    header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
proc dynamicType*(this: StepVisualContextDependentOverRidingStyledItem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_ContextDependentOverRidingStyledItem.hxx".}
