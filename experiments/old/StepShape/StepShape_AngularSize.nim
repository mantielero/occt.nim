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

discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_AngularSize"
discard "forward decl of StepShape_AngularSize"
type
  HandleC1C1* = Handle[StepShapeAngularSize]

## ! Representation of STEP entity AngularSize

type
  StepShapeAngularSize* {.importcpp: "StepShape_AngularSize",
                         header: "StepShape_AngularSize.hxx", bycopy.} = object of StepShapeDimensionalSize ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor


proc constructStepShapeAngularSize*(): StepShapeAngularSize {.constructor,
    importcpp: "StepShape_AngularSize(@)", header: "StepShape_AngularSize.hxx".}
proc init*(this: var StepShapeAngularSize;
          aDimensionalSizeAppliesTo: Handle[StepReprShapeAspect];
          aDimensionalSizeName: Handle[TCollectionHAsciiString];
          aAngleSelection: StepShapeAngleRelator) {.importcpp: "Init",
    header: "StepShape_AngularSize.hxx".}
proc angleSelection*(this: StepShapeAngularSize): StepShapeAngleRelator {.
    noSideEffect, importcpp: "AngleSelection", header: "StepShape_AngularSize.hxx".}
proc setAngleSelection*(this: var StepShapeAngularSize;
                       angleSelection: StepShapeAngleRelator) {.
    importcpp: "SetAngleSelection", header: "StepShape_AngularSize.hxx".}
type
  StepShapeAngularSizebaseType* = StepShapeDimensionalSize

proc getTypeName*(): cstring {.importcpp: "StepShape_AngularSize::get_type_name(@)",
                            header: "StepShape_AngularSize.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_AngularSize::get_type_descriptor(@)",
    header: "StepShape_AngularSize.hxx".}
proc dynamicType*(this: StepShapeAngularSize): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_AngularSize.hxx".}