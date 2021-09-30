##  Created on: 2003-01-28
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepBasic_ProductOrFormationOrDefinition"
discard "forward decl of StepBasic_DocumentProductAssociation"
discard "forward decl of StepBasic_DocumentProductAssociation"
type
  HandleC1C1* = Handle[StepBasicDocumentProductAssociation]

## ! Representation of STEP entity DocumentProductAssociation

type
  StepBasicDocumentProductAssociation* {.importcpp: "StepBasic_DocumentProductAssociation", header: "StepBasic_DocumentProductAssociation.hxx",
                                        bycopy.} = object of StandardTransient ## ! Empty
                                                                          ## constructor


proc constructStepBasicDocumentProductAssociation*(): StepBasicDocumentProductAssociation {.
    constructor, importcpp: "StepBasic_DocumentProductAssociation(@)",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc init*(this: var StepBasicDocumentProductAssociation;
          aName: Handle[TCollectionHAsciiString]; hasDescription: bool;
          aDescription: Handle[TCollectionHAsciiString];
          aRelatingDocument: Handle[StepBasicDocument];
          aRelatedProduct: StepBasicProductOrFormationOrDefinition) {.
    importcpp: "Init", header: "StepBasic_DocumentProductAssociation.hxx".}
proc name*(this: StepBasicDocumentProductAssociation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_DocumentProductAssociation.hxx".}
proc setName*(this: var StepBasicDocumentProductAssociation;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc description*(this: StepBasicDocumentProductAssociation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_DocumentProductAssociation.hxx".}
proc setDescription*(this: var StepBasicDocumentProductAssociation;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc hasDescription*(this: StepBasicDocumentProductAssociation): bool {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc relatingDocument*(this: StepBasicDocumentProductAssociation): Handle[
    StepBasicDocument] {.noSideEffect, importcpp: "RelatingDocument",
                        header: "StepBasic_DocumentProductAssociation.hxx".}
proc setRelatingDocument*(this: var StepBasicDocumentProductAssociation;
                         relatingDocument: Handle[StepBasicDocument]) {.
    importcpp: "SetRelatingDocument",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc relatedProduct*(this: StepBasicDocumentProductAssociation): StepBasicProductOrFormationOrDefinition {.
    noSideEffect, importcpp: "RelatedProduct",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc setRelatedProduct*(this: var StepBasicDocumentProductAssociation;
                       relatedProduct: StepBasicProductOrFormationOrDefinition) {.
    importcpp: "SetRelatedProduct",
    header: "StepBasic_DocumentProductAssociation.hxx".}
type
  StepBasicDocumentProductAssociationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DocumentProductAssociation::get_type_name(@)",
                            header: "StepBasic_DocumentProductAssociation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DocumentProductAssociation::get_type_descriptor(@)",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc dynamicType*(this: StepBasicDocumentProductAssociation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentProductAssociation.hxx".}

























