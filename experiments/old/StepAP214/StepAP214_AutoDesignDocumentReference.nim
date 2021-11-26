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

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP214_AutoDesignReferencingItem"
discard "forward decl of StepAP214_AutoDesignDocumentReference"
discard "forward decl of StepAP214_AutoDesignDocumentReference"
type
  HandleC1C1* = Handle[StepAP214AutoDesignDocumentReference]
  StepAP214AutoDesignDocumentReference* {.
      importcpp: "StepAP214_AutoDesignDocumentReference",
      header: "StepAP214_AutoDesignDocumentReference.hxx", bycopy.} = object of StepBasicDocumentReference


proc constructStepAP214AutoDesignDocumentReference*(): StepAP214AutoDesignDocumentReference {.
    constructor, importcpp: "StepAP214_AutoDesignDocumentReference(@)",
    header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc init*(this: var StepAP214AutoDesignDocumentReference;
          aAssignedDocument: Handle[StepBasicDocument];
          aSource: Handle[TCollectionHAsciiString];
          aItems: Handle[StepAP214HArray1OfAutoDesignReferencingItem]) {.
    importcpp: "Init", header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc items*(this: StepAP214AutoDesignDocumentReference): Handle[
    StepAP214HArray1OfAutoDesignReferencingItem] {.noSideEffect,
    importcpp: "Items", header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc setItems*(this: var StepAP214AutoDesignDocumentReference;
              aItems: Handle[StepAP214HArray1OfAutoDesignReferencingItem]) {.
    importcpp: "SetItems", header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc itemsValue*(this: StepAP214AutoDesignDocumentReference; num: int): StepAP214AutoDesignReferencingItem {.
    noSideEffect, importcpp: "ItemsValue",
    header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc nbItems*(this: StepAP214AutoDesignDocumentReference): int {.noSideEffect,
    importcpp: "NbItems", header: "StepAP214_AutoDesignDocumentReference.hxx".}
type
  StepAP214AutoDesignDocumentReferencebaseType* = StepBasicDocumentReference

proc getTypeName*(): cstring {.importcpp: "StepAP214_AutoDesignDocumentReference::get_type_name(@)",
                            header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_AutoDesignDocumentReference::get_type_descriptor(@)",
    header: "StepAP214_AutoDesignDocumentReference.hxx".}
proc dynamicType*(this: StepAP214AutoDesignDocumentReference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_AutoDesignDocumentReference.hxx".}