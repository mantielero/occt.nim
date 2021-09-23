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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_ShapeAspectRelationship

discard "forward decl of StepShape_DimensionalLocation"
discard "forward decl of StepShape_DimensionalLocation"
type
  Handle_StepShape_DimensionalLocation* = handle[StepShape_DimensionalLocation]

## ! Representation of STEP entity DimensionalLocation

type
  StepShape_DimensionalLocation* {.importcpp: "StepShape_DimensionalLocation",
                                  header: "StepShape_DimensionalLocation.hxx",
                                  bycopy.} = object of StepRepr_ShapeAspectRelationship ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor


proc constructStepShape_DimensionalLocation*(): StepShape_DimensionalLocation {.
    constructor, importcpp: "StepShape_DimensionalLocation(@)",
    header: "StepShape_DimensionalLocation.hxx".}
type
  StepShape_DimensionalLocationbase_type* = StepRepr_ShapeAspectRelationship

proc get_type_name*(): cstring {.importcpp: "StepShape_DimensionalLocation::get_type_name(@)",
                              header: "StepShape_DimensionalLocation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_DimensionalLocation::get_type_descriptor(@)",
    header: "StepShape_DimensionalLocation.hxx".}
proc DynamicType*(this: StepShape_DimensionalLocation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_DimensionalLocation.hxx".}