##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_DocumentRelationship"
discard "forward decl of StepBasic_DocumentRelationship"
type
  HandleC1C1* = Handle[StepBasicDocumentRelationship]
  StepBasicDocumentRelationship* {.importcpp: "StepBasic_DocumentRelationship",
                                  header: "StepBasic_DocumentRelationship.hxx",
                                  bycopy.} = object of StandardTransient


proc constructStepBasicDocumentRelationship*(): StepBasicDocumentRelationship {.
    constructor, importcpp: "StepBasic_DocumentRelationship(@)",
    header: "StepBasic_DocumentRelationship.hxx".}
proc init*(this: var StepBasicDocumentRelationship;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aRelating: Handle[StepBasicDocument];
          aRelated: Handle[StepBasicDocument]) {.importcpp: "Init",
    header: "StepBasic_DocumentRelationship.hxx".}
proc name*(this: StepBasicDocumentRelationship): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_DocumentRelationship.hxx".}
proc setName*(this: var StepBasicDocumentRelationship;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_DocumentRelationship.hxx".}
proc description*(this: StepBasicDocumentRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepBasic_DocumentRelationship.hxx".}
proc setDescription*(this: var StepBasicDocumentRelationship;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_DocumentRelationship.hxx".}
proc relatingDocument*(this: StepBasicDocumentRelationship): Handle[
    StepBasicDocument] {.noSideEffect, importcpp: "RelatingDocument",
                        header: "StepBasic_DocumentRelationship.hxx".}
proc setRelatingDocument*(this: var StepBasicDocumentRelationship;
                         aRelating: Handle[StepBasicDocument]) {.
    importcpp: "SetRelatingDocument", header: "StepBasic_DocumentRelationship.hxx".}
proc relatedDocument*(this: StepBasicDocumentRelationship): Handle[
    StepBasicDocument] {.noSideEffect, importcpp: "RelatedDocument",
                        header: "StepBasic_DocumentRelationship.hxx".}
proc setRelatedDocument*(this: var StepBasicDocumentRelationship;
                        aRelated: Handle[StepBasicDocument]) {.
    importcpp: "SetRelatedDocument", header: "StepBasic_DocumentRelationship.hxx".}
type
  StepBasicDocumentRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DocumentRelationship::get_type_name(@)",
                            header: "StepBasic_DocumentRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DocumentRelationship::get_type_descriptor(@)",
    header: "StepBasic_DocumentRelationship.hxx".}
proc dynamicType*(this: StepBasicDocumentRelationship): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentRelationship.hxx".}