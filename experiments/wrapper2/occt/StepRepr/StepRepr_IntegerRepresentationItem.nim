##  Created on: 2015-09-03
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_IntegerRepresentationItem"
discard "forward decl of StepRepr_IntegerRepresentationItem"
type
  Handle_StepRepr_IntegerRepresentationItem* = handle[
      StepRepr_IntegerRepresentationItem]
  StepRepr_IntegerRepresentationItem* {.importcpp: "StepRepr_IntegerRepresentationItem", header: "StepRepr_IntegerRepresentationItem.hxx",
                                       bycopy.} = object of StepRepr_RepresentationItem ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## IntegerRepresentationItem


proc constructStepRepr_IntegerRepresentationItem*(): StepRepr_IntegerRepresentationItem {.
    constructor, importcpp: "StepRepr_IntegerRepresentationItem(@)",
    header: "StepRepr_IntegerRepresentationItem.hxx".}
proc Init*(this: var StepRepr_IntegerRepresentationItem;
          theName: handle[TCollection_HAsciiString]; theValue: Standard_Integer) {.
    importcpp: "Init", header: "StepRepr_IntegerRepresentationItem.hxx".}
proc SetValue*(this: var StepRepr_IntegerRepresentationItem;
              theValue: Standard_Integer) {.importcpp: "SetValue",
    header: "StepRepr_IntegerRepresentationItem.hxx".}
proc Value*(this: StepRepr_IntegerRepresentationItem): Standard_Integer {.
    noSideEffect, importcpp: "Value",
    header: "StepRepr_IntegerRepresentationItem.hxx".}
type
  StepRepr_IntegerRepresentationItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepRepr_IntegerRepresentationItem::get_type_name(@)",
                              header: "StepRepr_IntegerRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_IntegerRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_IntegerRepresentationItem.hxx".}
proc DynamicType*(this: StepRepr_IntegerRepresentationItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_IntegerRepresentationItem.hxx".}