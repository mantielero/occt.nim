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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepBasic/StepBasic_Group,
  ../Standard/Standard_Boolean

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP214_RepItemGroup"
discard "forward decl of StepAP214_RepItemGroup"
type
  Handle_StepAP214_RepItemGroup* = handle[StepAP214_RepItemGroup]

## ! Representation of STEP entity RepItemGroup

type
  StepAP214_RepItemGroup* {.importcpp: "StepAP214_RepItemGroup",
                           header: "StepAP214_RepItemGroup.hxx", bycopy.} = object of StepBasic_Group ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepAP214_RepItemGroup*(): StepAP214_RepItemGroup {.constructor,
    importcpp: "StepAP214_RepItemGroup(@)", header: "StepAP214_RepItemGroup.hxx".}
proc Init*(this: var StepAP214_RepItemGroup;
          aGroup_Name: handle[TCollection_HAsciiString];
          hasGroup_Description: Standard_Boolean;
          aGroup_Description: handle[TCollection_HAsciiString];
          aRepresentationItem_Name: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepAP214_RepItemGroup.hxx".}
proc RepresentationItem*(this: StepAP214_RepItemGroup): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                  header: "StepAP214_RepItemGroup.hxx".}
proc SetRepresentationItem*(this: var StepAP214_RepItemGroup; RepresentationItem: handle[
    StepRepr_RepresentationItem]) {.importcpp: "SetRepresentationItem",
                                   header: "StepAP214_RepItemGroup.hxx".}
type
  StepAP214_RepItemGroupbase_type* = StepBasic_Group

proc get_type_name*(): cstring {.importcpp: "StepAP214_RepItemGroup::get_type_name(@)",
                              header: "StepAP214_RepItemGroup.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepAP214_RepItemGroup::get_type_descriptor(@)",
    header: "StepAP214_RepItemGroup.hxx".}
proc DynamicType*(this: StepAP214_RepItemGroup): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepAP214_RepItemGroup.hxx".}