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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentReference"
discard "forward decl of StepBasic_DocumentReference"
type
  Handle_StepBasic_DocumentReference* = handle[StepBasic_DocumentReference]
  StepBasic_DocumentReference* {.importcpp: "StepBasic_DocumentReference",
                                header: "StepBasic_DocumentReference.hxx", bycopy.} = object of Standard_Transient


proc Init0*(this: var StepBasic_DocumentReference;
           aAssignedDocument: handle[StepBasic_Document];
           aSource: handle[TCollection_HAsciiString]) {.importcpp: "Init0",
    header: "StepBasic_DocumentReference.hxx".}
proc AssignedDocument*(this: StepBasic_DocumentReference): handle[
    StepBasic_Document] {.noSideEffect, importcpp: "AssignedDocument",
                         header: "StepBasic_DocumentReference.hxx".}
proc SetAssignedDocument*(this: var StepBasic_DocumentReference;
                         aAssignedDocument: handle[StepBasic_Document]) {.
    importcpp: "SetAssignedDocument", header: "StepBasic_DocumentReference.hxx".}
proc Source*(this: StepBasic_DocumentReference): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Source", header: "StepBasic_DocumentReference.hxx".}
proc SetSource*(this: var StepBasic_DocumentReference;
               aSource: handle[TCollection_HAsciiString]) {.
    importcpp: "SetSource", header: "StepBasic_DocumentReference.hxx".}
type
  StepBasic_DocumentReferencebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DocumentReference::get_type_name(@)",
                              header: "StepBasic_DocumentReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DocumentReference::get_type_descriptor(@)",
    header: "StepBasic_DocumentReference.hxx".}
proc DynamicType*(this: StepBasic_DocumentReference): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentReference.hxx".}