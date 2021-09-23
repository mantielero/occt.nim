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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP214_HArray1OfDocumentReferenceItem,
  ../StepBasic/StepBasic_DocumentReference, ../Standard/Standard_Integer

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP214_DocumentReferenceItem"
discard "forward decl of StepAP214_AppliedDocumentReference"
discard "forward decl of StepAP214_AppliedDocumentReference"
type
  Handle_StepAP214_AppliedDocumentReference* = handle[
      StepAP214_AppliedDocumentReference]
  StepAP214_AppliedDocumentReference* {.importcpp: "StepAP214_AppliedDocumentReference", header: "StepAP214_AppliedDocumentReference.hxx",
                                       bycopy.} = object of StepBasic_DocumentReference


proc constructStepAP214_AppliedDocumentReference*(): StepAP214_AppliedDocumentReference {.
    constructor, importcpp: "StepAP214_AppliedDocumentReference(@)",
    header: "StepAP214_AppliedDocumentReference.hxx".}
proc Init*(this: var StepAP214_AppliedDocumentReference;
          aAssignedDocument: handle[StepBasic_Document];
          aSource: handle[TCollection_HAsciiString];
          aItems: handle[StepAP214_HArray1OfDocumentReferenceItem]) {.
    importcpp: "Init", header: "StepAP214_AppliedDocumentReference.hxx".}
proc Items*(this: StepAP214_AppliedDocumentReference): handle[
    StepAP214_HArray1OfDocumentReferenceItem] {.noSideEffect, importcpp: "Items",
    header: "StepAP214_AppliedDocumentReference.hxx".}
proc SetItems*(this: var StepAP214_AppliedDocumentReference;
              aItems: handle[StepAP214_HArray1OfDocumentReferenceItem]) {.
    importcpp: "SetItems", header: "StepAP214_AppliedDocumentReference.hxx".}
proc ItemsValue*(this: StepAP214_AppliedDocumentReference; num: Standard_Integer): StepAP214_DocumentReferenceItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AppliedDocumentReference.hxx".}
proc NbItems*(this: StepAP214_AppliedDocumentReference): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AppliedDocumentReference.hxx".}
type
  StepAP214_AppliedDocumentReferencebase_type* = StepBasic_DocumentReference

proc get_type_name*(): cstring {.importcpp: "StepAP214_AppliedDocumentReference::get_type_name(@)",
                              header: "StepAP214_AppliedDocumentReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_AppliedDocumentReference::get_type_descriptor(@)",
    header: "StepAP214_AppliedDocumentReference.hxx".}
proc DynamicType*(this: StepAP214_AppliedDocumentReference): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AppliedDocumentReference.hxx".}