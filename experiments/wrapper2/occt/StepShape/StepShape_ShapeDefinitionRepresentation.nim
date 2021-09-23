##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../StepRepr/StepRepr_PropertyDefinitionRepresentation

discard "forward decl of StepShape_ShapeDefinitionRepresentation"
discard "forward decl of StepShape_ShapeDefinitionRepresentation"
type
  Handle_StepShape_ShapeDefinitionRepresentation* = handle[
      StepShape_ShapeDefinitionRepresentation]

## ! Representation of STEP entity ShapeDefinitionRepresentation

type
  StepShape_ShapeDefinitionRepresentation* {.
      importcpp: "StepShape_ShapeDefinitionRepresentation",
      header: "StepShape_ShapeDefinitionRepresentation.hxx", bycopy.} = object of StepRepr_PropertyDefinitionRepresentation ##
                                                                                                                     ## !
                                                                                                                     ## Empty
                                                                                                                     ## constructor


proc constructStepShape_ShapeDefinitionRepresentation*(): StepShape_ShapeDefinitionRepresentation {.
    constructor, importcpp: "StepShape_ShapeDefinitionRepresentation(@)",
    header: "StepShape_ShapeDefinitionRepresentation.hxx".}
type
  StepShape_ShapeDefinitionRepresentationbase_type* = StepRepr_PropertyDefinitionRepresentation

proc get_type_name*(): cstring {.importcpp: "StepShape_ShapeDefinitionRepresentation::get_type_name(@)", header: "StepShape_ShapeDefinitionRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_ShapeDefinitionRepresentation::get_type_descriptor(@)",
    header: "StepShape_ShapeDefinitionRepresentation.hxx".}
proc DynamicType*(this: StepShape_ShapeDefinitionRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_ShapeDefinitionRepresentation.hxx".}