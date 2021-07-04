##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_AngleRelator,
  StepShape_DimensionalSize

discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_AngularSize"
discard "forward decl of StepShape_AngularSize"
type
  Handle_StepShape_AngularSize* = handle[StepShape_AngularSize]

## ! Representation of STEP entity AngularSize

type
  StepShape_AngularSize* {.importcpp: "StepShape_AngularSize",
                          header: "StepShape_AngularSize.hxx", bycopy.} = object of StepShape_DimensionalSize ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepShape_AngularSize*(): StepShape_AngularSize {.constructor,
    importcpp: "StepShape_AngularSize(@)", header: "StepShape_AngularSize.hxx".}
proc Init*(this: var StepShape_AngularSize;
          aDimensionalSize_AppliesTo: handle[StepRepr_ShapeAspect];
          aDimensionalSize_Name: handle[TCollection_HAsciiString];
          aAngleSelection: StepShape_AngleRelator) {.importcpp: "Init",
    header: "StepShape_AngularSize.hxx".}
proc AngleSelection*(this: StepShape_AngularSize): StepShape_AngleRelator {.
    noSideEffect, importcpp: "AngleSelection", header: "StepShape_AngularSize.hxx".}
proc SetAngleSelection*(this: var StepShape_AngularSize;
                       AngleSelection: StepShape_AngleRelator) {.
    importcpp: "SetAngleSelection", header: "StepShape_AngularSize.hxx".}
type
  StepShape_AngularSizebase_type* = StepShape_DimensionalSize

proc get_type_name*(): cstring {.importcpp: "StepShape_AngularSize::get_type_name(@)",
                              header: "StepShape_AngularSize.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_AngularSize::get_type_descriptor(@)",
    header: "StepShape_AngularSize.hxx".}
proc DynamicType*(this: StepShape_AngularSize): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_AngularSize.hxx".}