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

discard "forward decl of StepVisual_StyledItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepVisual_OverRidingStyledItem"
discard "forward decl of StepVisual_OverRidingStyledItem"
type
  HandleC1C1* = Handle[StepVisualOverRidingStyledItem]
  StepVisualOverRidingStyledItem* {.importcpp: "StepVisual_OverRidingStyledItem", header: "StepVisual_OverRidingStyledItem.hxx",
                                   bycopy.} = object of StepVisualStyledItem ## ! Returns a
                                                                        ## OverRidingStyledItem


proc constructStepVisualOverRidingStyledItem*(): StepVisualOverRidingStyledItem {.
    constructor, importcpp: "StepVisual_OverRidingStyledItem(@)",
    header: "StepVisual_OverRidingStyledItem.hxx".}
proc init*(this: var StepVisualOverRidingStyledItem;
          aName: Handle[TCollectionHAsciiString];
          aStyles: Handle[StepVisualHArray1OfPresentationStyleAssignment];
          aItem: Handle[StandardTransient];
          aOverRiddenStyle: Handle[StepVisualStyledItem]) {.importcpp: "Init",
    header: "StepVisual_OverRidingStyledItem.hxx".}
proc setOverRiddenStyle*(this: var StepVisualOverRidingStyledItem;
                        aOverRiddenStyle: Handle[StepVisualStyledItem]) {.
    importcpp: "SetOverRiddenStyle", header: "StepVisual_OverRidingStyledItem.hxx".}
proc overRiddenStyle*(this: StepVisualOverRidingStyledItem): Handle[
    StepVisualStyledItem] {.noSideEffect, importcpp: "OverRiddenStyle",
                           header: "StepVisual_OverRidingStyledItem.hxx".}
type
  StepVisualOverRidingStyledItembaseType* = StepVisualStyledItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_OverRidingStyledItem::get_type_name(@)",
                            header: "StepVisual_OverRidingStyledItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_OverRidingStyledItem::get_type_descriptor(@)",
    header: "StepVisual_OverRidingStyledItem.hxx".}
proc dynamicType*(this: StepVisualOverRidingStyledItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_OverRidingStyledItem.hxx".}