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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentType"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_Document"
type
  HandleStepBasicDocument* = Handle[StepBasicDocument]

## ! Representation of STEP entity Document

type
  StepBasicDocument* {.importcpp: "StepBasic_Document",
                      header: "StepBasic_Document.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructStepBasicDocument*(): StepBasicDocument {.constructor,
    importcpp: "StepBasic_Document(@)", header: "StepBasic_Document.hxx".}
proc init*(this: var StepBasicDocument; aId: Handle[TCollectionHAsciiString];
          aName: Handle[TCollectionHAsciiString]; hasDescription: bool;
          aDescription: Handle[TCollectionHAsciiString];
          aKind: Handle[StepBasicDocumentType]) {.importcpp: "Init",
    header: "StepBasic_Document.hxx".}
proc id*(this: StepBasicDocument): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Id", header: "StepBasic_Document.hxx".}
proc setId*(this: var StepBasicDocument; id: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Document.hxx".}
proc name*(this: StepBasicDocument): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Name", header: "StepBasic_Document.hxx".}
proc setName*(this: var StepBasicDocument; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_Document.hxx".}
proc description*(this: StepBasicDocument): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_Document.hxx".}
proc setDescription*(this: var StepBasicDocument;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_Document.hxx".}
proc hasDescription*(this: StepBasicDocument): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_Document.hxx".}
proc kind*(this: StepBasicDocument): Handle[StepBasicDocumentType] {.noSideEffect,
    importcpp: "Kind", header: "StepBasic_Document.hxx".}
proc setKind*(this: var StepBasicDocument; kind: Handle[StepBasicDocumentType]) {.
    importcpp: "SetKind", header: "StepBasic_Document.hxx".}
type
  StepBasicDocumentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Document::get_type_name(@)",
                            header: "StepBasic_Document.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Document::get_type_descriptor(@)",
    header: "StepBasic_Document.hxx".}
proc dynamicType*(this: StepBasicDocument): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Document.hxx".}
