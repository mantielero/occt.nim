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

discard "forward decl of StepShape_NonManifoldSurfaceShapeRepresentation"
discard "forward decl of StepShape_NonManifoldSurfaceShapeRepresentation"
type
  Handle_StepShape_NonManifoldSurfaceShapeRepresentation* = handle[
      StepShape_NonManifoldSurfaceShapeRepresentation]

## ! Representation of STEP entity NonManifoldSurfaceShapeRepresentation

type
  StepShape_NonManifoldSurfaceShapeRepresentation* {.
      importcpp: "StepShape_NonManifoldSurfaceShapeRepresentation",
      header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx", bycopy.} = object of StepShape_ShapeRepresentation ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepShape_NonManifoldSurfaceShapeRepresentation*(): StepShape_NonManifoldSurfaceShapeRepresentation {.
    constructor, importcpp: "StepShape_NonManifoldSurfaceShapeRepresentation(@)",
    header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx".}
type
  StepShape_NonManifoldSurfaceShapeRepresentationbase_type* = StepShape_ShapeRepresentation

proc get_type_name*(): cstring {.importcpp: "StepShape_NonManifoldSurfaceShapeRepresentation::get_type_name(@)", header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_NonManifoldSurfaceShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx".}
proc DynamicType*(this: StepShape_NonManifoldSurfaceShapeRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx".}