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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_Document,
  ../Standard/Standard_Boolean

discard "forward decl of StepBasic_CharacterizedObject"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentType"
discard "forward decl of StepBasic_DocumentFile"
discard "forward decl of StepBasic_DocumentFile"
type
  Handle_StepBasic_DocumentFile* = handle[StepBasic_DocumentFile]

## ! Representation of STEP entity DocumentFile

type
  StepBasic_DocumentFile* {.importcpp: "StepBasic_DocumentFile",
                           header: "StepBasic_DocumentFile.hxx", bycopy.} = object of StepBasic_Document ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepBasic_DocumentFile*(): StepBasic_DocumentFile {.constructor,
    importcpp: "StepBasic_DocumentFile(@)", header: "StepBasic_DocumentFile.hxx".}
proc Init*(this: var StepBasic_DocumentFile;
          aDocument_Id: handle[TCollection_HAsciiString];
          aDocument_Name: handle[TCollection_HAsciiString];
          hasDocument_Description: Standard_Boolean;
          aDocument_Description: handle[TCollection_HAsciiString];
          aDocument_Kind: handle[StepBasic_DocumentType];
          aCharacterizedObject_Name: handle[TCollection_HAsciiString];
          hasCharacterizedObject_Description: Standard_Boolean;
          aCharacterizedObject_Description: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepBasic_DocumentFile.hxx".}
proc CharacterizedObject*(this: StepBasic_DocumentFile): handle[
    StepBasic_CharacterizedObject] {.noSideEffect,
                                    importcpp: "CharacterizedObject",
                                    header: "StepBasic_DocumentFile.hxx".}
proc SetCharacterizedObject*(this: var StepBasic_DocumentFile; CharacterizedObject: handle[
    StepBasic_CharacterizedObject]) {.importcpp: "SetCharacterizedObject",
                                     header: "StepBasic_DocumentFile.hxx".}
type
  StepBasic_DocumentFilebase_type* = StepBasic_Document

proc get_type_name*(): cstring {.importcpp: "StepBasic_DocumentFile::get_type_name(@)",
                              header: "StepBasic_DocumentFile.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DocumentFile::get_type_descriptor(@)",
    header: "StepBasic_DocumentFile.hxx".}
proc DynamicType*(this: StepBasic_DocumentFile): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DocumentFile.hxx".}