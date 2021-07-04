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
discard "forward decl of StepVisual_PreDefinedItem"
discard "forward decl of StepVisual_PreDefinedItem"
type
  Handle_StepVisual_PreDefinedItem* = handle[StepVisual_PreDefinedItem]
  StepVisual_PreDefinedItem* {.importcpp: "StepVisual_PreDefinedItem",
                              header: "StepVisual_PreDefinedItem.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## PreDefinedItem


proc constructStepVisual_PreDefinedItem*(): StepVisual_PreDefinedItem {.
    constructor, importcpp: "StepVisual_PreDefinedItem(@)",
    header: "StepVisual_PreDefinedItem.hxx".}
proc Init*(this: var StepVisual_PreDefinedItem;
          aName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepVisual_PreDefinedItem.hxx".}
proc SetName*(this: var StepVisual_PreDefinedItem;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_PreDefinedItem.hxx".}
proc Name*(this: StepVisual_PreDefinedItem): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_PreDefinedItem.hxx".}
type
  StepVisual_PreDefinedItembase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_PreDefinedItem::get_type_name(@)",
                              header: "StepVisual_PreDefinedItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_PreDefinedItem::get_type_descriptor(@)",
    header: "StepVisual_PreDefinedItem.hxx".}
proc DynamicType*(this: StepVisual_PreDefinedItem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_PreDefinedItem.hxx".}