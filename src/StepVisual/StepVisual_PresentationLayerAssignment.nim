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
discard "forward decl of StepVisual_LayeredItem"
discard "forward decl of StepVisual_PresentationLayerAssignment"
discard "forward decl of StepVisual_PresentationLayerAssignment"
type
  HandleC1C1* = Handle[StepVisualPresentationLayerAssignment]
  StepVisualPresentationLayerAssignment* {.
      importcpp: "StepVisual_PresentationLayerAssignment",
      header: "StepVisual_PresentationLayerAssignment.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## PresentationLayerAssignment


proc constructStepVisualPresentationLayerAssignment*(): StepVisualPresentationLayerAssignment {.
    constructor, importcpp: "StepVisual_PresentationLayerAssignment(@)",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc init*(this: var StepVisualPresentationLayerAssignment;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aAssignedItems: Handle[StepVisualHArray1OfLayeredItem]) {.
    importcpp: "Init", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc setName*(this: var StepVisualPresentationLayerAssignment;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc name*(this: StepVisualPresentationLayerAssignment): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc setDescription*(this: var StepVisualPresentationLayerAssignment;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc description*(this: StepVisualPresentationLayerAssignment): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc setAssignedItems*(this: var StepVisualPresentationLayerAssignment;
                      aAssignedItems: Handle[StepVisualHArray1OfLayeredItem]) {.
    importcpp: "SetAssignedItems",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc assignedItems*(this: StepVisualPresentationLayerAssignment): Handle[
    StepVisualHArray1OfLayeredItem] {.noSideEffect, importcpp: "AssignedItems", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc assignedItemsValue*(this: StepVisualPresentationLayerAssignment; num: cint): StepVisualLayeredItem {.
    noSideEffect, importcpp: "AssignedItemsValue",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc nbAssignedItems*(this: StepVisualPresentationLayerAssignment): cint {.
    noSideEffect, importcpp: "NbAssignedItems",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
type
  StepVisualPresentationLayerAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_PresentationLayerAssignment::get_type_name(@)", header: "StepVisual_PresentationLayerAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_PresentationLayerAssignment::get_type_descriptor(@)",
    header: "StepVisual_PresentationLayerAssignment.hxx".}
proc dynamicType*(this: StepVisualPresentationLayerAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PresentationLayerAssignment.hxx".}

























