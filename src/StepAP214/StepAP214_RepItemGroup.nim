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

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP214_RepItemGroup"
discard "forward decl of StepAP214_RepItemGroup"
type
  HandleC1C1* = Handle[StepAP214RepItemGroup]

## ! Representation of STEP entity RepItemGroup

type
  StepAP214RepItemGroup* {.importcpp: "StepAP214_RepItemGroup",
                          header: "StepAP214_RepItemGroup.hxx", bycopy.} = object of StepBasicGroup ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructStepAP214RepItemGroup*(): StepAP214RepItemGroup {.constructor,
    importcpp: "StepAP214_RepItemGroup(@)", header: "StepAP214_RepItemGroup.hxx".}
proc init*(this: var StepAP214RepItemGroup;
          aGroupName: Handle[TCollectionHAsciiString];
          hasGroupDescription: StandardBoolean;
          aGroupDescription: Handle[TCollectionHAsciiString];
          aRepresentationItemName: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepAP214_RepItemGroup.hxx".}
proc representationItem*(this: StepAP214RepItemGroup): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                 header: "StepAP214_RepItemGroup.hxx".}
proc setRepresentationItem*(this: var StepAP214RepItemGroup; representationItem: Handle[
    StepReprRepresentationItem]) {.importcpp: "SetRepresentationItem",
                                  header: "StepAP214_RepItemGroup.hxx".}
type
  StepAP214RepItemGroupbaseType* = StepBasicGroup

proc getTypeName*(): cstring {.importcpp: "StepAP214_RepItemGroup::get_type_name(@)",
                            header: "StepAP214_RepItemGroup.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_RepItemGroup::get_type_descriptor(@)",
    header: "StepAP214_RepItemGroup.hxx".}
proc dynamicType*(this: StepAP214RepItemGroup): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepAP214_RepItemGroup.hxx".}