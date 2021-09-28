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

discard "forward decl of StepBasic_MeasureValueMember"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ValueRepresentationItem"
discard "forward decl of StepRepr_ValueRepresentationItem"
type
  HandleC1C1* = Handle[StepReprValueRepresentationItem]
  StepReprValueRepresentationItem* {.importcpp: "StepRepr_ValueRepresentationItem", header: "StepRepr_ValueRepresentationItem.hxx",
                                    bycopy.} = object of StepReprRepresentationItem ## !
                                                                               ## Returns a
                                                                               ## ValueRepresentationItem


proc constructStepReprValueRepresentationItem*(): StepReprValueRepresentationItem {.
    constructor, importcpp: "StepRepr_ValueRepresentationItem(@)",
    header: "StepRepr_ValueRepresentationItem.hxx".}
proc init*(this: var StepReprValueRepresentationItem;
          theName: Handle[TCollectionHAsciiString];
          theValueComponentMember: Handle[StepBasicMeasureValueMember]) {.
    importcpp: "Init", header: "StepRepr_ValueRepresentationItem.hxx".}
proc setValueComponentMember*(this: var StepReprValueRepresentationItem;
    theValueComponentMember: Handle[StepBasicMeasureValueMember]) {.
    importcpp: "SetValueComponentMember",
    header: "StepRepr_ValueRepresentationItem.hxx".}
proc valueComponentMember*(this: StepReprValueRepresentationItem): Handle[
    StepBasicMeasureValueMember] {.noSideEffect,
                                  importcpp: "ValueComponentMember", header: "StepRepr_ValueRepresentationItem.hxx".}
type
  StepReprValueRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepRepr_ValueRepresentationItem::get_type_name(@)",
                            header: "StepRepr_ValueRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_ValueRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_ValueRepresentationItem.hxx".}
proc dynamicType*(this: StepReprValueRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_ValueRepresentationItem.hxx".}

























