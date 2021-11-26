##  Created on: 1997-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of StepVisual_PresentationLayerAssignment"
discard "forward decl of StepVisual_PresentationRepresentation"
discard "forward decl of StepVisual_PresentationLayerUsage"
discard "forward decl of StepVisual_PresentationLayerUsage"
type
  HandleC1C1* = Handle[StepVisualPresentationLayerUsage]

## ! Added from StepVisual Rev2 to Rev4

type
  StepVisualPresentationLayerUsage* {.importcpp: "StepVisual_PresentationLayerUsage", header: "StepVisual_PresentationLayerUsage.hxx",
                                     bycopy.} = object of StandardTransient


proc constructStepVisualPresentationLayerUsage*(): StepVisualPresentationLayerUsage {.
    constructor, importcpp: "StepVisual_PresentationLayerUsage(@)",
    header: "StepVisual_PresentationLayerUsage.hxx".}
proc init*(this: var StepVisualPresentationLayerUsage;
          aAssignment: Handle[StepVisualPresentationLayerAssignment];
          aPresentation: Handle[StepVisualPresentationRepresentation]) {.
    importcpp: "Init", header: "StepVisual_PresentationLayerUsage.hxx".}
proc setAssignment*(this: var StepVisualPresentationLayerUsage;
                   aAssignment: Handle[StepVisualPresentationLayerAssignment]) {.
    importcpp: "SetAssignment", header: "StepVisual_PresentationLayerUsage.hxx".}
proc assignment*(this: StepVisualPresentationLayerUsage): Handle[
    StepVisualPresentationLayerAssignment] {.noSideEffect,
    importcpp: "Assignment", header: "StepVisual_PresentationLayerUsage.hxx".}
proc setPresentation*(this: var StepVisualPresentationLayerUsage; aPresentation: Handle[
    StepVisualPresentationRepresentation]) {.importcpp: "SetPresentation",
    header: "StepVisual_PresentationLayerUsage.hxx".}
proc presentation*(this: StepVisualPresentationLayerUsage): Handle[
    StepVisualPresentationRepresentation] {.noSideEffect,
    importcpp: "Presentation", header: "StepVisual_PresentationLayerUsage.hxx".}
type
  StepVisualPresentationLayerUsagebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_PresentationLayerUsage::get_type_name(@)",
                            header: "StepVisual_PresentationLayerUsage.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_PresentationLayerUsage::get_type_descriptor(@)",
    header: "StepVisual_PresentationLayerUsage.hxx".}
proc dynamicType*(this: StepVisualPresentationLayerUsage): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PresentationLayerUsage.hxx".}