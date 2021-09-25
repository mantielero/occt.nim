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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP242_IdAttributeSelect"
discard "forward decl of StepAP242_IdAttribute"
discard "forward decl of StepAP242_IdAttribute"
type
  HandleStepAP242IdAttribute* = Handle[StepAP242IdAttribute]
  StepAP242IdAttribute* {.importcpp: "StepAP242_IdAttribute",
                         header: "StepAP242_IdAttribute.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## IdAttribute


proc constructStepAP242IdAttribute*(): StepAP242IdAttribute {.constructor,
    importcpp: "StepAP242_IdAttribute(@)", header: "StepAP242_IdAttribute.hxx".}
proc init*(this: var StepAP242IdAttribute;
          theAttributeValue: Handle[TCollectionHAsciiString];
          theIdentifiedItem: StepAP242IdAttributeSelect) {.importcpp: "Init",
    header: "StepAP242_IdAttribute.hxx".}
proc setAttributeValue*(this: var StepAP242IdAttribute;
                       theAttributeValue: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetAttributeValue", header: "StepAP242_IdAttribute.hxx".}
proc attributeValue*(this: StepAP242IdAttribute): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "AttributeValue", header: "StepAP242_IdAttribute.hxx".}
proc setIdentifiedItem*(this: var StepAP242IdAttribute;
                       theIdentifiedItem: StepAP242IdAttributeSelect) {.
    importcpp: "SetIdentifiedItem", header: "StepAP242_IdAttribute.hxx".}
proc identifiedItem*(this: StepAP242IdAttribute): StepAP242IdAttributeSelect {.
    noSideEffect, importcpp: "IdentifiedItem", header: "StepAP242_IdAttribute.hxx".}
type
  StepAP242IdAttributebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepAP242_IdAttribute::get_type_name(@)",
                            header: "StepAP242_IdAttribute.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP242_IdAttribute::get_type_descriptor(@)",
    header: "StepAP242_IdAttribute.hxx".}
proc dynamicType*(this: StepAP242IdAttribute): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP242_IdAttribute.hxx".}
