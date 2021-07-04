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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_RepresentationItem"
type
  Handle_StepRepr_RepresentationItem* = handle[StepRepr_RepresentationItem]
  StepRepr_RepresentationItem* {.importcpp: "StepRepr_RepresentationItem",
                                header: "StepRepr_RepresentationItem.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## RepresentationItem


proc constructStepRepr_RepresentationItem*(): StepRepr_RepresentationItem {.
    constructor, importcpp: "StepRepr_RepresentationItem(@)",
    header: "StepRepr_RepresentationItem.hxx".}
proc Init*(this: var StepRepr_RepresentationItem;
          aName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepRepr_RepresentationItem.hxx".}
proc SetName*(this: var StepRepr_RepresentationItem;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_RepresentationItem.hxx".}
proc Name*(this: StepRepr_RepresentationItem): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_RepresentationItem.hxx".}
type
  StepRepr_RepresentationItembase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_RepresentationItem::get_type_name(@)",
                              header: "StepRepr_RepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_RepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_RepresentationItem.hxx".}
proc DynamicType*(this: StepRepr_RepresentationItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_RepresentationItem.hxx".}