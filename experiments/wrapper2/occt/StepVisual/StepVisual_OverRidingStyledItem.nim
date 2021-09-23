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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_StyledItem,
  StepVisual_HArray1OfPresentationStyleAssignment

discard "forward decl of StepVisual_StyledItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepVisual_OverRidingStyledItem"
discard "forward decl of StepVisual_OverRidingStyledItem"
type
  Handle_StepVisual_OverRidingStyledItem* = handle[StepVisual_OverRidingStyledItem]
  StepVisual_OverRidingStyledItem* {.importcpp: "StepVisual_OverRidingStyledItem", header: "StepVisual_OverRidingStyledItem.hxx",
                                    bycopy.} = object of StepVisual_StyledItem ## !
                                                                          ## Returns a
                                                                          ## OverRidingStyledItem


proc constructStepVisual_OverRidingStyledItem*(): StepVisual_OverRidingStyledItem {.
    constructor, importcpp: "StepVisual_OverRidingStyledItem(@)",
    header: "StepVisual_OverRidingStyledItem.hxx".}
proc Init*(this: var StepVisual_OverRidingStyledItem;
          aName: handle[TCollection_HAsciiString];
          aStyles: handle[StepVisual_HArray1OfPresentationStyleAssignment];
          aItem: handle[Standard_Transient];
          aOverRiddenStyle: handle[StepVisual_StyledItem]) {.importcpp: "Init",
    header: "StepVisual_OverRidingStyledItem.hxx".}
proc SetOverRiddenStyle*(this: var StepVisual_OverRidingStyledItem;
                        aOverRiddenStyle: handle[StepVisual_StyledItem]) {.
    importcpp: "SetOverRiddenStyle", header: "StepVisual_OverRidingStyledItem.hxx".}
proc OverRiddenStyle*(this: StepVisual_OverRidingStyledItem): handle[
    StepVisual_StyledItem] {.noSideEffect, importcpp: "OverRiddenStyle",
                            header: "StepVisual_OverRidingStyledItem.hxx".}
type
  StepVisual_OverRidingStyledItembase_type* = StepVisual_StyledItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_OverRidingStyledItem::get_type_name(@)",
                              header: "StepVisual_OverRidingStyledItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_OverRidingStyledItem::get_type_descriptor(@)",
    header: "StepVisual_OverRidingStyledItem.hxx".}
proc DynamicType*(this: StepVisual_OverRidingStyledItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_OverRidingStyledItem.hxx".}