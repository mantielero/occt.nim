##  Created on: 2002-12-15
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
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionFormationRelationship"
discard "forward decl of StepBasic_ProductDefinitionFormationRelationship"
type
  Handle_StepBasic_ProductDefinitionFormationRelationship* = handle[
      StepBasic_ProductDefinitionFormationRelationship]

## ! Representation of STEP entity ProductDefinitionFormationRelationship

type
  StepBasic_ProductDefinitionFormationRelationship* {.
      importcpp: "StepBasic_ProductDefinitionFormationRelationship",
      header: "StepBasic_ProductDefinitionFormationRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepBasic_ProductDefinitionFormationRelationship*(): StepBasic_ProductDefinitionFormationRelationship {.
    constructor,
    importcpp: "StepBasic_ProductDefinitionFormationRelationship(@)",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionFormationRelationship;
          aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
    aRelatingProductDefinitionFormation: handle[
    StepBasic_ProductDefinitionFormation]; aRelatedProductDefinitionFormation: handle[
    StepBasic_ProductDefinitionFormation]) {.importcpp: "Init",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc Id*(this: StepBasic_ProductDefinitionFormationRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Id", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc SetId*(this: var StepBasic_ProductDefinitionFormationRelationship;
           Id: handle[TCollection_HAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc Name*(this: StepBasic_ProductDefinitionFormationRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc SetName*(this: var StepBasic_ProductDefinitionFormationRelationship;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc Description*(this: StepBasic_ProductDefinitionFormationRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc SetDescription*(this: var StepBasic_ProductDefinitionFormationRelationship;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc RelatingProductDefinitionFormation*(this: StepBasic_ProductDefinitionFormationRelationship): handle[
    StepBasic_ProductDefinitionFormation] {.noSideEffect,
    importcpp: "RelatingProductDefinitionFormation",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc SetRelatingProductDefinitionFormation*(
    this: var StepBasic_ProductDefinitionFormationRelationship;
    RelatingProductDefinitionFormation: handle[
    StepBasic_ProductDefinitionFormation]) {.
    importcpp: "SetRelatingProductDefinitionFormation",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc RelatedProductDefinitionFormation*(this: StepBasic_ProductDefinitionFormationRelationship): handle[
    StepBasic_ProductDefinitionFormation] {.noSideEffect,
    importcpp: "RelatedProductDefinitionFormation",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc SetRelatedProductDefinitionFormation*(
    this: var StepBasic_ProductDefinitionFormationRelationship;
    RelatedProductDefinitionFormation: handle[
    StepBasic_ProductDefinitionFormation]) {.
    importcpp: "SetRelatedProductDefinitionFormation",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
type
  StepBasic_ProductDefinitionFormationRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionFormationRelationship::get_type_name(@)", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ProductDefinitionFormationRelationship::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionFormationRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductDefinitionFormationRelationship.hxx".}