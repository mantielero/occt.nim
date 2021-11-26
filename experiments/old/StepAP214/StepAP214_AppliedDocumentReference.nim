##  Created on: 1999-03-10
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP214_DocumentReferenceItem"
discard "forward decl of StepAP214_AppliedDocumentReference"
discard "forward decl of StepAP214_AppliedDocumentReference"
type
  HandleC1C1* = Handle[StepAP214AppliedDocumentReference]
  StepAP214AppliedDocumentReference* {.importcpp: "StepAP214_AppliedDocumentReference", header: "StepAP214_AppliedDocumentReference.hxx",
                                      bycopy.} = object of StepBasicDocumentReference


proc constructStepAP214AppliedDocumentReference*(): StepAP214AppliedDocumentReference {.
    constructor, importcpp: "StepAP214_AppliedDocumentReference(@)",
    header: "StepAP214_AppliedDocumentReference.hxx".}
proc init*(this: var StepAP214AppliedDocumentReference;
          aAssignedDocument: Handle[StepBasicDocument];
          aSource: Handle[TCollectionHAsciiString];
          aItems: Handle[StepAP214HArray1OfDocumentReferenceItem]) {.
    importcpp: "Init", header: "StepAP214_AppliedDocumentReference.hxx".}
proc items*(this: StepAP214AppliedDocumentReference): Handle[
    StepAP214HArray1OfDocumentReferenceItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AppliedDocumentReference.hxx".}
proc setItems*(this: var StepAP214AppliedDocumentReference;
              aItems: Handle[StepAP214HArray1OfDocumentReferenceItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedDocumentReference.hxx".}
proc itemsValue*(this: StepAP214AppliedDocumentReference; num: int): StepAP214DocumentReferenceItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedDocumentReference.hxx".}
proc nbItems*(this: StepAP214AppliedDocumentReference): int {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AppliedDocumentReference.hxx".}
type
  StepAP214AppliedDocumentReferencebaseType* = StepBasicDocumentReference

proc getTypeName*(): cstring {.importcpp: "StepAP214_AppliedDocumentReference::get_type_name(@)",
                            header: "StepAP214_AppliedDocumentReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_AppliedDocumentReference::get_type_descriptor(@)",
    header: "StepAP214_AppliedDocumentReference.hxx".}
proc dynamicType*(this: StepAP214AppliedDocumentReference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedDocumentReference.hxx".}