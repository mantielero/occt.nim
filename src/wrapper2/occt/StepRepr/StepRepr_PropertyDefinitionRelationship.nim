##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_PropertyDefinitionRelationship"
discard "forward decl of StepRepr_PropertyDefinitionRelationship"
type
  Handle_StepRepr_PropertyDefinitionRelationship* = handle[
      StepRepr_PropertyDefinitionRelationship]

## ! Representation of STEP entity PropertyDefinitionRelationship

type
  StepRepr_PropertyDefinitionRelationship* {.
      importcpp: "StepRepr_PropertyDefinitionRelationship",
      header: "StepRepr_PropertyDefinitionRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepRepr_PropertyDefinitionRelationship*(): StepRepr_PropertyDefinitionRelationship {.
    constructor, importcpp: "StepRepr_PropertyDefinitionRelationship(@)",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc Init*(this: var StepRepr_PropertyDefinitionRelationship;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aRelatingPropertyDefinition: handle[StepRepr_PropertyDefinition];
          aRelatedPropertyDefinition: handle[StepRepr_PropertyDefinition]) {.
    importcpp: "Init", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc Name*(this: StepRepr_PropertyDefinitionRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc SetName*(this: var StepRepr_PropertyDefinitionRelationship;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc Description*(this: StepRepr_PropertyDefinitionRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc SetDescription*(this: var StepRepr_PropertyDefinitionRelationship;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc RelatingPropertyDefinition*(this: StepRepr_PropertyDefinitionRelationship): handle[
    StepRepr_PropertyDefinition] {.noSideEffect,
                                  importcpp: "RelatingPropertyDefinition", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc SetRelatingPropertyDefinition*(this: var StepRepr_PropertyDefinitionRelationship;
    RelatingPropertyDefinition: handle[StepRepr_PropertyDefinition]) {.
    importcpp: "SetRelatingPropertyDefinition",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc RelatedPropertyDefinition*(this: StepRepr_PropertyDefinitionRelationship): handle[
    StepRepr_PropertyDefinition] {.noSideEffect,
                                  importcpp: "RelatedPropertyDefinition", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc SetRelatedPropertyDefinition*(this: var StepRepr_PropertyDefinitionRelationship;
    RelatedPropertyDefinition: handle[StepRepr_PropertyDefinition]) {.
    importcpp: "SetRelatedPropertyDefinition",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
type
  StepRepr_PropertyDefinitionRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_PropertyDefinitionRelationship::get_type_name(@)", header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_PropertyDefinitionRelationship::get_type_descriptor(@)",
    header: "StepRepr_PropertyDefinitionRelationship.hxx".}
proc DynamicType*(this: StepRepr_PropertyDefinitionRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_PropertyDefinitionRelationship.hxx".}