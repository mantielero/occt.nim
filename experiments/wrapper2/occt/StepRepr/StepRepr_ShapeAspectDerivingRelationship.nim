##  Created on: 2001-04-24
##  Created by: Christian CAILLET
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

discard "forward decl of StepRepr_ShapeAspectDerivingRelationship"
discard "forward decl of StepRepr_ShapeAspectDerivingRelationship"
type
  HandleStepReprShapeAspectDerivingRelationship* = Handle[
      StepReprShapeAspectDerivingRelationship]

## ! Added for Dimensional Tolerances

type
  StepReprShapeAspectDerivingRelationship* {.
      importcpp: "StepRepr_ShapeAspectDerivingRelationship",
      header: "StepRepr_ShapeAspectDerivingRelationship.hxx", bycopy.} = object of StepReprShapeAspectRelationship


proc constructStepReprShapeAspectDerivingRelationship*(): StepReprShapeAspectDerivingRelationship {.
    constructor, importcpp: "StepRepr_ShapeAspectDerivingRelationship(@)",
    header: "StepRepr_ShapeAspectDerivingRelationship.hxx".}
type
  StepReprShapeAspectDerivingRelationshipbaseType* = StepReprShapeAspectRelationship

proc getTypeName*(): cstring {.importcpp: "StepRepr_ShapeAspectDerivingRelationship::get_type_name(@)", header: "StepRepr_ShapeAspectDerivingRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ShapeAspectDerivingRelationship::get_type_descriptor(@)",
    header: "StepRepr_ShapeAspectDerivingRelationship.hxx".}
proc dynamicType*(this: StepReprShapeAspectDerivingRelationship): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_ShapeAspectDerivingRelationship.hxx".}
