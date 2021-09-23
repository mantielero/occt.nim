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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepRepr_RepresentationRelationshipWithTransformation

discard "forward decl of StepRepr_ShapeRepresentationRelationshipWithTransformation"
discard "forward decl of StepRepr_ShapeRepresentationRelationshipWithTransformation"
type
  Handle_StepRepr_ShapeRepresentationRelationshipWithTransformation* = handle[
      StepRepr_ShapeRepresentationRelationshipWithTransformation]
  StepRepr_ShapeRepresentationRelationshipWithTransformation* {.
      importcpp: "StepRepr_ShapeRepresentationRelationshipWithTransformation",
      header: "StepRepr_ShapeRepresentationRelationshipWithTransformation.hxx",
      bycopy.} = object of StepRepr_RepresentationRelationshipWithTransformation


proc constructStepRepr_ShapeRepresentationRelationshipWithTransformation*(): StepRepr_ShapeRepresentationRelationshipWithTransformation {.
    constructor,
    importcpp: "StepRepr_ShapeRepresentationRelationshipWithTransformation(@)",
    header: "StepRepr_ShapeRepresentationRelationshipWithTransformation.hxx".}
type
  StepRepr_ShapeRepresentationRelationshipWithTransformationbase_type* = StepRepr_RepresentationRelationshipWithTransformation

proc get_type_name*(): cstring {.importcpp: "StepRepr_ShapeRepresentationRelationshipWithTransformation::get_type_name(@)", header: "StepRepr_ShapeRepresentationRelationshipWithTransformation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_ShapeRepresentationRelationshipWithTransformation::get_type_descriptor(@)",
    header: "StepRepr_ShapeRepresentationRelationshipWithTransformation.hxx".}
proc DynamicType*(this: StepRepr_ShapeRepresentationRelationshipWithTransformation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_ShapeRepresentationRelationshipWithTransformation.hxx".}