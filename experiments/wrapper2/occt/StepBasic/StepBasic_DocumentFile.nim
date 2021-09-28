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

discard "forward decl of StepBasic_CharacterizedObject"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentType"
discard "forward decl of StepBasic_DocumentFile"
discard "forward decl of StepBasic_DocumentFile"
type
  HandleC1C1* = Handle[StepBasicDocumentFile]

## ! Representation of STEP entity DocumentFile

type
  StepBasicDocumentFile* {.importcpp: "StepBasic_DocumentFile",
                          header: "StepBasic_DocumentFile.hxx", bycopy.} = object of StepBasicDocument ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepBasicDocumentFile*(): StepBasicDocumentFile {.constructor,
    importcpp: "StepBasic_DocumentFile(@)", header: "StepBasic_DocumentFile.hxx".}
proc init*(this: var StepBasicDocumentFile;
          aDocumentId: Handle[TCollectionHAsciiString];
          aDocumentName: Handle[TCollectionHAsciiString];
          hasDocumentDescription: bool;
          aDocumentDescription: Handle[TCollectionHAsciiString];
          aDocumentKind: Handle[StepBasicDocumentType];
          aCharacterizedObjectName: Handle[TCollectionHAsciiString];
          hasCharacterizedObjectDescription: bool;
          aCharacterizedObjectDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_DocumentFile.hxx".}
proc characterizedObject*(this: StepBasicDocumentFile): Handle[
    StepBasicCharacterizedObject] {.noSideEffect,
                                   importcpp: "CharacterizedObject",
                                   header: "StepBasic_DocumentFile.hxx".}
proc setCharacterizedObject*(this: var StepBasicDocumentFile; characterizedObject: Handle[
    StepBasicCharacterizedObject]) {.importcpp: "SetCharacterizedObject",
                                    header: "StepBasic_DocumentFile.hxx".}
type
  StepBasicDocumentFilebaseType* = StepBasicDocument

proc getTypeName*(): cstring {.importcpp: "StepBasic_DocumentFile::get_type_name(@)",
                            header: "StepBasic_DocumentFile.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DocumentFile::get_type_descriptor(@)",
    header: "StepBasic_DocumentFile.hxx".}
proc dynamicType*(this: StepBasicDocumentFile): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_DocumentFile.hxx".}

























