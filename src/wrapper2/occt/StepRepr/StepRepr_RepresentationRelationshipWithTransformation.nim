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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_Transformation,
  StepRepr_ShapeRepresentationRelationship

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_Transformation"
discard "forward decl of StepRepr_RepresentationRelationshipWithTransformation"
discard "forward decl of StepRepr_RepresentationRelationshipWithTransformation"
type
  Handle_StepRepr_RepresentationRelationshipWithTransformation* = handle[
      StepRepr_RepresentationRelationshipWithTransformation]
  StepRepr_RepresentationRelationshipWithTransformation* {.
      importcpp: "StepRepr_RepresentationRelationshipWithTransformation",
      header: "StepRepr_RepresentationRelationshipWithTransformation.hxx", bycopy.} = object of StepRepr_ShapeRepresentationRelationship


proc constructStepRepr_RepresentationRelationshipWithTransformation*(): StepRepr_RepresentationRelationshipWithTransformation {.
    constructor,
    importcpp: "StepRepr_RepresentationRelationshipWithTransformation(@)",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc Init*(this: var StepRepr_RepresentationRelationshipWithTransformation;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aRep1: handle[StepRepr_Representation];
          aRep2: handle[StepRepr_Representation]; aTransf: StepRepr_Transformation) {.
    importcpp: "Init",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc TransformationOperator*(this: StepRepr_RepresentationRelationshipWithTransformation): StepRepr_Transformation {.
    noSideEffect, importcpp: "TransformationOperator",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc SetTransformationOperator*(this: var StepRepr_RepresentationRelationshipWithTransformation;
                               aTrans: StepRepr_Transformation) {.
    importcpp: "SetTransformationOperator",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
type
  StepRepr_RepresentationRelationshipWithTransformationbase_type* = StepRepr_ShapeRepresentationRelationship

proc get_type_name*(): cstring {.importcpp: "StepRepr_RepresentationRelationshipWithTransformation::get_type_name(@)", header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_RepresentationRelationshipWithTransformation::get_type_descriptor(@)",
    header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}
proc DynamicType*(this: StepRepr_RepresentationRelationshipWithTransformation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_RepresentationRelationshipWithTransformation.hxx".}