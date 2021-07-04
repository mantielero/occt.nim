##  Created on: 2016-04-26
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  StepRepr_RepresentationRelationship

discard "forward decl of StepRepr_ConstructiveGeometryRepresentationRelationship"
discard "forward decl of StepRepr_ConstructiveGeometryRepresentationRelationship"
type
  Handle_StepRepr_ConstructiveGeometryRepresentationRelationship* = handle[
      StepRepr_ConstructiveGeometryRepresentationRelationship]
  StepRepr_ConstructiveGeometryRepresentationRelationship* {.
      importcpp: "StepRepr_ConstructiveGeometryRepresentationRelationship",
      header: "StepRepr_ConstructiveGeometryRepresentationRelationship.hxx",
      bycopy.} = object of StepRepr_RepresentationRelationship


proc constructStepRepr_ConstructiveGeometryRepresentationRelationship*(): StepRepr_ConstructiveGeometryRepresentationRelationship {.
    constructor,
    importcpp: "StepRepr_ConstructiveGeometryRepresentationRelationship(@)",
    header: "StepRepr_ConstructiveGeometryRepresentationRelationship.hxx".}
type
  StepRepr_ConstructiveGeometryRepresentationRelationshipbase_type* = StepRepr_RepresentationRelationship

proc get_type_name*(): cstring {.importcpp: "StepRepr_ConstructiveGeometryRepresentationRelationship::get_type_name(@)", header: "StepRepr_ConstructiveGeometryRepresentationRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_ConstructiveGeometryRepresentationRelationship::get_type_descriptor(@)",
    header: "StepRepr_ConstructiveGeometryRepresentationRelationship.hxx".}
proc DynamicType*(this: StepRepr_ConstructiveGeometryRepresentationRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_ConstructiveGeometryRepresentationRelationship.hxx".}