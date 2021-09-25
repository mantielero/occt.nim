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

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentReference"
discard "forward decl of StepBasic_DocumentReference"
type
  HandleStepBasicDocumentReference* = Handle[StepBasicDocumentReference]
  StepBasicDocumentReference* {.importcpp: "StepBasic_DocumentReference",
                               header: "StepBasic_DocumentReference.hxx", bycopy.} = object of StandardTransient


proc init0*(this: var StepBasicDocumentReference;
           aAssignedDocument: Handle[StepBasicDocument];
           aSource: Handle[TCollectionHAsciiString]) {.importcpp: "Init0",
    header: "StepBasic_DocumentReference.hxx".}
proc assignedDocument*(this: StepBasicDocumentReference): Handle[StepBasicDocument] {.
    noSideEffect, importcpp: "AssignedDocument",
    header: "StepBasic_DocumentReference.hxx".}
proc setAssignedDocument*(this: var StepBasicDocumentReference;
                         aAssignedDocument: Handle[StepBasicDocument]) {.
    importcpp: "SetAssignedDocument", header: "StepBasic_DocumentReference.hxx".}
proc source*(this: StepBasicDocumentReference): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Source", header: "StepBasic_DocumentReference.hxx".}
proc setSource*(this: var StepBasicDocumentReference;
               aSource: Handle[TCollectionHAsciiString]) {.importcpp: "SetSource",
    header: "StepBasic_DocumentReference.hxx".}
type
  StepBasicDocumentReferencebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DocumentReference::get_type_name(@)",
                            header: "StepBasic_DocumentReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DocumentReference::get_type_descriptor(@)",
    header: "StepBasic_DocumentReference.hxx".}
proc dynamicType*(this: StepBasicDocumentReference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentReference.hxx".}
