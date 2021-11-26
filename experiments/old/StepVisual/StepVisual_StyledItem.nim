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

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_PresentationStyleAssignment"
discard "forward decl of StepVisual_StyledItem"
discard "forward decl of StepVisual_StyledItem"
type
  HandleC1C1* = Handle[StepVisualStyledItem]
  StepVisualStyledItem* {.importcpp: "StepVisual_StyledItem",
                         header: "StepVisual_StyledItem.hxx", bycopy.} = object of StepReprRepresentationItem ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## StyledItem
    ## ! May be StepRepr_RepresentationItem for AP214(203) and StepVisual_StyledItemTarget for AP242
    ## ! This is downcasted from myItem


proc constructStepVisualStyledItem*(): StepVisualStyledItem {.constructor,
    importcpp: "StepVisual_StyledItem(@)", header: "StepVisual_StyledItem.hxx".}
proc init*(this: var StepVisualStyledItem; aName: Handle[TCollectionHAsciiString];
          aStyles: Handle[StepVisualHArray1OfPresentationStyleAssignment];
          aItem: Handle[StandardTransient]) {.importcpp: "Init",
    header: "StepVisual_StyledItem.hxx".}
proc setStyles*(this: var StepVisualStyledItem;
               aStyles: Handle[StepVisualHArray1OfPresentationStyleAssignment]) {.
    importcpp: "SetStyles", header: "StepVisual_StyledItem.hxx".}
proc styles*(this: StepVisualStyledItem): Handle[
    StepVisualHArray1OfPresentationStyleAssignment] {.noSideEffect,
    importcpp: "Styles", header: "StepVisual_StyledItem.hxx".}
proc stylesValue*(this: StepVisualStyledItem; num: int): Handle[
    StepVisualPresentationStyleAssignment] {.noSideEffect,
    importcpp: "StylesValue", header: "StepVisual_StyledItem.hxx".}
proc nbStyles*(this: StepVisualStyledItem): int {.noSideEffect,
    importcpp: "NbStyles", header: "StepVisual_StyledItem.hxx".}
proc setItem*(this: var StepVisualStyledItem;
             aItem: Handle[StepReprRepresentationItem]) {.importcpp: "SetItem",
    header: "StepVisual_StyledItem.hxx".}
proc item*(this: StepVisualStyledItem): Handle[StepReprRepresentationItem] {.
    noSideEffect, importcpp: "Item", header: "StepVisual_StyledItem.hxx".}
proc setItem*(this: var StepVisualStyledItem; aItem: StepVisualStyledItemTarget) {.
    importcpp: "SetItem", header: "StepVisual_StyledItem.hxx".}
proc itemAP242*(this: StepVisualStyledItem): StepVisualStyledItemTarget {.
    noSideEffect, importcpp: "ItemAP242", header: "StepVisual_StyledItem.hxx".}
type
  StepVisualStyledItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_StyledItem::get_type_name(@)",
                            header: "StepVisual_StyledItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_StyledItem::get_type_descriptor(@)",
    header: "StepVisual_StyledItem.hxx".}
proc dynamicType*(this: StepVisualStyledItem): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_StyledItem.hxx".}