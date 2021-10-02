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

discard "forward decl of StepShape_NonManifoldSurfaceShapeRepresentation"
discard "forward decl of StepShape_NonManifoldSurfaceShapeRepresentation"
type
  HandleC1C1* = Handle[StepShapeNonManifoldSurfaceShapeRepresentation]

## ! Representation of STEP entity NonManifoldSurfaceShapeRepresentation

type
  StepShapeNonManifoldSurfaceShapeRepresentation* {.
      importcpp: "StepShape_NonManifoldSurfaceShapeRepresentation",
      header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx", bycopy.} = object of StepShapeShapeRepresentation ##
                                                                                                                ## !
                                                                                                                ## Empty
                                                                                                                ## constructor


proc constructStepShapeNonManifoldSurfaceShapeRepresentation*(): StepShapeNonManifoldSurfaceShapeRepresentation {.
    constructor, importcpp: "StepShape_NonManifoldSurfaceShapeRepresentation(@)",
    header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx".}
type
  StepShapeNonManifoldSurfaceShapeRepresentationbaseType* = StepShapeShapeRepresentation

proc getTypeName*(): cstring {.importcpp: "StepShape_NonManifoldSurfaceShapeRepresentation::get_type_name(@)", header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_NonManifoldSurfaceShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx".}
proc dynamicType*(this: StepShapeNonManifoldSurfaceShapeRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_NonManifoldSurfaceShapeRepresentation.hxx".}