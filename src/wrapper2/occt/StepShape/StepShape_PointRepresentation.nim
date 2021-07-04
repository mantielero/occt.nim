##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_ShapeRepresentation

discard "forward decl of StepShape_PointRepresentation"
discard "forward decl of StepShape_PointRepresentation"
type
  Handle_StepShape_PointRepresentation* = handle[StepShape_PointRepresentation]

## ! Representation of STEP entity PointRepresentation

type
  StepShape_PointRepresentation* {.importcpp: "StepShape_PointRepresentation",
                                  header: "StepShape_PointRepresentation.hxx",
                                  bycopy.} = object of StepShape_ShapeRepresentation ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructStepShape_PointRepresentation*(): StepShape_PointRepresentation {.
    constructor, importcpp: "StepShape_PointRepresentation(@)",
    header: "StepShape_PointRepresentation.hxx".}
type
  StepShape_PointRepresentationbase_type* = StepShape_ShapeRepresentation

proc get_type_name*(): cstring {.importcpp: "StepShape_PointRepresentation::get_type_name(@)",
                              header: "StepShape_PointRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_PointRepresentation::get_type_descriptor(@)",
    header: "StepShape_PointRepresentation.hxx".}
proc DynamicType*(this: StepShape_PointRepresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_PointRepresentation.hxx".}