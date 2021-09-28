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
  StepAP214GroupItem* {.importcpp: "StepAP214_GroupItem",
                       header: "StepAP214_GroupItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## a
                                                                                           ## GroupItem
                                                                                           ## SelectType


proc constructStepAP214GroupItem*(): StepAP214GroupItem {.constructor,
    importcpp: "StepAP214_GroupItem(@)", header: "StepAP214_GroupItem.hxx".}
proc caseNum*(this: StepAP214GroupItem; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_GroupItem.hxx".}
proc geometricRepresentationItem*(this: StepAP214GroupItem): Handle[
    StepGeomGeometricRepresentationItem] {.noSideEffect,
    importcpp: "GeometricRepresentationItem", header: "StepAP214_GroupItem.hxx".}
proc groupRelationship*(this: StepAP214GroupItem): Handle[
    StepBasicGroupRelationship] {.noSideEffect, importcpp: "GroupRelationship",
                                 header: "StepAP214_GroupItem.hxx".}
proc mappedItem*(this: StepAP214GroupItem): Handle[StepReprMappedItem] {.
    noSideEffect, importcpp: "MappedItem", header: "StepAP214_GroupItem.hxx".}
proc productDefinition*(this: StepAP214GroupItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                 header: "StepAP214_GroupItem.hxx".}
proc productDefinitionFormation*(this: StepAP214GroupItem): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation", header: "StepAP214_GroupItem.hxx".}
proc propertyDefinitionRepresentation*(this: StepAP214GroupItem): Handle[
    StepReprPropertyDefinitionRepresentation] {.noSideEffect,
    importcpp: "PropertyDefinitionRepresentation",
    header: "StepAP214_GroupItem.hxx".}
proc representation*(this: StepAP214GroupItem): Handle[StepReprRepresentation] {.
    noSideEffect, importcpp: "Representation", header: "StepAP214_GroupItem.hxx".}
proc representationItem*(this: StepAP214GroupItem): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                 header: "StepAP214_GroupItem.hxx".}
proc representationRelationshipWithTransformation*(this: StepAP214GroupItem): Handle[
    StepReprRepresentationRelationshipWithTransformation] {.noSideEffect,
    importcpp: "RepresentationRelationshipWithTransformation",
    header: "StepAP214_GroupItem.hxx".}
proc shapeAspect*(this: StepAP214GroupItem): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "ShapeAspect", header: "StepAP214_GroupItem.hxx".}
proc shapeAspectRelationship*(this: StepAP214GroupItem): Handle[
    StepReprShapeAspectRelationship] {.noSideEffect,
                                      importcpp: "ShapeAspectRelationship",
                                      header: "StepAP214_GroupItem.hxx".}
proc shapeRepresentationRelationship*(this: StepAP214GroupItem): Handle[
    StepReprShapeRepresentationRelationship] {.noSideEffect,
    importcpp: "ShapeRepresentationRelationship",
    header: "StepAP214_GroupItem.hxx".}
proc styledItem*(this: StepAP214GroupItem): Handle[StepVisualStyledItem] {.
    noSideEffect, importcpp: "StyledItem", header: "StepAP214_GroupItem.hxx".}
proc topologicalRepresentationItem*(this: StepAP214GroupItem): Handle[
    StepShapeTopologicalRepresentationItem] {.noSideEffect,
    importcpp: "TopologicalRepresentationItem", header: "StepAP214_GroupItem.hxx".}

























