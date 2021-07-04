##  Created on: 2001-12-28
##  Created by: Andrey BETENEV
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_ShapeRepresentation

discard "forward decl of StepShape_EdgeBasedWireframeShapeRepresentation"
discard "forward decl of StepShape_EdgeBasedWireframeShapeRepresentation"
type
  Handle_StepShape_EdgeBasedWireframeShapeRepresentation* = handle[
      StepShape_EdgeBasedWireframeShapeRepresentation]

## ! Representation of STEP entity EdgeBasedWireframeShapeRepresentation

type
  StepShape_EdgeBasedWireframeShapeRepresentation* {.
      importcpp: "StepShape_EdgeBasedWireframeShapeRepresentation",
      header: "StepShape_EdgeBasedWireframeShapeRepresentation.hxx", bycopy.} = object of StepShape_ShapeRepresentation ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepShape_EdgeBasedWireframeShapeRepresentation*(): StepShape_EdgeBasedWireframeShapeRepresentation {.
    constructor, importcpp: "StepShape_EdgeBasedWireframeShapeRepresentation(@)",
    header: "StepShape_EdgeBasedWireframeShapeRepresentation.hxx".}
type
  StepShape_EdgeBasedWireframeShapeRepresentationbase_type* = StepShape_ShapeRepresentation

proc get_type_name*(): cstring {.importcpp: "StepShape_EdgeBasedWireframeShapeRepresentation::get_type_name(@)", header: "StepShape_EdgeBasedWireframeShapeRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_EdgeBasedWireframeShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_EdgeBasedWireframeShapeRepresentation.hxx".}
proc DynamicType*(this: StepShape_EdgeBasedWireframeShapeRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_EdgeBasedWireframeShapeRepresentation.hxx".}