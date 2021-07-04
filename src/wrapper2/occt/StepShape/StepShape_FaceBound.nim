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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepShape_TopologicalRepresentationItem

discard "forward decl of StepShape_Loop"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceBound"
discard "forward decl of StepShape_FaceBound"
type
  Handle_StepShape_FaceBound* = handle[StepShape_FaceBound]
  StepShape_FaceBound* {.importcpp: "StepShape_FaceBound",
                        header: "StepShape_FaceBound.hxx", bycopy.} = object of StepShape_TopologicalRepresentationItem ##
                                                                                                                 ## !
                                                                                                                 ## Returns
                                                                                                                 ## a
                                                                                                                 ## FaceBound


proc constructStepShape_FaceBound*(): StepShape_FaceBound {.constructor,
    importcpp: "StepShape_FaceBound(@)", header: "StepShape_FaceBound.hxx".}
proc Init*(this: var StepShape_FaceBound; aName: handle[TCollection_HAsciiString];
          aBound: handle[StepShape_Loop]; aOrientation: Standard_Boolean) {.
    importcpp: "Init", header: "StepShape_FaceBound.hxx".}
proc SetBound*(this: var StepShape_FaceBound; aBound: handle[StepShape_Loop]) {.
    importcpp: "SetBound", header: "StepShape_FaceBound.hxx".}
proc Bound*(this: StepShape_FaceBound): handle[StepShape_Loop] {.noSideEffect,
    importcpp: "Bound", header: "StepShape_FaceBound.hxx".}
proc SetOrientation*(this: var StepShape_FaceBound; aOrientation: Standard_Boolean) {.
    importcpp: "SetOrientation", header: "StepShape_FaceBound.hxx".}
proc Orientation*(this: StepShape_FaceBound): Standard_Boolean {.noSideEffect,
    importcpp: "Orientation", header: "StepShape_FaceBound.hxx".}
type
  StepShape_FaceBoundbase_type* = StepShape_TopologicalRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_FaceBound::get_type_name(@)",
                              header: "StepShape_FaceBound.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_FaceBound::get_type_descriptor(@)",
    header: "StepShape_FaceBound.hxx".}
proc DynamicType*(this: StepShape_FaceBound): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_FaceBound.hxx".}