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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_RepresentationItem

discard "forward decl of StepRepr_RepresentationMap"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_MappedItem"
discard "forward decl of StepRepr_MappedItem"
type
  Handle_StepRepr_MappedItem* = handle[StepRepr_MappedItem]
  StepRepr_MappedItem* {.importcpp: "StepRepr_MappedItem",
                        header: "StepRepr_MappedItem.hxx", bycopy.} = object of StepRepr_RepresentationItem ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## MappedItem


proc constructStepRepr_MappedItem*(): StepRepr_MappedItem {.constructor,
    importcpp: "StepRepr_MappedItem(@)", header: "StepRepr_MappedItem.hxx".}
proc Init*(this: var StepRepr_MappedItem; aName: handle[TCollection_HAsciiString];
          aMappingSource: handle[StepRepr_RepresentationMap];
          aMappingTarget: handle[StepRepr_RepresentationItem]) {.
    importcpp: "Init", header: "StepRepr_MappedItem.hxx".}
proc SetMappingSource*(this: var StepRepr_MappedItem;
                      aMappingSource: handle[StepRepr_RepresentationMap]) {.
    importcpp: "SetMappingSource", header: "StepRepr_MappedItem.hxx".}
proc MappingSource*(this: StepRepr_MappedItem): handle[StepRepr_RepresentationMap] {.
    noSideEffect, importcpp: "MappingSource", header: "StepRepr_MappedItem.hxx".}
proc SetMappingTarget*(this: var StepRepr_MappedItem;
                      aMappingTarget: handle[StepRepr_RepresentationItem]) {.
    importcpp: "SetMappingTarget", header: "StepRepr_MappedItem.hxx".}
proc MappingTarget*(this: StepRepr_MappedItem): handle[StepRepr_RepresentationItem] {.
    noSideEffect, importcpp: "MappingTarget", header: "StepRepr_MappedItem.hxx".}
type
  StepRepr_MappedItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepRepr_MappedItem::get_type_name(@)",
                              header: "StepRepr_MappedItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_MappedItem::get_type_descriptor(@)",
    header: "StepRepr_MappedItem.hxx".}
proc DynamicType*(this: StepRepr_MappedItem): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepRepr_MappedItem.hxx".}