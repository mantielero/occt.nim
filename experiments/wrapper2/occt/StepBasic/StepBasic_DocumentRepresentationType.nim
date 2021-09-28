##  Created on: 2000-05-10
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_DocumentRepresentationType"
discard "forward decl of StepBasic_DocumentRepresentationType"
type
  HandleC1C1* = Handle[StepBasicDocumentRepresentationType]

## ! Representation of STEP entity DocumentRepresentationType

type
  StepBasicDocumentRepresentationType* {.importcpp: "StepBasic_DocumentRepresentationType", header: "StepBasic_DocumentRepresentationType.hxx",
                                        bycopy.} = object of StandardTransient ## ! Empty
                                                                          ## constructor


proc constructStepBasicDocumentRepresentationType*(): StepBasicDocumentRepresentationType {.
    constructor, importcpp: "StepBasic_DocumentRepresentationType(@)",
    header: "StepBasic_DocumentRepresentationType.hxx".}
proc init*(this: var StepBasicDocumentRepresentationType;
          aName: Handle[TCollectionHAsciiString];
          aRepresentedDocument: Handle[StepBasicDocument]) {.importcpp: "Init",
    header: "StepBasic_DocumentRepresentationType.hxx".}
proc name*(this: StepBasicDocumentRepresentationType): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_DocumentRepresentationType.hxx".}
proc setName*(this: var StepBasicDocumentRepresentationType;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_DocumentRepresentationType.hxx".}
proc representedDocument*(this: StepBasicDocumentRepresentationType): Handle[
    StepBasicDocument] {.noSideEffect, importcpp: "RepresentedDocument",
                        header: "StepBasic_DocumentRepresentationType.hxx".}
proc setRepresentedDocument*(this: var StepBasicDocumentRepresentationType;
                            representedDocument: Handle[StepBasicDocument]) {.
    importcpp: "SetRepresentedDocument",
    header: "StepBasic_DocumentRepresentationType.hxx".}
type
  StepBasicDocumentRepresentationTypebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DocumentRepresentationType::get_type_name(@)",
                            header: "StepBasic_DocumentRepresentationType.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DocumentRepresentationType::get_type_descriptor(@)",
    header: "StepBasic_DocumentRepresentationType.hxx".}
proc dynamicType*(this: StepBasicDocumentRepresentationType): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentRepresentationType.hxx".}

























