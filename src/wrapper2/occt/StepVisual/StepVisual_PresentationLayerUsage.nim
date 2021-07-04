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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepVisual_PresentationLayerAssignment"
discard "forward decl of StepVisual_PresentationRepresentation"
discard "forward decl of StepVisual_PresentationLayerUsage"
discard "forward decl of StepVisual_PresentationLayerUsage"
type
  Handle_StepVisual_PresentationLayerUsage* = handle[
      StepVisual_PresentationLayerUsage]

## ! Added from StepVisual Rev2 to Rev4

type
  StepVisual_PresentationLayerUsage* {.importcpp: "StepVisual_PresentationLayerUsage", header: "StepVisual_PresentationLayerUsage.hxx",
                                      bycopy.} = object of Standard_Transient


proc constructStepVisual_PresentationLayerUsage*(): StepVisual_PresentationLayerUsage {.
    constructor, importcpp: "StepVisual_PresentationLayerUsage(@)",
    header: "StepVisual_PresentationLayerUsage.hxx".}
proc Init*(this: var StepVisual_PresentationLayerUsage;
          aAssignment: handle[StepVisual_PresentationLayerAssignment];
          aPresentation: handle[StepVisual_PresentationRepresentation]) {.
    importcpp: "Init", header: "StepVisual_PresentationLayerUsage.hxx".}
proc SetAssignment*(this: var StepVisual_PresentationLayerUsage;
                   aAssignment: handle[StepVisual_PresentationLayerAssignment]) {.
    importcpp: "SetAssignment", header: "StepVisual_PresentationLayerUsage.hxx".}
proc Assignment*(this: StepVisual_PresentationLayerUsage): handle[
    StepVisual_PresentationLayerAssignment] {.noSideEffect,
    importcpp: "Assignment", header: "StepVisual_PresentationLayerUsage.hxx".}
proc SetPresentation*(this: var StepVisual_PresentationLayerUsage; aPresentation: handle[
    StepVisual_PresentationRepresentation]) {.importcpp: "SetPresentation",
    header: "StepVisual_PresentationLayerUsage.hxx".}
proc Presentation*(this: StepVisual_PresentationLayerUsage): handle[
    StepVisual_PresentationRepresentation] {.noSideEffect,
    importcpp: "Presentation", header: "StepVisual_PresentationLayerUsage.hxx".}
type
  StepVisual_PresentationLayerUsagebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_PresentationLayerUsage::get_type_name(@)",
                              header: "StepVisual_PresentationLayerUsage.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_PresentationLayerUsage::get_type_descriptor(@)",
    header: "StepVisual_PresentationLayerUsage.hxx".}
proc DynamicType*(this: StepVisual_PresentationLayerUsage): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PresentationLayerUsage.hxx".}