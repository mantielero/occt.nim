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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentType"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_Document"
type
  Handle_StepBasic_Document* = handle[StepBasic_Document]

## ! Representation of STEP entity Document

type
  StepBasic_Document* {.importcpp: "StepBasic_Document",
                       header: "StepBasic_Document.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor


proc constructStepBasic_Document*(): StepBasic_Document {.constructor,
    importcpp: "StepBasic_Document(@)", header: "StepBasic_Document.hxx".}
proc Init*(this: var StepBasic_Document; aId: handle[TCollection_HAsciiString];
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aKind: handle[StepBasic_DocumentType]) {.importcpp: "Init",
    header: "StepBasic_Document.hxx".}
proc Id*(this: StepBasic_Document): handle[TCollection_HAsciiString] {.noSideEffect,
    importcpp: "Id", header: "StepBasic_Document.hxx".}
proc SetId*(this: var StepBasic_Document; Id: handle[TCollection_HAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Document.hxx".}
proc Name*(this: StepBasic_Document): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_Document.hxx".}
proc SetName*(this: var StepBasic_Document; Name: handle[TCollection_HAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Document.hxx".}
proc Description*(this: StepBasic_Document): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Document.hxx".}
proc SetDescription*(this: var StepBasic_Document;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Document.hxx".}
proc HasDescription*(this: StepBasic_Document): Standard_Boolean {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_Document.hxx".}
proc Kind*(this: StepBasic_Document): handle[StepBasic_DocumentType] {.noSideEffect,
    importcpp: "Kind", header: "StepBasic_Document.hxx".}
proc SetKind*(this: var StepBasic_Document; Kind: handle[StepBasic_DocumentType]) {.
    importcpp: "SetKind", header: "StepBasic_Document.hxx".}
type
  StepBasic_Documentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Document::get_type_name(@)",
                              header: "StepBasic_Document.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Document::get_type_descriptor(@)",
    header: "StepBasic_Document.hxx".}
proc DynamicType*(this: StepBasic_Document): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Document.hxx".}