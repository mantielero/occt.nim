##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_ApprovalRelationship"
discard "forward decl of StepBasic_ApprovalRelationship"
type
  Handle_StepBasic_ApprovalRelationship* = handle[StepBasic_ApprovalRelationship]
  StepBasic_ApprovalRelationship* {.importcpp: "StepBasic_ApprovalRelationship", header: "StepBasic_ApprovalRelationship.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Returns a
                                                                      ## ApprovalRelationship


proc constructStepBasic_ApprovalRelationship*(): StepBasic_ApprovalRelationship {.
    constructor, importcpp: "StepBasic_ApprovalRelationship(@)",
    header: "StepBasic_ApprovalRelationship.hxx".}
proc Init*(this: var StepBasic_ApprovalRelationship;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aRelatingApproval: handle[StepBasic_Approval];
          aRelatedApproval: handle[StepBasic_Approval]) {.importcpp: "Init",
    header: "StepBasic_ApprovalRelationship.hxx".}
proc SetName*(this: var StepBasic_ApprovalRelationship;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ApprovalRelationship.hxx".}
proc Name*(this: StepBasic_ApprovalRelationship): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ApprovalRelationship.hxx".}
proc SetDescription*(this: var StepBasic_ApprovalRelationship;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ApprovalRelationship.hxx".}
proc Description*(this: StepBasic_ApprovalRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_ApprovalRelationship.hxx".}
proc SetRelatingApproval*(this: var StepBasic_ApprovalRelationship;
                         aRelatingApproval: handle[StepBasic_Approval]) {.
    importcpp: "SetRelatingApproval", header: "StepBasic_ApprovalRelationship.hxx".}
proc RelatingApproval*(this: StepBasic_ApprovalRelationship): handle[
    StepBasic_Approval] {.noSideEffect, importcpp: "RelatingApproval",
                         header: "StepBasic_ApprovalRelationship.hxx".}
proc SetRelatedApproval*(this: var StepBasic_ApprovalRelationship;
                        aRelatedApproval: handle[StepBasic_Approval]) {.
    importcpp: "SetRelatedApproval", header: "StepBasic_ApprovalRelationship.hxx".}
proc RelatedApproval*(this: StepBasic_ApprovalRelationship): handle[
    StepBasic_Approval] {.noSideEffect, importcpp: "RelatedApproval",
                         header: "StepBasic_ApprovalRelationship.hxx".}
type
  StepBasic_ApprovalRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_ApprovalRelationship::get_type_name(@)",
                              header: "StepBasic_ApprovalRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_ApprovalRelationship::get_type_descriptor(@)",
    header: "StepBasic_ApprovalRelationship.hxx".}
proc DynamicType*(this: StepBasic_ApprovalRelationship): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApprovalRelationship.hxx".}