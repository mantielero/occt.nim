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
  StepVisual_PresentationSizeAssignmentSelect, ../Standard/Standard_Transient

discard "forward decl of StepVisual_PlanarBox"
discard "forward decl of StepVisual_PresentationSizeAssignmentSelect"
discard "forward decl of StepVisual_PresentationSize"
discard "forward decl of StepVisual_PresentationSize"
type
  Handle_StepVisual_PresentationSize* = handle[StepVisual_PresentationSize]
  StepVisual_PresentationSize* {.importcpp: "StepVisual_PresentationSize",
                                header: "StepVisual_PresentationSize.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## PresentationSize


proc constructStepVisual_PresentationSize*(): StepVisual_PresentationSize {.
    constructor, importcpp: "StepVisual_PresentationSize(@)",
    header: "StepVisual_PresentationSize.hxx".}
proc Init*(this: var StepVisual_PresentationSize;
          aUnit: StepVisual_PresentationSizeAssignmentSelect;
          aSize: handle[StepVisual_PlanarBox]) {.importcpp: "Init",
    header: "StepVisual_PresentationSize.hxx".}
proc SetUnit*(this: var StepVisual_PresentationSize;
             aUnit: StepVisual_PresentationSizeAssignmentSelect) {.
    importcpp: "SetUnit", header: "StepVisual_PresentationSize.hxx".}
proc Unit*(this: StepVisual_PresentationSize): StepVisual_PresentationSizeAssignmentSelect {.
    noSideEffect, importcpp: "Unit", header: "StepVisual_PresentationSize.hxx".}
proc SetSize*(this: var StepVisual_PresentationSize;
             aSize: handle[StepVisual_PlanarBox]) {.importcpp: "SetSize",
    header: "StepVisual_PresentationSize.hxx".}
proc Size*(this: StepVisual_PresentationSize): handle[StepVisual_PlanarBox] {.
    noSideEffect, importcpp: "Size", header: "StepVisual_PresentationSize.hxx".}
type
  StepVisual_PresentationSizebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_PresentationSize::get_type_name(@)",
                              header: "StepVisual_PresentationSize.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_PresentationSize::get_type_descriptor(@)",
    header: "StepVisual_PresentationSize.hxx".}
proc DynamicType*(this: StepVisual_PresentationSize): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_PresentationSize.hxx".}