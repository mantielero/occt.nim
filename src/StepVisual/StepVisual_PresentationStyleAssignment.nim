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

discard "forward decl of StepVisual_PresentationStyleSelect"
discard "forward decl of StepVisual_PresentationStyleAssignment"
discard "forward decl of StepVisual_PresentationStyleAssignment"
type
  HandleC1C1* = Handle[StepVisualPresentationStyleAssignment]
  StepVisualPresentationStyleAssignment* {.
      importcpp: "StepVisual_PresentationStyleAssignment",
      header: "StepVisual_PresentationStyleAssignment.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## PresentationStyleAssignment


proc constructStepVisualPresentationStyleAssignment*(): StepVisualPresentationStyleAssignment {.
    constructor, importcpp: "StepVisual_PresentationStyleAssignment(@)",
    header: "StepVisual_PresentationStyleAssignment.hxx".}
proc init*(this: var StepVisualPresentationStyleAssignment;
          aStyles: Handle[StepVisualHArray1OfPresentationStyleSelect]) {.
    importcpp: "Init", header: "StepVisual_PresentationStyleAssignment.hxx".}
proc setStyles*(this: var StepVisualPresentationStyleAssignment;
               aStyles: Handle[StepVisualHArray1OfPresentationStyleSelect]) {.
    importcpp: "SetStyles", header: "StepVisual_PresentationStyleAssignment.hxx".}
proc styles*(this: StepVisualPresentationStyleAssignment): Handle[
    StepVisualHArray1OfPresentationStyleSelect] {.noSideEffect,
    importcpp: "Styles", header: "StepVisual_PresentationStyleAssignment.hxx".}
proc stylesValue*(this: StepVisualPresentationStyleAssignment; num: cint): StepVisualPresentationStyleSelect {.
    noSideEffect, importcpp: "StylesValue",
    header: "StepVisual_PresentationStyleAssignment.hxx".}
proc nbStyles*(this: StepVisualPresentationStyleAssignment): cint {.noSideEffect,
    importcpp: "NbStyles", header: "StepVisual_PresentationStyleAssignment.hxx".}
type
  StepVisualPresentationStyleAssignmentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_PresentationStyleAssignment::get_type_name(@)", header: "StepVisual_PresentationStyleAssignment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_PresentationStyleAssignment::get_type_descriptor(@)",
    header: "StepVisual_PresentationStyleAssignment.hxx".}
proc dynamicType*(this: StepVisualPresentationStyleAssignment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PresentationStyleAssignment.hxx".}

























