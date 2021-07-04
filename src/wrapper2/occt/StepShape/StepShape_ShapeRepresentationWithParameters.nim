##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of StepShape_ShapeRepresentationWithParameters"
discard "forward decl of StepShape_ShapeRepresentationWithParameters"
type
  Handle_StepShape_ShapeRepresentationWithParameters* = handle[
      StepShape_ShapeRepresentationWithParameters]

## ! Representation of STEP entity ShapeRepresentationWithParameters

type
  StepShape_ShapeRepresentationWithParameters* {.
      importcpp: "StepShape_ShapeRepresentationWithParameters",
      header: "StepShape_ShapeRepresentationWithParameters.hxx", bycopy.} = object of StepShape_ShapeRepresentation ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor


proc constructStepShape_ShapeRepresentationWithParameters*(): StepShape_ShapeRepresentationWithParameters {.
    constructor, importcpp: "StepShape_ShapeRepresentationWithParameters(@)",
    header: "StepShape_ShapeRepresentationWithParameters.hxx".}
type
  StepShape_ShapeRepresentationWithParametersbase_type* = StepShape_ShapeRepresentation

proc get_type_name*(): cstring {.importcpp: "StepShape_ShapeRepresentationWithParameters::get_type_name(@)", header: "StepShape_ShapeRepresentationWithParameters.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_ShapeRepresentationWithParameters::get_type_descriptor(@)",
    header: "StepShape_ShapeRepresentationWithParameters.hxx".}
proc DynamicType*(this: StepShape_ShapeRepresentationWithParameters): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_ShapeRepresentationWithParameters.hxx".}