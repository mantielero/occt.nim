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

discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of StepShape_ShapeRepresentation"
type
  HandleC1C1* = Handle[StepShapeShapeRepresentation]
  StepShapeShapeRepresentation* {.importcpp: "StepShape_ShapeRepresentation",
                                 header: "StepShape_ShapeRepresentation.hxx",
                                 bycopy.} = object of StepReprRepresentation ## ! Returns a
                                                                        ## ShapeRepresentation


proc constructStepShapeShapeRepresentation*(): StepShapeShapeRepresentation {.
    constructor, importcpp: "StepShape_ShapeRepresentation(@)",
    header: "StepShape_ShapeRepresentation.hxx".}
type
  StepShapeShapeRepresentationbaseType* = StepReprRepresentation

proc getTypeName*(): cstring {.importcpp: "StepShape_ShapeRepresentation::get_type_name(@)",
                            header: "StepShape_ShapeRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_ShapeRepresentation.hxx".}
proc dynamicType*(this: StepShapeShapeRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ShapeRepresentation.hxx".}