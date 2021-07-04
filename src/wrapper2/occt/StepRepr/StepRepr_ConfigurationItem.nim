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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductConcept"
discard "forward decl of StepRepr_ConfigurationItem"
discard "forward decl of StepRepr_ConfigurationItem"
type
  Handle_StepRepr_ConfigurationItem* = handle[StepRepr_ConfigurationItem]

## ! Representation of STEP entity ConfigurationItem

type
  StepRepr_ConfigurationItem* {.importcpp: "StepRepr_ConfigurationItem",
                               header: "StepRepr_ConfigurationItem.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepRepr_ConfigurationItem*(): StepRepr_ConfigurationItem {.
    constructor, importcpp: "StepRepr_ConfigurationItem(@)",
    header: "StepRepr_ConfigurationItem.hxx".}
proc Init*(this: var StepRepr_ConfigurationItem;
          aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aItemConcept: handle[StepRepr_ProductConcept];
          hasPurpose: Standard_Boolean; aPurpose: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepRepr_ConfigurationItem.hxx".}
proc Id*(this: StepRepr_ConfigurationItem): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepRepr_ConfigurationItem.hxx".}
proc SetId*(this: var StepRepr_ConfigurationItem;
           Id: handle[TCollection_HAsciiString]) {.importcpp: "SetId",
    header: "StepRepr_ConfigurationItem.hxx".}
proc Name*(this: StepRepr_ConfigurationItem): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_ConfigurationItem.hxx".}
proc SetName*(this: var StepRepr_ConfigurationItem;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_ConfigurationItem.hxx".}
proc Description*(this: StepRepr_ConfigurationItem): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepRepr_ConfigurationItem.hxx".}
proc SetDescription*(this: var StepRepr_ConfigurationItem;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepRepr_ConfigurationItem.hxx".}
proc HasDescription*(this: StepRepr_ConfigurationItem): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepRepr_ConfigurationItem.hxx".}
proc ItemConcept*(this: StepRepr_ConfigurationItem): handle[StepRepr_ProductConcept] {.
    noSideEffect, importcpp: "ItemConcept",
    header: "StepRepr_ConfigurationItem.hxx".}
proc SetItemConcept*(this: var StepRepr_ConfigurationItem;
                    ItemConcept: handle[StepRepr_ProductConcept]) {.
    importcpp: "SetItemConcept", header: "StepRepr_ConfigurationItem.hxx".}
proc Purpose*(this: StepRepr_ConfigurationItem): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Purpose", header: "StepRepr_ConfigurationItem.hxx".}
proc SetPurpose*(this: var StepRepr_ConfigurationItem;
                Purpose: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPurpose", header: "StepRepr_ConfigurationItem.hxx".}
proc HasPurpose*(this: StepRepr_ConfigurationItem): Standard_Boolean {.noSideEffect,
    importcpp: "HasPurpose", header: "StepRepr_ConfigurationItem.hxx".}
type
  StepRepr_ConfigurationItembase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_ConfigurationItem::get_type_name(@)",
                              header: "StepRepr_ConfigurationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ConfigurationItem::get_type_descriptor(@)",
    header: "StepRepr_ConfigurationItem.hxx".}
proc DynamicType*(this: StepRepr_ConfigurationItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ConfigurationItem.hxx".}