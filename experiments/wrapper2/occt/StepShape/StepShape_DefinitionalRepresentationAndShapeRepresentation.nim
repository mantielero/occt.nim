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

discard "forward decl of StepShape_DefinitionalRepresentationAndShapeRepresentation"
discard "forward decl of StepShape_DefinitionalRepresentationAndShapeRepresentation"
type
  HandleStepShapeDefinitionalRepresentationAndShapeRepresentation* = Handle[
      StepShapeDefinitionalRepresentationAndShapeRepresentation]

## ! Implements complex type
## ! (DEFINITIONAL_REPRESENTATION,REPRESENTATION,SHAPE_REPRESENTATION)

type
  StepShapeDefinitionalRepresentationAndShapeRepresentation* {.
      importcpp: "StepShape_DefinitionalRepresentationAndShapeRepresentation",
      header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx",
      bycopy.} = object of StepReprDefinitionalRepresentation


proc constructStepShapeDefinitionalRepresentationAndShapeRepresentation*(): StepShapeDefinitionalRepresentationAndShapeRepresentation {.
    constructor,
    importcpp: "StepShape_DefinitionalRepresentationAndShapeRepresentation(@)",
    header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx".}
type
  StepShapeDefinitionalRepresentationAndShapeRepresentationbaseType* = StepReprDefinitionalRepresentation

proc getTypeName*(): cstring {.importcpp: "StepShape_DefinitionalRepresentationAndShapeRepresentation::get_type_name(@)", header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_DefinitionalRepresentationAndShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx".}
proc dynamicType*(this: StepShapeDefinitionalRepresentationAndShapeRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx".}
