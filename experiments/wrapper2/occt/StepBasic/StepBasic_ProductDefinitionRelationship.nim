##  Created on: 2000-07-03
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, StepBasic_ProductDefinitionOrReference

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
type
  Handle_StepBasic_ProductDefinitionRelationship* = handle[
      StepBasic_ProductDefinitionRelationship]

## ! Representation of STEP entity ProductDefinitionRelationship

type
  StepBasic_ProductDefinitionRelationship* {.
      importcpp: "StepBasic_ProductDefinitionRelationship",
      header: "StepBasic_ProductDefinitionRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepBasic_ProductDefinitionRelationship*(): StepBasic_ProductDefinitionRelationship {.
    constructor, importcpp: "StepBasic_ProductDefinitionRelationship(@)",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionRelationship;
          aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aRelatingProductDefinition: handle[StepBasic_ProductDefinition];
          aRelatedProductDefinition: handle[StepBasic_ProductDefinition]) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionRelationship;
          aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aRelatingProductDefinition: StepBasic_ProductDefinitionOrReference;
          aRelatedProductDefinition: StepBasic_ProductDefinitionOrReference) {.
    importcpp: "Init", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc Id*(this: StepBasic_ProductDefinitionRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Id", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc SetId*(this: var StepBasic_ProductDefinitionRelationship;
           Id: handle[TCollection_HAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc Name*(this: StepBasic_ProductDefinitionRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc SetName*(this: var StepBasic_ProductDefinitionRelationship;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc Description*(this: StepBasic_ProductDefinitionRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc SetDescription*(this: var StepBasic_ProductDefinitionRelationship;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc HasDescription*(this: StepBasic_ProductDefinitionRelationship): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc RelatingProductDefinition*(this: StepBasic_ProductDefinitionRelationship): handle[
    StepBasic_ProductDefinition] {.noSideEffect,
                                  importcpp: "RelatingProductDefinition", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc RelatingProductDefinitionAP242*(this: StepBasic_ProductDefinitionRelationship): StepBasic_ProductDefinitionOrReference {.
    noSideEffect, importcpp: "RelatingProductDefinitionAP242",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc SetRelatingProductDefinition*(this: var StepBasic_ProductDefinitionRelationship;
    RelatingProductDefinition: handle[StepBasic_ProductDefinition]) {.
    importcpp: "SetRelatingProductDefinition",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc SetRelatingProductDefinition*(this: var StepBasic_ProductDefinitionRelationship;
    RelatingProductDefinition: StepBasic_ProductDefinitionOrReference) {.
    importcpp: "SetRelatingProductDefinition",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc RelatedProductDefinition*(this: StepBasic_ProductDefinitionRelationship): handle[
    StepBasic_ProductDefinition] {.noSideEffect,
                                  importcpp: "RelatedProductDefinition", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc RelatedProductDefinitionAP242*(this: StepBasic_ProductDefinitionRelationship): StepBasic_ProductDefinitionOrReference {.
    noSideEffect, importcpp: "RelatedProductDefinitionAP242",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc SetRelatedProductDefinition*(this: var StepBasic_ProductDefinitionRelationship;
    RelatedProductDefinition: handle[StepBasic_ProductDefinition]) {.
    importcpp: "SetRelatedProductDefinition",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc SetRelatedProductDefinition*(this: var StepBasic_ProductDefinitionRelationship;
    RelatedProductDefinition: StepBasic_ProductDefinitionOrReference) {.
    importcpp: "SetRelatedProductDefinition",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
type
  StepBasic_ProductDefinitionRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionRelationship::get_type_name(@)", header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ProductDefinitionRelationship::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionRelationship.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepBasic_ProductDefinitionRelationship.hxx".}