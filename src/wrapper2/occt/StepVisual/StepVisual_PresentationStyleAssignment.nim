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
  StepVisual_HArray1OfPresentationStyleSelect, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of StepVisual_PresentationStyleSelect"
discard "forward decl of StepVisual_PresentationStyleAssignment"
discard "forward decl of StepVisual_PresentationStyleAssignment"
type
  Handle_StepVisual_PresentationStyleAssignment* = handle[
      StepVisual_PresentationStyleAssignment]
  StepVisual_PresentationStyleAssignment* {.
      importcpp: "StepVisual_PresentationStyleAssignment",
      header: "StepVisual_PresentationStyleAssignment.hxx", bycopy.} = object of Standard_Transient ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## a
                                                                                             ## PresentationStyleAssignment


proc constructStepVisual_PresentationStyleAssignment*(): StepVisual_PresentationStyleAssignment {.
    constructor, importcpp: "StepVisual_PresentationStyleAssignment(@)",
    header: "StepVisual_PresentationStyleAssignment.hxx".}
proc Init*(this: var StepVisual_PresentationStyleAssignment;
          aStyles: handle[StepVisual_HArray1OfPresentationStyleSelect]) {.
    importcpp: "Init", header: "StepVisual_PresentationStyleAssignment.hxx".}
proc SetStyles*(this: var StepVisual_PresentationStyleAssignment;
               aStyles: handle[StepVisual_HArray1OfPresentationStyleSelect]) {.
    importcpp: "SetStyles", header: "StepVisual_PresentationStyleAssignment.hxx".}
proc Styles*(this: StepVisual_PresentationStyleAssignment): handle[
    StepVisual_HArray1OfPresentationStyleSelect] {.noSideEffect,
    importcpp: "Styles", header: "StepVisual_PresentationStyleAssignment.hxx".}
proc StylesValue*(this: StepVisual_PresentationStyleAssignment;
                 num: Standard_Integer): StepVisual_PresentationStyleSelect {.
    noSideEffect, importcpp: "StylesValue",
    header: "StepVisual_PresentationStyleAssignment.hxx".}
proc NbStyles*(this: StepVisual_PresentationStyleAssignment): Standard_Integer {.
    noSideEffect, importcpp: "NbStyles",
    header: "StepVisual_PresentationStyleAssignment.hxx".}
type
  StepVisual_PresentationStyleAssignmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_PresentationStyleAssignment::get_type_name(@)", header: "StepVisual_PresentationStyleAssignment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_PresentationStyleAssignment::get_type_descriptor(@)",
    header: "StepVisual_PresentationStyleAssignment.hxx".}
proc DynamicType*(this: StepVisual_PresentationStyleAssignment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_PresentationStyleAssignment.hxx".}