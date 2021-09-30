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
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_RepresentationItem"
type
  HandleC1C1* = Handle[StepReprRepresentationItem]
  StepReprRepresentationItem* {.importcpp: "StepRepr_RepresentationItem",
                               header: "StepRepr_RepresentationItem.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## RepresentationItem


proc constructStepReprRepresentationItem*(): StepReprRepresentationItem {.
    constructor, importcpp: "StepRepr_RepresentationItem(@)",
    header: "StepRepr_RepresentationItem.hxx".}
proc init*(this: var StepReprRepresentationItem;
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepRepr_RepresentationItem.hxx".}
proc setName*(this: var StepReprRepresentationItem;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_RepresentationItem.hxx".}
proc name*(this: StepReprRepresentationItem): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_RepresentationItem.hxx".}
type
  StepReprRepresentationItembaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_RepresentationItem::get_type_name(@)",
                            header: "StepRepr_RepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_RepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_RepresentationItem.hxx".}
proc dynamicType*(this: StepReprRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_RepresentationItem.hxx".}

























