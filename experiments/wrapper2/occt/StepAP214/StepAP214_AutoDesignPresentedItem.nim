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

discard "forward decl of StepAP214_AutoDesignPresentedItemSelect"
discard "forward decl of StepAP214_AutoDesignPresentedItem"
discard "forward decl of StepAP214_AutoDesignPresentedItem"
type
  HandleStepAP214AutoDesignPresentedItem* = Handle[
      StepAP214AutoDesignPresentedItem]
  StepAP214AutoDesignPresentedItem* {.importcpp: "StepAP214_AutoDesignPresentedItem", header: "StepAP214_AutoDesignPresentedItem.hxx",
                                     bycopy.} = object of StepVisualPresentedItem ## !
                                                                             ## Returns a
                                                                             ## AutoDesignPresentedItem


proc constructStepAP214AutoDesignPresentedItem*(): StepAP214AutoDesignPresentedItem {.
    constructor, importcpp: "StepAP214_AutoDesignPresentedItem(@)",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc init*(this: var StepAP214AutoDesignPresentedItem;
          aItems: Handle[StepAP214HArray1OfAutoDesignPresentedItemSelect]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc setItems*(this: var StepAP214AutoDesignPresentedItem;
              aItems: Handle[StepAP214HArray1OfAutoDesignPresentedItemSelect]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc items*(this: StepAP214AutoDesignPresentedItem): Handle[
    StepAP214HArray1OfAutoDesignPresentedItemSelect] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc itemsValue*(this: StepAP214AutoDesignPresentedItem; num: int): StepAP214AutoDesignPresentedItemSelect {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc nbItems*(this: StepAP214AutoDesignPresentedItem): int {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AutoDesignPresentedItem.hxx".}
type
  StepAP214AutoDesignPresentedItembaseType* = StepVisualPresentedItem

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignPresentedItem::get_type_name(@)",
                            header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_AutoDesignPresentedItem::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}
proc dynamicType*(this: StepAP214AutoDesignPresentedItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AutoDesignPresentedItem.hxx".}
