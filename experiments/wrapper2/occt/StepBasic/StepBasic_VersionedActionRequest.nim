##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepBasic_VersionedActionRequest"
type
  Handle_StepBasic_VersionedActionRequest* = handle[
      StepBasic_VersionedActionRequest]

## ! Representation of STEP entity VersionedActionRequest

type
  StepBasic_VersionedActionRequest* {.importcpp: "StepBasic_VersionedActionRequest", header: "StepBasic_VersionedActionRequest.hxx",
                                     bycopy.} = object of Standard_Transient ## ! Empty
                                                                        ## constructor


proc constructStepBasic_VersionedActionRequest*(): StepBasic_VersionedActionRequest {.
    constructor, importcpp: "StepBasic_VersionedActionRequest(@)",
    header: "StepBasic_VersionedActionRequest.hxx".}
proc Init*(this: var StepBasic_VersionedActionRequest;
          aId: handle[TCollection_HAsciiString];
          aVersion: handle[TCollection_HAsciiString];
          aPurpose: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_VersionedActionRequest.hxx".}
proc Id*(this: StepBasic_VersionedActionRequest): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_VersionedActionRequest.hxx".}
proc SetId*(this: var StepBasic_VersionedActionRequest;
           Id: handle[TCollection_HAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_VersionedActionRequest.hxx".}
proc Version*(this: StepBasic_VersionedActionRequest): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Version",
                               header: "StepBasic_VersionedActionRequest.hxx".}
proc SetVersion*(this: var StepBasic_VersionedActionRequest;
                Version: handle[TCollection_HAsciiString]) {.
    importcpp: "SetVersion", header: "StepBasic_VersionedActionRequest.hxx".}
proc Purpose*(this: StepBasic_VersionedActionRequest): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Purpose",
                               header: "StepBasic_VersionedActionRequest.hxx".}
proc SetPurpose*(this: var StepBasic_VersionedActionRequest;
                Purpose: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_VersionedActionRequest.hxx".}
proc Description*(this: StepBasic_VersionedActionRequest): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_VersionedActionRequest.hxx".}
proc SetDescription*(this: var StepBasic_VersionedActionRequest;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_VersionedActionRequest.hxx".}
proc HasDescription*(this: StepBasic_VersionedActionRequest): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_VersionedActionRequest.hxx".}
type
  StepBasic_VersionedActionRequestbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_VersionedActionRequest::get_type_name(@)",
                              header: "StepBasic_VersionedActionRequest.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_VersionedActionRequest::get_type_descriptor(@)",
    header: "StepBasic_VersionedActionRequest.hxx".}
proc DynamicType*(this: StepBasic_VersionedActionRequest): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_VersionedActionRequest.hxx".}