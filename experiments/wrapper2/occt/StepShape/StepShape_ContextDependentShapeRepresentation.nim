##  Created on: 1998-07-01
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepRepr_ShapeRepresentationRelationship"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
type
  Handle_StepShape_ContextDependentShapeRepresentation* = handle[
      StepShape_ContextDependentShapeRepresentation]
  StepShape_ContextDependentShapeRepresentation* {.
      importcpp: "StepShape_ContextDependentShapeRepresentation",
      header: "StepShape_ContextDependentShapeRepresentation.hxx", bycopy.} = object of Standard_Transient


proc constructStepShape_ContextDependentShapeRepresentation*(): StepShape_ContextDependentShapeRepresentation {.
    constructor, importcpp: "StepShape_ContextDependentShapeRepresentation(@)",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc Init*(this: var StepShape_ContextDependentShapeRepresentation;
          aRepRel: handle[StepRepr_ShapeRepresentationRelationship];
          aProRel: handle[StepRepr_ProductDefinitionShape]) {.importcpp: "Init",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc RepresentationRelation*(this: StepShape_ContextDependentShapeRepresentation): handle[
    StepRepr_ShapeRepresentationRelationship] {.noSideEffect,
    importcpp: "RepresentationRelation",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc SetRepresentationRelation*(this: var StepShape_ContextDependentShapeRepresentation;
    aRepRel: handle[StepRepr_ShapeRepresentationRelationship]) {.
    importcpp: "SetRepresentationRelation",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc RepresentedProductRelation*(this: StepShape_ContextDependentShapeRepresentation): handle[
    StepRepr_ProductDefinitionShape] {.noSideEffect,
                                      importcpp: "RepresentedProductRelation", header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc SetRepresentedProductRelation*(this: var StepShape_ContextDependentShapeRepresentation;
    aProRel: handle[StepRepr_ProductDefinitionShape]) {.
    importcpp: "SetRepresentedProductRelation",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
type
  StepShape_ContextDependentShapeRepresentationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_ContextDependentShapeRepresentation::get_type_name(@)", header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_ContextDependentShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc DynamicType*(this: StepShape_ContextDependentShapeRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_ContextDependentShapeRepresentation.hxx".}