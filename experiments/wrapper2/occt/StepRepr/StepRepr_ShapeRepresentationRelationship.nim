##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of StepRepr_ShapeRepresentationRelationship"
discard "forward decl of StepRepr_ShapeRepresentationRelationship"
type
  HandleStepReprShapeRepresentationRelationship* = Handle[
      StepReprShapeRepresentationRelationship]
  StepReprShapeRepresentationRelationship* {.
      importcpp: "StepRepr_ShapeRepresentationRelationship",
      header: "StepRepr_ShapeRepresentationRelationship.hxx", bycopy.} = object of StepReprRepresentationRelationship


proc constructStepReprShapeRepresentationRelationship*(): StepReprShapeRepresentationRelationship {.
    constructor, importcpp: "StepRepr_ShapeRepresentationRelationship(@)",
    header: "StepRepr_ShapeRepresentationRelationship.hxx".}
type
  StepReprShapeRepresentationRelationshipbaseType* = StepReprRepresentationRelationship

proc getTypeName*(): cstring {.importcpp: "StepRepr_ShapeRepresentationRelationship::get_type_name(@)", header: "StepRepr_ShapeRepresentationRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_ShapeRepresentationRelationship::get_type_descriptor(@)",
    header: "StepRepr_ShapeRepresentationRelationship.hxx".}
proc dynamicType*(this: StepReprShapeRepresentationRelationship): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_ShapeRepresentationRelationship.hxx".}
