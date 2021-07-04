##  Created on: 1998-08-04
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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP214_HArray1OfAutoDesignReferencingItem,
  ../StepBasic/StepBasic_DocumentReference, ../Standard/Standard_Integer

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP214_AutoDesignReferencingItem"
discard "forward decl of StepAP214_AutoDesignDocumentReference"
discard "forward decl of StepAP214_AutoDesignDocumentReference"
type
  Handle_StepAP214_AutoDesignDocumentReference* = handle[
      StepAP214_AutoDesignDocumentReference]
  StepAP214_AutoDesignDocumentReference* {.
      importcpp: "StepAP214_AutoDesignDocumentReference",
      header: "StepAP214_AutoDesignDocumentReference.hxx", bycopy.} = object of StepBasic_DocumentReference


proc constructStepAP214_AutoDesignDocumentReference*(): StepAP214_AutoDesignDocumentReference {.
    constructor, importcpp: "StepAP214_AutoDesignDocumentReference(@)",
    header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc Init*(this: var StepAP214_AutoDesignDocumentReference;
          aAssignedDocument: handle[StepBasic_Document];
          aSource: handle[TCollection_HAsciiString];
          aItems: handle[StepAP214_HArray1OfAutoDesignReferencingItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc Items*(this: StepAP214_AutoDesignDocumentReference): handle[
    StepAP214_HArray1OfAutoDesignReferencingItem] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc SetItems*(this: var StepAP214_AutoDesignDocumentReference;
              aItems: handle[StepAP214_HArray1OfAutoDesignReferencingItem]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc ItemsValue*(this: StepAP214_AutoDesignDocumentReference; num: Standard_Integer): StepAP214_AutoDesignReferencingItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc NbItems*(this: StepAP214_AutoDesignDocumentReference): Standard_Integer {.
    noSideEffect, importcpp: "NbItems",
    header: "StepAP214_AutoDesignDocumentReference.hxx".}
type
  StepAP214_AutoDesignDocumentReferencebase_type* = StepBasic_DocumentReference

proc get_type_name*(): cstring {.importcpp: "StepAP214_AutoDesignDocumentReference::get_type_name(@)", header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_AutoDesignDocumentReference::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc DynamicType*(this: StepAP214_AutoDesignDocumentReference): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP214_AutoDesignDocumentReference.hxx".}