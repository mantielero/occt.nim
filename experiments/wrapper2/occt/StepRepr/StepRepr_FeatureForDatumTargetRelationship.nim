##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  StepRepr_ShapeAspectRelationship

discard "forward decl of StepRepr_FeatureForDatumTargetRelationship"
discard "forward decl of StepRepr_FeatureForDatumTargetRelationship"
type
  Handle_StepRepr_FeatureForDatumTargetRelationship* = handle[
      StepRepr_FeatureForDatumTargetRelationship]

## ! Representation of STEP entity DimensionalLocation

type
  StepRepr_FeatureForDatumTargetRelationship* {.
      importcpp: "StepRepr_FeatureForDatumTargetRelationship",
      header: "StepRepr_FeatureForDatumTargetRelationship.hxx", bycopy.} = object of StepRepr_ShapeAspectRelationship ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor


proc constructStepRepr_FeatureForDatumTargetRelationship*(): StepRepr_FeatureForDatumTargetRelationship {.
    constructor, importcpp: "StepRepr_FeatureForDatumTargetRelationship(@)",
    header: "StepRepr_FeatureForDatumTargetRelationship.hxx".}
type
  StepRepr_FeatureForDatumTargetRelationshipbase_type* = StepRepr_ShapeAspectRelationship

proc get_type_name*(): cstring {.importcpp: "StepRepr_FeatureForDatumTargetRelationship::get_type_name(@)", header: "StepRepr_FeatureForDatumTargetRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_FeatureForDatumTargetRelationship::get_type_descriptor(@)",
    header: "StepRepr_FeatureForDatumTargetRelationship.hxx".}
proc DynamicType*(this: StepRepr_FeatureForDatumTargetRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_FeatureForDatumTargetRelationship.hxx".}