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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_SourceItem,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_SourceItem"
discard "forward decl of StepBasic_ExternallyDefinedItem"
discard "forward decl of StepBasic_ExternallyDefinedItem"
type
  Handle_StepBasic_ExternallyDefinedItem* = handle[StepBasic_ExternallyDefinedItem]

## ! Representation of STEP entity ExternallyDefinedItem

type
  StepBasic_ExternallyDefinedItem* {.importcpp: "StepBasic_ExternallyDefinedItem", header: "StepBasic_ExternallyDefinedItem.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Empty
                                                                       ## constructor


proc constructStepBasic_ExternallyDefinedItem*(): StepBasic_ExternallyDefinedItem {.
    constructor, importcpp: "StepBasic_ExternallyDefinedItem(@)",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc Init*(this: var StepBasic_ExternallyDefinedItem; aItemId: StepBasic_SourceItem;
          aSource: handle[StepBasic_ExternalSource]) {.importcpp: "Init",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc ItemId*(this: StepBasic_ExternallyDefinedItem): StepBasic_SourceItem {.
    noSideEffect, importcpp: "ItemId",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc SetItemId*(this: var StepBasic_ExternallyDefinedItem;
               ItemId: StepBasic_SourceItem) {.importcpp: "SetItemId",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc Source*(this: StepBasic_ExternallyDefinedItem): handle[
    StepBasic_ExternalSource] {.noSideEffect, importcpp: "Source",
                               header: "StepBasic_ExternallyDefinedItem.hxx".}
proc SetSource*(this: var StepBasic_ExternallyDefinedItem;
               Source: handle[StepBasic_ExternalSource]) {.importcpp: "SetSource",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
type
  StepBasic_ExternallyDefinedItembase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ExternallyDefinedItem::get_type_name(@)",
                              header: "StepBasic_ExternallyDefinedItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ExternallyDefinedItem::get_type_descriptor(@)",
    header: "StepBasic_ExternallyDefinedItem.hxx".}
proc DynamicType*(this: StepBasic_ExternallyDefinedItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ExternallyDefinedItem.hxx".}