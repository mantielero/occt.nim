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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_ApprovalRelationship"
discard "forward decl of StepBasic_ApprovalRelationship"
type
  HandleStepBasicApprovalRelationship* = Handle[StepBasicApprovalRelationship]
  StepBasicApprovalRelationship* {.importcpp: "StepBasic_ApprovalRelationship",
                                  header: "StepBasic_ApprovalRelationship.hxx",
                                  bycopy.} = object of StandardTransient ## ! Returns a
                                                                    ## ApprovalRelationship


proc constructStepBasicApprovalRelationship*(): StepBasicApprovalRelationship {.
    constructor, importcpp: "StepBasic_ApprovalRelationship(@)",
    header: "StepBasic_ApprovalRelationship.hxx".}
proc init*(this: var StepBasicApprovalRelationship;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aRelatingApproval: Handle[StepBasicApproval];
          aRelatedApproval: Handle[StepBasicApproval]) {.importcpp: "Init",
    header: "StepBasic_ApprovalRelationship.hxx".}
proc setName*(this: var StepBasicApprovalRelationship;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_ApprovalRelationship.hxx".}
proc name*(this: StepBasicApprovalRelationship): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ApprovalRelationship.hxx".}
proc setDescription*(this: var StepBasicApprovalRelationship;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ApprovalRelationship.hxx".}
proc description*(this: StepBasicApprovalRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepBasic_ApprovalRelationship.hxx".}
proc setRelatingApproval*(this: var StepBasicApprovalRelationship;
                         aRelatingApproval: Handle[StepBasicApproval]) {.
    importcpp: "SetRelatingApproval", header: "StepBasic_ApprovalRelationship.hxx".}
proc relatingApproval*(this: StepBasicApprovalRelationship): Handle[
    StepBasicApproval] {.noSideEffect, importcpp: "RelatingApproval",
                        header: "StepBasic_ApprovalRelationship.hxx".}
proc setRelatedApproval*(this: var StepBasicApprovalRelationship;
                        aRelatedApproval: Handle[StepBasicApproval]) {.
    importcpp: "SetRelatedApproval", header: "StepBasic_ApprovalRelationship.hxx".}
proc relatedApproval*(this: StepBasicApprovalRelationship): Handle[
    StepBasicApproval] {.noSideEffect, importcpp: "RelatedApproval",
                        header: "StepBasic_ApprovalRelationship.hxx".}
type
  StepBasicApprovalRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ApprovalRelationship::get_type_name(@)",
                            header: "StepBasic_ApprovalRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ApprovalRelationship::get_type_descriptor(@)",
    header: "StepBasic_ApprovalRelationship.hxx".}
proc dynamicType*(this: StepBasicApprovalRelationship): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_ApprovalRelationship.hxx".}
