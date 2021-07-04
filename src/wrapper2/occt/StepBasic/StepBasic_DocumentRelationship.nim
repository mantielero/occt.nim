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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_DocumentRelationship"
discard "forward decl of StepBasic_DocumentRelationship"
type
  Handle_StepBasic_DocumentRelationship* = handle[StepBasic_DocumentRelationship]
  StepBasic_DocumentRelationship* {.importcpp: "StepBasic_DocumentRelationship", header: "StepBasic_DocumentRelationship.hxx",
                                   bycopy.} = object of Standard_Transient


proc constructStepBasic_DocumentRelationship*(): StepBasic_DocumentRelationship {.
    constructor, importcpp: "StepBasic_DocumentRelationship(@)",
    header: "StepBasic_DocumentRelationship.hxx".}
proc Init*(this: var StepBasic_DocumentRelationship;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aRelating: handle[StepBasic_Document];
          aRelated: handle[StepBasic_Document]) {.importcpp: "Init",
    header: "StepBasic_DocumentRelationship.hxx".}
proc Name*(this: StepBasic_DocumentRelationship): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_DocumentRelationship.hxx".}
proc SetName*(this: var StepBasic_DocumentRelationship;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_DocumentRelationship.hxx".}
proc Description*(this: StepBasic_DocumentRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_DocumentRelationship.hxx".}
proc SetDescription*(this: var StepBasic_DocumentRelationship;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_DocumentRelationship.hxx".}
proc RelatingDocument*(this: StepBasic_DocumentRelationship): handle[
    StepBasic_Document] {.noSideEffect, importcpp: "RelatingDocument",
                         header: "StepBasic_DocumentRelationship.hxx".}
proc SetRelatingDocument*(this: var StepBasic_DocumentRelationship;
                         aRelating: handle[StepBasic_Document]) {.
    importcpp: "SetRelatingDocument", header: "StepBasic_DocumentRelationship.hxx".}
proc RelatedDocument*(this: StepBasic_DocumentRelationship): handle[
    StepBasic_Document] {.noSideEffect, importcpp: "RelatedDocument",
                         header: "StepBasic_DocumentRelationship.hxx".}
proc SetRelatedDocument*(this: var StepBasic_DocumentRelationship;
                        aRelated: handle[StepBasic_Document]) {.
    importcpp: "SetRelatedDocument", header: "StepBasic_DocumentRelationship.hxx".}
type
  StepBasic_DocumentRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DocumentRelationship::get_type_name(@)",
                              header: "StepBasic_DocumentRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DocumentRelationship::get_type_descriptor(@)",
    header: "StepBasic_DocumentRelationship.hxx".}
proc DynamicType*(this: StepBasic_DocumentRelationship): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentRelationship.hxx".}