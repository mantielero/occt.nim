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
  StepShape_DimensionalLocation, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepShape_AngularLocation"
discard "forward decl of StepShape_AngularLocation"
type
  Handle_StepShape_AngularLocation* = handle[StepShape_AngularLocation]

## ! Representation of STEP entity AngularLocation

type
  StepShape_AngularLocation* {.importcpp: "StepShape_AngularLocation",
                              header: "StepShape_AngularLocation.hxx", bycopy.} = object of StepShape_DimensionalLocation ##
                                                                                                                   ## !
                                                                                                                   ## Empty
                                                                                                                   ## constructor


proc constructStepShape_AngularLocation*(): StepShape_AngularLocation {.
    constructor, importcpp: "StepShape_AngularLocation(@)",
    header: "StepShape_AngularLocation.hxx".}
proc Init*(this: var StepShape_AngularLocation;
          aShapeAspectRelationship_Name: handle[TCollection_HAsciiString];
          hasShapeAspectRelationship_Description: Standard_Boolean;
    aShapeAspectRelationship_Description: handle[TCollection_HAsciiString];
    aShapeAspectRelationship_RelatingShapeAspect: handle[StepRepr_ShapeAspect];
    aShapeAspectRelationship_RelatedShapeAspect: handle[StepRepr_ShapeAspect];
          aAngleSelection: StepShape_AngleRelator) {.importcpp: "Init",
    header: "StepShape_AngularLocation.hxx".}
proc AngleSelection*(this: StepShape_AngularLocation): StepShape_AngleRelator {.
    noSideEffect, importcpp: "AngleSelection",
    header: "StepShape_AngularLocation.hxx".}
proc SetAngleSelection*(this: var StepShape_AngularLocation;
                       AngleSelection: StepShape_AngleRelator) {.
    importcpp: "SetAngleSelection", header: "StepShape_AngularLocation.hxx".}
type
  StepShape_AngularLocationbase_type* = StepShape_DimensionalLocation

proc get_type_name*(): cstring {.importcpp: "StepShape_AngularLocation::get_type_name(@)",
                              header: "StepShape_AngularLocation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_AngularLocation::get_type_descriptor(@)",
    header: "StepShape_AngularLocation.hxx".}
proc DynamicType*(this: StepShape_AngularLocation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_AngularLocation.hxx".}