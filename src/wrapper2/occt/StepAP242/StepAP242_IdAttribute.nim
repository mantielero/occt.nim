##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepAP242_IdAttributeSelect,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP242_IdAttributeSelect"
discard "forward decl of StepAP242_IdAttribute"
discard "forward decl of StepAP242_IdAttribute"
type
  Handle_StepAP242_IdAttribute* = handle[StepAP242_IdAttribute]
  StepAP242_IdAttribute* {.importcpp: "StepAP242_IdAttribute",
                          header: "StepAP242_IdAttribute.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## IdAttribute


proc constructStepAP242_IdAttribute*(): StepAP242_IdAttribute {.constructor,
    importcpp: "StepAP242_IdAttribute(@)", header: "StepAP242_IdAttribute.hxx".}
proc Init*(this: var StepAP242_IdAttribute;
          theAttributeValue: handle[TCollection_HAsciiString];
          theIdentifiedItem: StepAP242_IdAttributeSelect) {.importcpp: "Init",
    header: "StepAP242_IdAttribute.hxx".}
proc SetAttributeValue*(this: var StepAP242_IdAttribute;
                       theAttributeValue: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAttributeValue", header: "StepAP242_IdAttribute.hxx".}
proc AttributeValue*(this: StepAP242_IdAttribute): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "AttributeValue", header: "StepAP242_IdAttribute.hxx".}
proc SetIdentifiedItem*(this: var StepAP242_IdAttribute;
                       theIdentifiedItem: StepAP242_IdAttributeSelect) {.
    importcpp: "SetIdentifiedItem", header: "StepAP242_IdAttribute.hxx".}
proc IdentifiedItem*(this: StepAP242_IdAttribute): StepAP242_IdAttributeSelect {.
    noSideEffect, importcpp: "IdentifiedItem", header: "StepAP242_IdAttribute.hxx".}
type
  StepAP242_IdAttributebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepAP242_IdAttribute::get_type_name(@)",
                              header: "StepAP242_IdAttribute.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP242_IdAttribute::get_type_descriptor(@)",
    header: "StepAP242_IdAttribute.hxx".}
proc DynamicType*(this: StepAP242_IdAttribute): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepAP242_IdAttribute.hxx".}