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

discard "forward decl of StepShape_ShapeRepresentationWithParameters"
discard "forward decl of StepShape_ShapeRepresentationWithParameters"
type
  HandleC1C1* = Handle[StepShapeShapeRepresentationWithParameters]

## ! Representation of STEP entity ShapeRepresentationWithParameters

type
  StepShapeShapeRepresentationWithParameters* {.
      importcpp: "StepShape_ShapeRepresentationWithParameters",
      header: "StepShape_ShapeRepresentationWithParameters.hxx", bycopy.} = object of StepShapeShapeRepresentation ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepShapeShapeRepresentationWithParameters*(): StepShapeShapeRepresentationWithParameters {.
    constructor, importcpp: "StepShape_ShapeRepresentationWithParameters(@)",
    header: "StepShape_ShapeRepresentationWithParameters.hxx".}
type
  StepShapeShapeRepresentationWithParametersbaseType* = StepShapeShapeRepresentation

proc getTypeName*(): cstring {.importcpp: "StepShape_ShapeRepresentationWithParameters::get_type_name(@)", header: "StepShape_ShapeRepresentationWithParameters.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_ShapeRepresentationWithParameters::get_type_descriptor(@)",
    header: "StepShape_ShapeRepresentationWithParameters.hxx".}
proc dynamicType*(this: StepShapeShapeRepresentationWithParameters): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepShape_ShapeRepresentationWithParameters.hxx".}