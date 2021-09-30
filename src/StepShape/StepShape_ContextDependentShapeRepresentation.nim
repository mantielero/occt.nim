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

discard "forward decl of StepRepr_ShapeRepresentationRelationship"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
discard "forward decl of StepShape_ContextDependentShapeRepresentation"
type
  HandleC1C1* = Handle[StepShapeContextDependentShapeRepresentation]
  StepShapeContextDependentShapeRepresentation* {.
      importcpp: "StepShape_ContextDependentShapeRepresentation",
      header: "StepShape_ContextDependentShapeRepresentation.hxx", bycopy.} = object of StandardTransient


proc constructStepShapeContextDependentShapeRepresentation*(): StepShapeContextDependentShapeRepresentation {.
    constructor, importcpp: "StepShape_ContextDependentShapeRepresentation(@)",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc init*(this: var StepShapeContextDependentShapeRepresentation;
          aRepRel: Handle[StepReprShapeRepresentationRelationship];
          aProRel: Handle[StepReprProductDefinitionShape]) {.importcpp: "Init",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc representationRelation*(this: StepShapeContextDependentShapeRepresentation): Handle[
    StepReprShapeRepresentationRelationship] {.noSideEffect,
    importcpp: "RepresentationRelation",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc setRepresentationRelation*(this: var StepShapeContextDependentShapeRepresentation;
    aRepRel: Handle[StepReprShapeRepresentationRelationship]) {.
    importcpp: "SetRepresentationRelation",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc representedProductRelation*(this: StepShapeContextDependentShapeRepresentation): Handle[
    StepReprProductDefinitionShape] {.noSideEffect,
                                     importcpp: "RepresentedProductRelation", header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc setRepresentedProductRelation*(this: var StepShapeContextDependentShapeRepresentation;
    aProRel: Handle[StepReprProductDefinitionShape]) {.
    importcpp: "SetRepresentedProductRelation",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
type
  StepShapeContextDependentShapeRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepShape_ContextDependentShapeRepresentation::get_type_name(@)", header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_ContextDependentShapeRepresentation::get_type_descriptor(@)",
    header: "StepShape_ContextDependentShapeRepresentation.hxx".}
proc dynamicType*(this: StepShapeContextDependentShapeRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepShape_ContextDependentShapeRepresentation.hxx".}

























