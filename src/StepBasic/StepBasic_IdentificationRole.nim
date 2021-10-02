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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_IdentificationRole"
discard "forward decl of StepBasic_IdentificationRole"
type
  HandleC1C1* = Handle[StepBasicIdentificationRole]

## ! Representation of STEP entity IdentificationRole

type
  StepBasicIdentificationRole* {.importcpp: "StepBasic_IdentificationRole",
                                header: "StepBasic_IdentificationRole.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepBasicIdentificationRole*(): StepBasicIdentificationRole {.
    constructor, importcpp: "StepBasic_IdentificationRole(@)",
    header: "StepBasic_IdentificationRole.hxx".}
proc init*(this: var StepBasicIdentificationRole;
          aName: Handle[TCollectionHAsciiString]; hasDescription: StandardBoolean;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_IdentificationRole.hxx".}
proc name*(this: StepBasicIdentificationRole): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_IdentificationRole.hxx".}
proc setName*(this: var StepBasicIdentificationRole;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_IdentificationRole.hxx".}
proc description*(this: StepBasicIdentificationRole): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepBasic_IdentificationRole.hxx".}
proc setDescription*(this: var StepBasicIdentificationRole;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_IdentificationRole.hxx".}
proc hasDescription*(this: StepBasicIdentificationRole): StandardBoolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_IdentificationRole.hxx".}
type
  StepBasicIdentificationRolebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_IdentificationRole::get_type_name(@)",
                            header: "StepBasic_IdentificationRole.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_IdentificationRole::get_type_descriptor(@)",
    header: "StepBasic_IdentificationRole.hxx".}
proc dynamicType*(this: StepBasicIdentificationRole): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_IdentificationRole.hxx".}