##  Created on: 2001-04-24
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of StepShape_DirectedDimensionalLocation"
discard "forward decl of StepShape_DirectedDimensionalLocation"
type
  HandleStepShapeDirectedDimensionalLocation* = Handle[
      StepShapeDirectedDimensionalLocation]

## ! Representation of STEP entity DirectedDimensionalLocation

type
  StepShapeDirectedDimensionalLocation* {.
      importcpp: "StepShape_DirectedDimensionalLocation",
      header: "StepShape_DirectedDimensionalLocation.hxx", bycopy.} = object of StepShapeDimensionalLocation ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepShapeDirectedDimensionalLocation*(): StepShapeDirectedDimensionalLocation {.
    constructor, importcpp: "StepShape_DirectedDimensionalLocation(@)",
    header: "StepShape_DirectedDimensionalLocation.hxx".}
type
  StepShapeDirectedDimensionalLocationbaseType* = StepShapeDimensionalLocation

proc getTypeName*(): cstring {.importcpp: "StepShape_DirectedDimensionalLocation::get_type_name(@)",
                            header: "StepShape_DirectedDimensionalLocation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_DirectedDimensionalLocation::get_type_descriptor(@)",
    header: "StepShape_DirectedDimensionalLocation.hxx".}
proc dynamicType*(this: StepShapeDirectedDimensionalLocation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_DirectedDimensionalLocation.hxx".}
