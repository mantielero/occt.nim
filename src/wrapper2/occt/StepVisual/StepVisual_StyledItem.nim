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
  StepVisual_HArray1OfPresentationStyleAssignment,
  ../StepRepr/StepRepr_RepresentationItem, StepVisual_StyledItemTarget,
  ../Standard/Standard_Integer

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_PresentationStyleAssignment"
discard "forward decl of StepVisual_StyledItem"
discard "forward decl of StepVisual_StyledItem"
type
  Handle_StepVisual_StyledItem* = handle[StepVisual_StyledItem]
  StepVisual_StyledItem* {.importcpp: "StepVisual_StyledItem",
                          header: "StepVisual_StyledItem.hxx", bycopy.} = object of StepRepr_RepresentationItem ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## StyledItem
    ## ! May be StepRepr_RepresentationItem for AP214(203) and StepVisual_StyledItemTarget for AP242
    ## ! This is downcasted from myItem


proc constructStepVisual_StyledItem*(): StepVisual_StyledItem {.constructor,
    importcpp: "StepVisual_StyledItem(@)", header: "StepVisual_StyledItem.hxx".}
proc Init*(this: var StepVisual_StyledItem; aName: handle[TCollection_HAsciiString];
          aStyles: handle[StepVisual_HArray1OfPresentationStyleAssignment];
          aItem: handle[Standard_Transient]) {.importcpp: "Init",
    header: "StepVisual_StyledItem.hxx".}
proc SetStyles*(this: var StepVisual_StyledItem;
               aStyles: handle[StepVisual_HArray1OfPresentationStyleAssignment]) {.
    importcpp: "SetStyles", header: "StepVisual_StyledItem.hxx".}
proc Styles*(this: StepVisual_StyledItem): handle[
    StepVisual_HArray1OfPresentationStyleAssignment] {.noSideEffect,
    importcpp: "Styles", header: "StepVisual_StyledItem.hxx".}
proc StylesValue*(this: StepVisual_StyledItem; num: Standard_Integer): handle[
    StepVisual_PresentationStyleAssignment] {.noSideEffect,
    importcpp: "StylesValue", header: "StepVisual_StyledItem.hxx".}
proc NbStyles*(this: StepVisual_StyledItem): Standard_Integer {.noSideEffect,
    importcpp: "NbStyles", header: "StepVisual_StyledItem.hxx".}
proc SetItem*(this: var StepVisual_StyledItem;
             aItem: handle[StepRepr_RepresentationItem]) {.importcpp: "SetItem",
    header: "StepVisual_StyledItem.hxx".}
proc Item*(this: StepVisual_StyledItem): handle[StepRepr_RepresentationItem] {.
    noSideEffect, importcpp: "Item", header: "StepVisual_StyledItem.hxx".}
proc SetItem*(this: var StepVisual_StyledItem; aItem: StepVisual_StyledItemTarget) {.
    importcpp: "SetItem", header: "StepVisual_StyledItem.hxx".}
proc ItemAP242*(this: StepVisual_StyledItem): StepVisual_StyledItemTarget {.
    noSideEffect, importcpp: "ItemAP242", header: "StepVisual_StyledItem.hxx".}
type
  StepVisual_StyledItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_StyledItem::get_type_name(@)",
                              header: "StepVisual_StyledItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_StyledItem::get_type_descriptor(@)",
    header: "StepVisual_StyledItem.hxx".}
proc DynamicType*(this: StepVisual_StyledItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_StyledItem.hxx".}