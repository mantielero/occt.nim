##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_SourceItem"
discard "forward decl of StepBasic_ExternallyDefinedItem"
discard "forward decl of StepBasic_ExternallyDefinedItem"
type
  HandleC1C1* = Handle[StepBasicExternallyDefinedItem]

## ! Representation of STEP entity ExternallyDefinedItem

type
  StepBasicExternallyDefinedItem* {.importcpp: "StepBasic_ExternallyDefinedItem", header: "StepBasic_ExternallyDefinedItem.hxx",
                                   bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepBasicExternallyDefinedItem*(): StepBasicExternallyDefinedItem {.
    constructor, importcpp: "StepBasic_ExternallyDefinedItem(@)",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc init*(this: var StepBasicExternallyDefinedItem; aItemId: StepBasicSourceItem;
          aSource: Handle[StepBasicExternalSource]) {.importcpp: "Init",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc itemId*(this: StepBasicExternallyDefinedItem): StepBasicSourceItem {.
    noSideEffect, importcpp: "ItemId",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc setItemId*(this: var StepBasicExternallyDefinedItem;
               itemId: StepBasicSourceItem) {.importcpp: "SetItemId",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc source*(this: StepBasicExternallyDefinedItem): Handle[StepBasicExternalSource] {.
    noSideEffect, importcpp: "Source",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc setSource*(this: var StepBasicExternallyDefinedItem;
               source: Handle[StepBasicExternalSource]) {.importcpp: "SetSource",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
type
  StepBasicExternallyDefinedItembaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ExternallyDefinedItem::get_type_name(@)",
                            header: "StepBasic_ExternallyDefinedItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ExternallyDefinedItem::get_type_descriptor(@)",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc dynamicType*(this: StepBasicExternallyDefinedItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ExternallyDefinedItem.hxx".}

























