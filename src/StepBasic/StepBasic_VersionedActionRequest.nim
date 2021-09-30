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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepBasic_VersionedActionRequest"
type
  HandleC1C1* = Handle[StepBasicVersionedActionRequest]

## ! Representation of STEP entity VersionedActionRequest

type
  StepBasicVersionedActionRequest* {.importcpp: "StepBasic_VersionedActionRequest", header: "StepBasic_VersionedActionRequest.hxx",
                                    bycopy.} = object of StandardTransient ## ! Empty
                                                                      ## constructor


proc constructStepBasicVersionedActionRequest*(): StepBasicVersionedActionRequest {.
    constructor, importcpp: "StepBasic_VersionedActionRequest(@)",
    header: "StepBasic_VersionedActionRequest.hxx".}
proc init*(this: var StepBasicVersionedActionRequest;
          aId: Handle[TCollectionHAsciiString];
          aVersion: Handle[TCollectionHAsciiString];
          aPurpose: Handle[TCollectionHAsciiString]; hasDescription: bool;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_VersionedActionRequest.hxx".}
proc id*(this: StepBasicVersionedActionRequest): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_VersionedActionRequest.hxx".}
proc setId*(this: var StepBasicVersionedActionRequest;
           id: Handle[TCollectionHAsciiString]) {.importcpp: "SetId",
    header: "StepBasic_VersionedActionRequest.hxx".}
proc version*(this: StepBasicVersionedActionRequest): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Version",
                              header: "StepBasic_VersionedActionRequest.hxx".}
proc setVersion*(this: var StepBasicVersionedActionRequest;
                version: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetVersion", header: "StepBasic_VersionedActionRequest.hxx".}
proc purpose*(this: StepBasicVersionedActionRequest): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Purpose",
                              header: "StepBasic_VersionedActionRequest.hxx".}
proc setPurpose*(this: var StepBasicVersionedActionRequest;
                purpose: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_VersionedActionRequest.hxx".}
proc description*(this: StepBasicVersionedActionRequest): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepBasic_VersionedActionRequest.hxx".}
proc setDescription*(this: var StepBasicVersionedActionRequest;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_VersionedActionRequest.hxx".}
proc hasDescription*(this: StepBasicVersionedActionRequest): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_VersionedActionRequest.hxx".}
type
  StepBasicVersionedActionRequestbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_VersionedActionRequest::get_type_name(@)",
                            header: "StepBasic_VersionedActionRequest.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_VersionedActionRequest::get_type_descriptor(@)",
    header: "StepBasic_VersionedActionRequest.hxx".}
proc dynamicType*(this: StepBasicVersionedActionRequest): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_VersionedActionRequest.hxx".}

























