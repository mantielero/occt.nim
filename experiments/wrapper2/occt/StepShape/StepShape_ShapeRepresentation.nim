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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_Representation

discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of StepShape_ShapeRepresentation"
type
  Handle_StepShape_ShapeRepresentation* = handle[StepShape_ShapeRepresentation]
  StepShape_ShapeRepresentation* {.importcpp: "StepShape_ShapeRepresentation",
                                  header: "StepShape_ShapeRepresentation.hxx",
                                  bycopy.} = object of StepRepr_Representation ## !
                                                                          ## Returns a
                                                                          ## ShapeRepresentation


proc constructStepShape_ShapeRepresentation*(): StepShape_ShapeRepresentation {.
    constructor, importcpp: "StepShape_ShapeRepresentation(@)",
    header: "StepShape_ShapeRepresentation.hxx".}
type
  StepShape_ShapeRepresentationbase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepShape_ShapeRepresentation::get_type_name(@)",
                              header: "StepShape_ShapeRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_ShapeRepresentation.hxx".}
proc DynamicType*(this: StepShape_ShapeRepresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ShapeRepresentation.hxx".}