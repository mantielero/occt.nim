##  Created on: 2000-05-11
##  Created by: data exchange team
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_CharacterizedObject"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
discard "forward decl of StepBasic_DocumentFile"
type
  StepRepr_CharacterizedDefinition* {.importcpp: "StepRepr_CharacterizedDefinition", header: "StepRepr_CharacterizedDefinition.hxx",
                                     bycopy.} = object of StepData_SelectType ## ! Empty
                                                                         ## constructor


proc constructStepRepr_CharacterizedDefinition*(): StepRepr_CharacterizedDefinition {.
    constructor, importcpp: "StepRepr_CharacterizedDefinition(@)",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc CaseNum*(this: StepRepr_CharacterizedDefinition;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepRepr_CharacterizedDefinition.hxx".}
proc CharacterizedObject*(this: StepRepr_CharacterizedDefinition): handle[
    StepBasic_CharacterizedObject] {.noSideEffect,
                                    importcpp: "CharacterizedObject", header: "StepRepr_CharacterizedDefinition.hxx".}
proc ProductDefinition*(this: StepRepr_CharacterizedDefinition): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepRepr_CharacterizedDefinition.hxx".}
proc ProductDefinitionRelationship*(this: StepRepr_CharacterizedDefinition): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc ProductDefinitionShape*(this: StepRepr_CharacterizedDefinition): handle[
    StepRepr_ProductDefinitionShape] {.noSideEffect,
                                      importcpp: "ProductDefinitionShape", header: "StepRepr_CharacterizedDefinition.hxx".}
proc ShapeAspect*(this: StepRepr_CharacterizedDefinition): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                           header: "StepRepr_CharacterizedDefinition.hxx".}
proc ShapeAspectRelationship*(this: StepRepr_CharacterizedDefinition): handle[
    StepRepr_ShapeAspectRelationship] {.noSideEffect,
                                       importcpp: "ShapeAspectRelationship", header: "StepRepr_CharacterizedDefinition.hxx".}
proc DocumentFile*(this: StepRepr_CharacterizedDefinition): handle[
    StepBasic_DocumentFile] {.noSideEffect, importcpp: "DocumentFile",
                             header: "StepRepr_CharacterizedDefinition.hxx".}