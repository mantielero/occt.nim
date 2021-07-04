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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_DimensionalLocation

discard "forward decl of StepShape_DirectedDimensionalLocation"
discard "forward decl of StepShape_DirectedDimensionalLocation"
type
  Handle_StepShape_DirectedDimensionalLocation* = handle[
      StepShape_DirectedDimensionalLocation]

## ! Representation of STEP entity DirectedDimensionalLocation

type
  StepShape_DirectedDimensionalLocation* {.
      importcpp: "StepShape_DirectedDimensionalLocation",
      header: "StepShape_DirectedDimensionalLocation.hxx", bycopy.} = object of StepShape_DimensionalLocation ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepShape_DirectedDimensionalLocation*(): StepShape_DirectedDimensionalLocation {.
    constructor, importcpp: "StepShape_DirectedDimensionalLocation(@)",
    header: "StepShape_DirectedDimensionalLocation.hxx".}
type
  StepShape_DirectedDimensionalLocationbase_type* = StepShape_DimensionalLocation

proc get_type_name*(): cstring {.importcpp: "StepShape_DirectedDimensionalLocation::get_type_name(@)", header: "StepShape_DirectedDimensionalLocation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_DirectedDimensionalLocation::get_type_descriptor(@)",
    header: "StepShape_DirectedDimensionalLocation.hxx".}
proc DynamicType*(this: StepShape_DirectedDimensionalLocation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_DirectedDimensionalLocation.hxx".}