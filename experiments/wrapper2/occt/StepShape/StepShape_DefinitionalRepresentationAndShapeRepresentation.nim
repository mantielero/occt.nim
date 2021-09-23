##  Created on: 2000-07-06
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
  ../StepRepr/StepRepr_DefinitionalRepresentation

discard "forward decl of StepShape_DefinitionalRepresentationAndShapeRepresentation"
discard "forward decl of StepShape_DefinitionalRepresentationAndShapeRepresentation"
type
  Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation* = handle[
      StepShape_DefinitionalRepresentationAndShapeRepresentation]

## ! Implements complex type
## ! (DEFINITIONAL_REPRESENTATION,REPRESENTATION,SHAPE_REPRESENTATION)

type
  StepShape_DefinitionalRepresentationAndShapeRepresentation* {.
      importcpp: "StepShape_DefinitionalRepresentationAndShapeRepresentation",
      header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx",
      bycopy.} = object of StepRepr_DefinitionalRepresentation


proc constructStepShape_DefinitionalRepresentationAndShapeRepresentation*(): StepShape_DefinitionalRepresentationAndShapeRepresentation {.
    constructor,
    importcpp: "StepShape_DefinitionalRepresentationAndShapeRepresentation(@)",
    header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx".}
type
  StepShape_DefinitionalRepresentationAndShapeRepresentationbase_type* = StepRepr_DefinitionalRepresentation

proc get_type_name*(): cstring {.importcpp: "StepShape_DefinitionalRepresentationAndShapeRepresentation::get_type_name(@)", header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_DefinitionalRepresentationAndShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx".}
proc DynamicType*(this: StepShape_DefinitionalRepresentationAndShapeRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx".}