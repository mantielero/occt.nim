##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_ShapeRepresentation

discard "forward decl of StepShape_AdvancedBrepShapeRepresentation"
discard "forward decl of StepShape_AdvancedBrepShapeRepresentation"
type
  Handle_StepShape_AdvancedBrepShapeRepresentation* = handle[
      StepShape_AdvancedBrepShapeRepresentation]
  StepShape_AdvancedBrepShapeRepresentation* {.
      importcpp: "StepShape_AdvancedBrepShapeRepresentation",
      header: "StepShape_AdvancedBrepShapeRepresentation.hxx", bycopy.} = object of StepShape_ShapeRepresentation ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## AdvancedBrepShapeRepresentation


proc constructStepShape_AdvancedBrepShapeRepresentation*(): StepShape_AdvancedBrepShapeRepresentation {.
    constructor, importcpp: "StepShape_AdvancedBrepShapeRepresentation(@)",
    header: "StepShape_AdvancedBrepShapeRepresentation.hxx".}
type
  StepShape_AdvancedBrepShapeRepresentationbase_type* = StepShape_ShapeRepresentation

proc get_type_name*(): cstring {.importcpp: "StepShape_AdvancedBrepShapeRepresentation::get_type_name(@)", header: "StepShape_AdvancedBrepShapeRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_AdvancedBrepShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_AdvancedBrepShapeRepresentation.hxx".}
proc DynamicType*(this: StepShape_AdvancedBrepShapeRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_AdvancedBrepShapeRepresentation.hxx".}