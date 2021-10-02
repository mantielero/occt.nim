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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_CharacterizedObject"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
discard "forward decl of StepBasic_DocumentFile"
type
  StepReprCharacterizedDefinition* {.importcpp: "StepRepr_CharacterizedDefinition", header: "StepRepr_CharacterizedDefinition.hxx",
                                    bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepReprCharacterizedDefinition; theSize: csize_t): pointer {.
    importcpp: "StepRepr_CharacterizedDefinition::operator new",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc `delete`*(this: var StepReprCharacterizedDefinition; theAddress: pointer) {.
    importcpp: "StepRepr_CharacterizedDefinition::operator delete",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc `new[]`*(this: var StepReprCharacterizedDefinition; theSize: csize_t): pointer {.
    importcpp: "StepRepr_CharacterizedDefinition::operator new[]",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc `delete[]`*(this: var StepReprCharacterizedDefinition; theAddress: pointer) {.
    importcpp: "StepRepr_CharacterizedDefinition::operator delete[]",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc `new`*(this: var StepReprCharacterizedDefinition; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepRepr_CharacterizedDefinition::operator new", header: "StepRepr_CharacterizedDefinition.hxx".}
proc `delete`*(this: var StepReprCharacterizedDefinition; a2: pointer; a3: pointer) {.
    importcpp: "StepRepr_CharacterizedDefinition::operator delete",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc constructStepReprCharacterizedDefinition*(): StepReprCharacterizedDefinition {.
    constructor, importcpp: "StepRepr_CharacterizedDefinition(@)",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc caseNum*(this: StepReprCharacterizedDefinition; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc characterizedObject*(this: StepReprCharacterizedDefinition): Handle[
    StepBasicCharacterizedObject] {.noSideEffect,
                                   importcpp: "CharacterizedObject", header: "StepRepr_CharacterizedDefinition.hxx".}
proc productDefinition*(this: StepReprCharacterizedDefinition): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                 header: "StepRepr_CharacterizedDefinition.hxx".}
proc productDefinitionRelationship*(this: StepReprCharacterizedDefinition): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepRepr_CharacterizedDefinition.hxx".}
proc productDefinitionShape*(this: StepReprCharacterizedDefinition): Handle[
    StepReprProductDefinitionShape] {.noSideEffect,
                                     importcpp: "ProductDefinitionShape", header: "StepRepr_CharacterizedDefinition.hxx".}
proc shapeAspect*(this: StepReprCharacterizedDefinition): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                          header: "StepRepr_CharacterizedDefinition.hxx".}
proc shapeAspectRelationship*(this: StepReprCharacterizedDefinition): Handle[
    StepReprShapeAspectRelationship] {.noSideEffect,
                                      importcpp: "ShapeAspectRelationship", header: "StepRepr_CharacterizedDefinition.hxx".}
proc documentFile*(this: StepReprCharacterizedDefinition): Handle[
    StepBasicDocumentFile] {.noSideEffect, importcpp: "DocumentFile",
                            header: "StepRepr_CharacterizedDefinition.hxx".}