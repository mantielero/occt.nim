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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_CompoundRepresentationItem"
discard "forward decl of StepRepr_CompoundRepresentationItem"
type
  HandleStepReprCompoundRepresentationItem* = Handle[
      StepReprCompoundRepresentationItem]

## ! Added for Dimensional Tolerances

type
  StepReprCompoundRepresentationItem* {.importcpp: "StepRepr_CompoundRepresentationItem", header: "StepRepr_CompoundRepresentationItem.hxx",
                                       bycopy.} = object of StepReprRepresentationItem


proc constructStepReprCompoundRepresentationItem*(): StepReprCompoundRepresentationItem {.
    constructor, importcpp: "StepRepr_CompoundRepresentationItem(@)",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
proc init*(this: var StepReprCompoundRepresentationItem;
          aName: Handle[TCollectionHAsciiString];
          itemElement: Handle[StepReprHArray1OfRepresentationItem]) {.
    importcpp: "Init", header: "StepRepr_CompoundRepresentationItem.hxx".}
proc itemElement*(this: StepReprCompoundRepresentationItem): Handle[
    StepReprHArray1OfRepresentationItem] {.noSideEffect, importcpp: "ItemElement",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
proc nbItemElement*(this: StepReprCompoundRepresentationItem): int {.noSideEffect,
    importcpp: "NbItemElement", header: "StepRepr_CompoundRepresentationItem.hxx".}
proc setItemElement*(this: var StepReprCompoundRepresentationItem;
                    itemElement: Handle[StepReprHArray1OfRepresentationItem]) {.
    importcpp: "SetItemElement", header: "StepRepr_CompoundRepresentationItem.hxx".}
proc itemElementValue*(this: StepReprCompoundRepresentationItem; num: int): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "ItemElementValue", header: "StepRepr_CompoundRepresentationItem.hxx".}
proc setItemElementValue*(this: var StepReprCompoundRepresentationItem; num: int;
                         anelement: Handle[StepReprRepresentationItem]) {.
    importcpp: "SetItemElementValue",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
type
  StepReprCompoundRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepRepr_CompoundRepresentationItem::get_type_name(@)",
                            header: "StepRepr_CompoundRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_CompoundRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
proc dynamicType*(this: StepReprCompoundRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_CompoundRepresentationItem.hxx".}
