##  Created on: 1999-03-10
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_GeometricRepresentationItem"
discard "forward decl of StepBasic_GroupRelationship"
discard "forward decl of StepRepr_MappedItem"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepRepr_PropertyDefinitionRepresentation"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_RepresentationRelationshipWithTransformation"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
discard "forward decl of StepRepr_ShapeRepresentationRelationship"
discard "forward decl of StepVisual_StyledItem"
discard "forward decl of StepShape_TopologicalRepresentationItem"
type
  StepAP214_GroupItem* {.importcpp: "StepAP214_GroupItem",
                        header: "StepAP214_GroupItem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## a
                                                                                             ## GroupItem
                                                                                             ## SelectType


proc constructStepAP214_GroupItem*(): StepAP214_GroupItem {.constructor,
    importcpp: "StepAP214_GroupItem(@)", header: "StepAP214_GroupItem.hxx".}
proc CaseNum*(this: StepAP214_GroupItem; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_GroupItem.hxx".}
proc GeometricRepresentationItem*(this: StepAP214_GroupItem): handle[
    StepGeom_GeometricRepresentationItem] {.noSideEffect,
    importcpp: "GeometricRepresentationItem", header: "StepAP214_GroupItem.hxx".}
proc GroupRelationship*(this: StepAP214_GroupItem): handle[
    StepBasic_GroupRelationship] {.noSideEffect, importcpp: "GroupRelationship",
                                  header: "StepAP214_GroupItem.hxx".}
proc MappedItem*(this: StepAP214_GroupItem): handle[StepRepr_MappedItem] {.
    noSideEffect, importcpp: "MappedItem", header: "StepAP214_GroupItem.hxx".}
proc ProductDefinition*(this: StepAP214_GroupItem): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                  header: "StepAP214_GroupItem.hxx".}
proc ProductDefinitionFormation*(this: StepAP214_GroupItem): handle[
    StepBasic_ProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation", header: "StepAP214_GroupItem.hxx".}
proc PropertyDefinitionRepresentation*(this: StepAP214_GroupItem): handle[
    StepRepr_PropertyDefinitionRepresentation] {.noSideEffect,
    importcpp: "PropertyDefinitionRepresentation",
    header: "StepAP214_GroupItem.hxx".}
proc Representation*(this: StepAP214_GroupItem): handle[StepRepr_Representation] {.
    noSideEffect, importcpp: "Representation", header: "StepAP214_GroupItem.hxx".}
proc RepresentationItem*(this: StepAP214_GroupItem): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                  header: "StepAP214_GroupItem.hxx".}
proc RepresentationRelationshipWithTransformation*(this: StepAP214_GroupItem): handle[
    StepRepr_RepresentationRelationshipWithTransformation] {.noSideEffect,
    importcpp: "RepresentationRelationshipWithTransformation",
    header: "StepAP214_GroupItem.hxx".}
proc ShapeAspect*(this: StepAP214_GroupItem): handle[StepRepr_ShapeAspect] {.
    noSideEffect, importcpp: "ShapeAspect", header: "StepAP214_GroupItem.hxx".}
proc ShapeAspectRelationship*(this: StepAP214_GroupItem): handle[
    StepRepr_ShapeAspectRelationship] {.noSideEffect,
                                       importcpp: "ShapeAspectRelationship",
                                       header: "StepAP214_GroupItem.hxx".}
proc ShapeRepresentationRelationship*(this: StepAP214_GroupItem): handle[
    StepRepr_ShapeRepresentationRelationship] {.noSideEffect,
    importcpp: "ShapeRepresentationRelationship",
    header: "StepAP214_GroupItem.hxx".}
proc StyledItem*(this: StepAP214_GroupItem): handle[StepVisual_StyledItem] {.
    noSideEffect, importcpp: "StyledItem", header: "StepAP214_GroupItem.hxx".}
proc TopologicalRepresentationItem*(this: StepAP214_GroupItem): handle[
    StepShape_TopologicalRepresentationItem] {.noSideEffect,
    importcpp: "TopologicalRepresentationItem", header: "StepAP214_GroupItem.hxx".}