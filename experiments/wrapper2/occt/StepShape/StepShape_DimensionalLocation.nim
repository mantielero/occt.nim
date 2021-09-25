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

discard "forward decl of StepShape_DimensionalLocation"
discard "forward decl of StepShape_DimensionalLocation"
type
  HandleStepShapeDimensionalLocation* = Handle[StepShapeDimensionalLocation]

## ! Representation of STEP entity DimensionalLocation

type
  StepShapeDimensionalLocation* {.importcpp: "StepShape_DimensionalLocation",
                                 header: "StepShape_DimensionalLocation.hxx",
                                 bycopy.} = object of StepReprShapeAspectRelationship ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructStepShapeDimensionalLocation*(): StepShapeDimensionalLocation {.
    constructor, importcpp: "StepShape_DimensionalLocation(@)",
    header: "StepShape_DimensionalLocation.hxx".}
type
  StepShapeDimensionalLocationbaseType* = StepReprShapeAspectRelationship

proc getTypeName*(): cstring {.importcpp: "StepShape_DimensionalLocation::get_type_name(@)",
                            header: "StepShape_DimensionalLocation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_DimensionalLocation::get_type_descriptor(@)",
    header: "StepShape_DimensionalLocation.hxx".}
proc dynamicType*(this: StepShapeDimensionalLocation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_DimensionalLocation.hxx".}
