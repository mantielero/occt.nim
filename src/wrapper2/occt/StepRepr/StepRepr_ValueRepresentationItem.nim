##  Created on: 2015-09-09
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_RepresentationItem

discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ValueRepresentationItem"
discard "forward decl of StepRepr_ValueRepresentationItem"
type
  Handle_StepRepr_ValueRepresentationItem* = handle[
      StepRepr_ValueRepresentationItem]
  StepRepr_ValueRepresentationItem* {.importcpp: "StepRepr_ValueRepresentationItem", header: "StepRepr_ValueRepresentationItem.hxx",
                                     bycopy.} = object of StepRepr_RepresentationItem ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## ValueRepresentationItem


proc constructStepRepr_ValueRepresentationItem*(): StepRepr_ValueRepresentationItem {.
    constructor, importcpp: "StepRepr_ValueRepresentationItem(@)",
    header: "StepRepr_ValueRepresentationItem.hxx".}
proc Init*(this: var StepRepr_ValueRepresentationItem;
          theName: handle[TCollection_HAsciiString];
          theValueComponentMember: handle[StepBasic_MeasureValueMember]) {.
    importcpp: "Init", header: "StepRepr_ValueRepresentationItem.hxx".}
proc SetValueComponentMember*(this: var StepRepr_ValueRepresentationItem;
    theValueComponentMember: handle[StepBasic_MeasureValueMember]) {.
    importcpp: "SetValueComponentMember",
    header: "StepRepr_ValueRepresentationItem.hxx".}
proc ValueComponentMember*(this: StepRepr_ValueRepresentationItem): handle[
    StepBasic_MeasureValueMember] {.noSideEffect,
                                   importcpp: "ValueComponentMember", header: "StepRepr_ValueRepresentationItem.hxx".}
type
  StepRepr_ValueRepresentationItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepRepr_ValueRepresentationItem::get_type_name(@)",
                              header: "StepRepr_ValueRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_ValueRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_ValueRepresentationItem.hxx".}
proc DynamicType*(this: StepRepr_ValueRepresentationItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ValueRepresentationItem.hxx".}