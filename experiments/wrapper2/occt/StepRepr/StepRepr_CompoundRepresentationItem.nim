##  Created on: 2001-04-24
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  StepRepr_HArray1OfRepresentationItem, StepRepr_RepresentationItem,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_CompoundRepresentationItem"
discard "forward decl of StepRepr_CompoundRepresentationItem"
type
  Handle_StepRepr_CompoundRepresentationItem* = handle[
      StepRepr_CompoundRepresentationItem]

## ! Added for Dimensional Tolerances

type
  StepRepr_CompoundRepresentationItem* {.importcpp: "StepRepr_CompoundRepresentationItem", header: "StepRepr_CompoundRepresentationItem.hxx",
                                        bycopy.} = object of StepRepr_RepresentationItem


proc constructStepRepr_CompoundRepresentationItem*(): StepRepr_CompoundRepresentationItem {.
    constructor, importcpp: "StepRepr_CompoundRepresentationItem(@)",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
proc Init*(this: var StepRepr_CompoundRepresentationItem;
          aName: handle[TCollection_HAsciiString];
          item_element: handle[StepRepr_HArray1OfRepresentationItem]) {.
    importcpp: "Init", header: "StepRepr_CompoundRepresentationItem.hxx".}
proc ItemElement*(this: StepRepr_CompoundRepresentationItem): handle[
    StepRepr_HArray1OfRepresentationItem] {.noSideEffect,
    importcpp: "ItemElement", header: "StepRepr_CompoundRepresentationItem.hxx".}
proc NbItemElement*(this: StepRepr_CompoundRepresentationItem): Standard_Integer {.
    noSideEffect, importcpp: "NbItemElement",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
proc SetItemElement*(this: var StepRepr_CompoundRepresentationItem;
                    item_element: handle[StepRepr_HArray1OfRepresentationItem]) {.
    importcpp: "SetItemElement", header: "StepRepr_CompoundRepresentationItem.hxx".}
proc ItemElementValue*(this: StepRepr_CompoundRepresentationItem;
                      num: Standard_Integer): handle[StepRepr_RepresentationItem] {.
    noSideEffect, importcpp: "ItemElementValue",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
proc SetItemElementValue*(this: var StepRepr_CompoundRepresentationItem;
                         num: Standard_Integer;
                         anelement: handle[StepRepr_RepresentationItem]) {.
    importcpp: "SetItemElementValue",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
type
  StepRepr_CompoundRepresentationItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepRepr_CompoundRepresentationItem::get_type_name(@)",
                              header: "StepRepr_CompoundRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_CompoundRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
proc DynamicType*(this: StepRepr_CompoundRepresentationItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_CompoundRepresentationItem.hxx".}