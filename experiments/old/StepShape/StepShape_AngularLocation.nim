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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepShape_AngularLocation"
discard "forward decl of StepShape_AngularLocation"
type
  HandleC1C1* = Handle[StepShapeAngularLocation]

## ! Representation of STEP entity AngularLocation

type
  StepShapeAngularLocation* {.importcpp: "StepShape_AngularLocation",
                             header: "StepShape_AngularLocation.hxx", bycopy.} = object of StepShapeDimensionalLocation ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepShapeAngularLocation*(): StepShapeAngularLocation {.constructor,
    importcpp: "StepShape_AngularLocation(@)",
    header: "StepShape_AngularLocation.hxx".}
proc init*(this: var StepShapeAngularLocation;
          aShapeAspectRelationshipName: Handle[TCollectionHAsciiString];
          hasShapeAspectRelationshipDescription: StandardBoolean;
          aShapeAspectRelationshipDescription: Handle[TCollectionHAsciiString];
    aShapeAspectRelationshipRelatingShapeAspect: Handle[StepReprShapeAspect];
    aShapeAspectRelationshipRelatedShapeAspect: Handle[StepReprShapeAspect];
          aAngleSelection: StepShapeAngleRelator) {.importcpp: "Init",
    header: "StepShape_AngularLocation.hxx".}
proc angleSelection*(this: StepShapeAngularLocation): StepShapeAngleRelator {.
    noSideEffect, importcpp: "AngleSelection",
    header: "StepShape_AngularLocation.hxx".}
proc setAngleSelection*(this: var StepShapeAngularLocation;
                       angleSelection: StepShapeAngleRelator) {.
    importcpp: "SetAngleSelection", header: "StepShape_AngularLocation.hxx".}
type
  StepShapeAngularLocationbaseType* = StepShapeDimensionalLocation

proc getTypeName*(): cstring {.importcpp: "StepShape_AngularLocation::get_type_name(@)",
                            header: "StepShape_AngularLocation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_AngularLocation::get_type_descriptor(@)",
    header: "StepShape_AngularLocation.hxx".}
proc dynamicType*(this: StepShapeAngularLocation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_AngularLocation.hxx".}