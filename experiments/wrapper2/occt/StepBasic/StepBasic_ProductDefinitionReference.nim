##  Created on: 2016-03-30
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepBasic_ProductDefinitionReference"
discard "forward decl of StepBasic_ProductDefinitionReference"
type
  Handle_StepBasic_ProductDefinitionReference* = handle[
      StepBasic_ProductDefinitionReference]

## ! Representation of STEP entity Product_Definition_Reference

type
  StepBasic_ProductDefinitionReference* {.
      importcpp: "StepBasic_ProductDefinitionReference",
      header: "StepBasic_ProductDefinitionReference.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepBasic_ProductDefinitionReference*(): StepBasic_ProductDefinitionReference {.
    constructor, importcpp: "StepBasic_ProductDefinitionReference(@)",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionReference;
          theSource: handle[StepBasic_ExternalSource];
          theProductId: handle[TCollection_HAsciiString];
          theProductDefinitionFormationId: handle[TCollection_HAsciiString];
          theProductDefinitionId: handle[TCollection_HAsciiString];
          theIdOwningOrganizationName: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionReference.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionReference;
          theSource: handle[StepBasic_ExternalSource];
          theProductId: handle[TCollection_HAsciiString];
          theProductDefinitionFormationId: handle[TCollection_HAsciiString];
          theProductDefinitionId: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionReference.hxx".}
proc Source*(this: StepBasic_ProductDefinitionReference): handle[
    StepBasic_ExternalSource] {.noSideEffect, importcpp: "Source", header: "StepBasic_ProductDefinitionReference.hxx".}
proc SetSource*(this: var StepBasic_ProductDefinitionReference;
               theSource: handle[StepBasic_ExternalSource]) {.
    importcpp: "SetSource", header: "StepBasic_ProductDefinitionReference.hxx".}
proc ProductId*(this: StepBasic_ProductDefinitionReference): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ProductId", header: "StepBasic_ProductDefinitionReference.hxx".}
proc SetProductId*(this: var StepBasic_ProductDefinitionReference;
                  theProductId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetProductId", header: "StepBasic_ProductDefinitionReference.hxx".}
proc ProductDefinitionFormationId*(this: StepBasic_ProductDefinitionReference): handle[
    TCollection_HAsciiString] {.noSideEffect,
                               importcpp: "ProductDefinitionFormationId", header: "StepBasic_ProductDefinitionReference.hxx".}
proc SetProductDefinitionFormationId*(this: var StepBasic_ProductDefinitionReference;
    theProductDefinitionFormationId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetProductDefinitionFormationId",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc ProductDefinitionId*(this: StepBasic_ProductDefinitionReference): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ProductDefinitionId", header: "StepBasic_ProductDefinitionReference.hxx".}
proc SetProductDefinitionId*(this: var StepBasic_ProductDefinitionReference;
    theProductDefinitionId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetProductDefinitionId",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc IdOwningOrganizationName*(this: StepBasic_ProductDefinitionReference): handle[
    TCollection_HAsciiString] {.noSideEffect,
                               importcpp: "IdOwningOrganizationName", header: "StepBasic_ProductDefinitionReference.hxx".}
proc SetIdOwningOrganizationName*(this: var StepBasic_ProductDefinitionReference;
    theIdOwningOrganizationName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetIdOwningOrganizationName",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc HasIdOwningOrganizationName*(this: StepBasic_ProductDefinitionReference): Standard_Boolean {.
    noSideEffect, importcpp: "HasIdOwningOrganizationName",
    header: "StepBasic_ProductDefinitionReference.hxx".}
type
  StepBasic_ProductDefinitionReferencebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionReference::get_type_name(@)", header: "StepBasic_ProductDefinitionReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ProductDefinitionReference::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionReference.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionReference): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ProductDefinitionReference.hxx".}