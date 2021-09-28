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

discard "forward decl of StepRepr_RepresentationMap"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_MappedItem"
discard "forward decl of StepRepr_MappedItem"
type
  HandleC1C1* = Handle[StepReprMappedItem]
  StepReprMappedItem* {.importcpp: "StepRepr_MappedItem",
                       header: "StepRepr_MappedItem.hxx", bycopy.} = object of StepReprRepresentationItem ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## MappedItem


proc constructStepReprMappedItem*(): StepReprMappedItem {.constructor,
    importcpp: "StepRepr_MappedItem(@)", header: "StepRepr_MappedItem.hxx".}
proc init*(this: var StepReprMappedItem; aName: Handle[TCollectionHAsciiString];
          aMappingSource: Handle[StepReprRepresentationMap];
          aMappingTarget: Handle[StepReprRepresentationItem]) {.importcpp: "Init",
    header: "StepRepr_MappedItem.hxx".}
proc setMappingSource*(this: var StepReprMappedItem;
                      aMappingSource: Handle[StepReprRepresentationMap]) {.
    importcpp: "SetMappingSource", header: "StepRepr_MappedItem.hxx".}
proc mappingSource*(this: StepReprMappedItem): Handle[StepReprRepresentationMap] {.
    noSideEffect, importcpp: "MappingSource", header: "StepRepr_MappedItem.hxx".}
proc setMappingTarget*(this: var StepReprMappedItem;
                      aMappingTarget: Handle[StepReprRepresentationItem]) {.
    importcpp: "SetMappingTarget", header: "StepRepr_MappedItem.hxx".}
proc mappingTarget*(this: StepReprMappedItem): Handle[StepReprRepresentationItem] {.
    noSideEffect, importcpp: "MappingTarget", header: "StepRepr_MappedItem.hxx".}
type
  StepReprMappedItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepRepr_MappedItem::get_type_name(@)",
                            header: "StepRepr_MappedItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_MappedItem::get_type_descriptor(@)",
    header: "StepRepr_MappedItem.hxx".}
proc dynamicType*(this: StepReprMappedItem): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepRepr_MappedItem.hxx".}

























