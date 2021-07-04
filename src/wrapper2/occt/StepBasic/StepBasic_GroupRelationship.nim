##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_GroupRelationship"
discard "forward decl of StepBasic_GroupRelationship"
type
  Handle_StepBasic_GroupRelationship* = handle[StepBasic_GroupRelationship]

## ! Representation of STEP entity GroupRelationship

type
  StepBasic_GroupRelationship* {.importcpp: "StepBasic_GroupRelationship",
                                header: "StepBasic_GroupRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepBasic_GroupRelationship*(): StepBasic_GroupRelationship {.
    constructor, importcpp: "StepBasic_GroupRelationship(@)",
    header: "StepBasic_GroupRelationship.hxx".}
proc Init*(this: var StepBasic_GroupRelationship;
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aRelatingGroup: handle[StepBasic_Group];
          aRelatedGroup: handle[StepBasic_Group]) {.importcpp: "Init",
    header: "StepBasic_GroupRelationship.hxx".}
proc Name*(this: StepBasic_GroupRelationship): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_GroupRelationship.hxx".}
proc SetName*(this: var StepBasic_GroupRelationship;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_GroupRelationship.hxx".}
proc Description*(this: StepBasic_GroupRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_GroupRelationship.hxx".}
proc SetDescription*(this: var StepBasic_GroupRelationship;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_GroupRelationship.hxx".}
proc HasDescription*(this: StepBasic_GroupRelationship): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_GroupRelationship.hxx".}
proc RelatingGroup*(this: StepBasic_GroupRelationship): handle[StepBasic_Group] {.
    noSideEffect, importcpp: "RelatingGroup",
    header: "StepBasic_GroupRelationship.hxx".}
proc SetRelatingGroup*(this: var StepBasic_GroupRelationship;
                      RelatingGroup: handle[StepBasic_Group]) {.
    importcpp: "SetRelatingGroup", header: "StepBasic_GroupRelationship.hxx".}
proc RelatedGroup*(this: StepBasic_GroupRelationship): handle[StepBasic_Group] {.
    noSideEffect, importcpp: "RelatedGroup",
    header: "StepBasic_GroupRelationship.hxx".}
proc SetRelatedGroup*(this: var StepBasic_GroupRelationship;
                     RelatedGroup: handle[StepBasic_Group]) {.
    importcpp: "SetRelatedGroup", header: "StepBasic_GroupRelationship.hxx".}
type
  StepBasic_GroupRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_GroupRelationship::get_type_name(@)",
                              header: "StepBasic_GroupRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_GroupRelationship::get_type_descriptor(@)",
    header: "StepBasic_GroupRelationship.hxx".}
proc DynamicType*(this: StepBasic_GroupRelationship): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_GroupRelationship.hxx".}