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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepVisual_HArray1OfLayeredItem, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_LayeredItem"
discard "forward decl of StepVisual_PresentationLayerAssignment"
discard "forward decl of StepVisual_PresentationLayerAssignment"
type
  Handle_StepVisual_PresentationLayerAssignment* = handle[
      StepVisual_PresentationLayerAssignment]
  StepVisual_PresentationLayerAssignment* {.
      importcpp: "StepVisual_PresentationLayerAssignment",
      header: "StepVisual_PresentationLayerAssignment.hxx", bycopy.} = object of Standard_Transient ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## a
                                                                                             ## PresentationLayerAssignment


proc constructStepVisual_PresentationLayerAssignment*(): StepVisual_PresentationLayerAssignment {.
    constructor, importcpp: "StepVisual_PresentationLayerAssignment(@)",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc Init*(this: var StepVisual_PresentationLayerAssignment;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aAssignedItems: handle[StepVisual_HArray1OfLayeredItem]) {.
    importcpp: "Init", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc SetName*(this: var StepVisual_PresentationLayerAssignment;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc Name*(this: StepVisual_PresentationLayerAssignment): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc SetDescription*(this: var StepVisual_PresentationLayerAssignment;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc Description*(this: StepVisual_PresentationLayerAssignment): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc SetAssignedItems*(this: var StepVisual_PresentationLayerAssignment;
                      aAssignedItems: handle[StepVisual_HArray1OfLayeredItem]) {.
    importcpp: "SetAssignedItems",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc AssignedItems*(this: StepVisual_PresentationLayerAssignment): handle[
    StepVisual_HArray1OfLayeredItem] {.noSideEffect, importcpp: "AssignedItems", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc AssignedItemsValue*(this: StepVisual_PresentationLayerAssignment;
                        num: Standard_Integer): StepVisual_LayeredItem {.
    noSideEffect, importcpp: "AssignedItemsValue",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc NbAssignedItems*(this: StepVisual_PresentationLayerAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbAssignedItems",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
type
  StepVisual_PresentationLayerAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_PresentationLayerAssignment::get_type_name(@)", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_PresentationLayerAssignment::get_type_descriptor(@)",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc DynamicType*(this: StepVisual_PresentationLayerAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_PresentationLayerAssignment.hxx".}