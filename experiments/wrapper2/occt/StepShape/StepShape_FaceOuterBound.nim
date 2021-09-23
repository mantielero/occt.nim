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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_FaceBound

discard "forward decl of StepShape_FaceOuterBound"
discard "forward decl of StepShape_FaceOuterBound"
type
  Handle_StepShape_FaceOuterBound* = handle[StepShape_FaceOuterBound]
  StepShape_FaceOuterBound* {.importcpp: "StepShape_FaceOuterBound",
                             header: "StepShape_FaceOuterBound.hxx", bycopy.} = object of StepShape_FaceBound ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## FaceOuterBound


proc constructStepShape_FaceOuterBound*(): StepShape_FaceOuterBound {.constructor,
    importcpp: "StepShape_FaceOuterBound(@)",
    header: "StepShape_FaceOuterBound.hxx".}
type
  StepShape_FaceOuterBoundbase_type* = StepShape_FaceBound

proc get_type_name*(): cstring {.importcpp: "StepShape_FaceOuterBound::get_type_name(@)",
                              header: "StepShape_FaceOuterBound.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_FaceOuterBound::get_type_descriptor(@)",
    header: "StepShape_FaceOuterBound.hxx".}
proc DynamicType*(this: StepShape_FaceOuterBound): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_FaceOuterBound.hxx".}