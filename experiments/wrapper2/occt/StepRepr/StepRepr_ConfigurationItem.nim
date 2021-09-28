##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductConcept"
discard "forward decl of StepRepr_ConfigurationItem"
discard "forward decl of StepRepr_ConfigurationItem"
type
  HandleC1C1* = Handle[StepReprConfigurationItem]

## ! Representation of STEP entity ConfigurationItem

type
  StepReprConfigurationItem* {.importcpp: "StepRepr_ConfigurationItem",
                              header: "StepRepr_ConfigurationItem.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepReprConfigurationItem*(): StepReprConfigurationItem {.
    constructor, importcpp: "StepRepr_ConfigurationItem(@)",
    header: "StepRepr_ConfigurationItem.hxx".}
proc init*(this: var StepReprConfigurationItem;
          aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString]; hasDescription: bool;
          aDescription: Handle[TCollectionHAsciiString];
          aItemConcept: Handle[StepReprProductConcept]; hasPurpose: bool;
          aPurpose: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepRepr_ConfigurationItem.hxx".}
proc id*(this: StepReprConfigurationItem): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepRepr_ConfigurationItem.hxx".}
proc setId*(this: var StepReprConfigurationItem; id: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetId", header: "StepRepr_ConfigurationItem.hxx".}
proc name*(this: StepReprConfigurationItem): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_ConfigurationItem.hxx".}
proc setName*(this: var StepReprConfigurationItem;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ConfigurationItem.hxx".}
proc description*(this: StepReprConfigurationItem): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description",
    header: "StepRepr_ConfigurationItem.hxx".}
proc setDescription*(this: var StepReprConfigurationItem;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ConfigurationItem.hxx".}
proc hasDescription*(this: StepReprConfigurationItem): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepRepr_ConfigurationItem.hxx".}
proc itemConcept*(this: StepReprConfigurationItem): Handle[StepReprProductConcept] {.
    noSideEffect, importcpp: "ItemConcept",
    header: "StepRepr_ConfigurationItem.hxx".}
proc setItemConcept*(this: var StepReprConfigurationItem;
                    itemConcept: Handle[StepReprProductConcept]) {.
    importcpp: "SetItemConcept", header: "StepRepr_ConfigurationItem.hxx".}
proc purpose*(this: StepReprConfigurationItem): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Purpose", header: "StepRepr_ConfigurationItem.hxx".}
proc setPurpose*(this: var StepReprConfigurationItem;
                purpose: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPurpose", header: "StepRepr_ConfigurationItem.hxx".}
proc hasPurpose*(this: StepReprConfigurationItem): bool {.noSideEffect,
    importcpp: "HasPurpose", header: "StepRepr_ConfigurationItem.hxx".}
type
  StepReprConfigurationItembaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_ConfigurationItem::get_type_name(@)",
                            header: "StepRepr_ConfigurationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ConfigurationItem::get_type_descriptor(@)",
    header: "StepRepr_ConfigurationItem.hxx".}
proc dynamicType*(this: StepReprConfigurationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ConfigurationItem.hxx".}

























