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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_Representation

discard "forward decl of StepShape_ConnectedFaceShapeRepresentation"
discard "forward decl of StepShape_ConnectedFaceShapeRepresentation"
type
  Handle_StepShape_ConnectedFaceShapeRepresentation* = handle[
      StepShape_ConnectedFaceShapeRepresentation]

## ! Representation of STEP entity ConnectedFaceShapeRepresentation

type
  StepShape_ConnectedFaceShapeRepresentation* {.
      importcpp: "StepShape_ConnectedFaceShapeRepresentation",
      header: "StepShape_ConnectedFaceShapeRepresentation.hxx", bycopy.} = object of StepRepr_Representation ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepShape_ConnectedFaceShapeRepresentation*(): StepShape_ConnectedFaceShapeRepresentation {.
    constructor, importcpp: "StepShape_ConnectedFaceShapeRepresentation(@)",
    header: "StepShape_ConnectedFaceShapeRepresentation.hxx".}
type
  StepShape_ConnectedFaceShapeRepresentationbase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepShape_ConnectedFaceShapeRepresentation::get_type_name(@)", header: "StepShape_ConnectedFaceShapeRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_ConnectedFaceShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_ConnectedFaceShapeRepresentation.hxx".}
proc DynamicType*(this: StepShape_ConnectedFaceShapeRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_ConnectedFaceShapeRepresentation.hxx".}