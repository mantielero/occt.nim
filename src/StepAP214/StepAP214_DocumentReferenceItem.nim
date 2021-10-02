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
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepRepr_DescriptiveRepresentationItem"
discard "forward decl of StepRepr_MaterialDesignation"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
discard "forward decl of StepAP214_AppliedExternalIdentificationAssignment"
discard "forward decl of StepRepr_AssemblyComponentUsage"
discard "forward decl of StepBasic_CharacterizedObject"
discard "forward decl of StepShape_DimensionalSize"
discard "forward decl of StepBasic_ExternallyDefinedItem"
discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_GroupRelationship"
discard "forward decl of StepBasic_ProductCategory"
discard "forward decl of StepRepr_MeasureRepresentationItem"
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepRepr_RepresentationItem"
type
  StepAP214DocumentReferenceItem* {.importcpp: "StepAP214_DocumentReferenceItem", header: "StepAP214_DocumentReferenceItem.hxx",
                                   bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepAP214DocumentReferenceItem; theSize: csize_t): pointer {.
    importcpp: "StepAP214_DocumentReferenceItem::operator new",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc `delete`*(this: var StepAP214DocumentReferenceItem; theAddress: pointer) {.
    importcpp: "StepAP214_DocumentReferenceItem::operator delete",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc `new[]`*(this: var StepAP214DocumentReferenceItem; theSize: csize_t): pointer {.
    importcpp: "StepAP214_DocumentReferenceItem::operator new[]",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc `delete[]`*(this: var StepAP214DocumentReferenceItem; theAddress: pointer) {.
    importcpp: "StepAP214_DocumentReferenceItem::operator delete[]",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc `new`*(this: var StepAP214DocumentReferenceItem; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepAP214_DocumentReferenceItem::operator new",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc `delete`*(this: var StepAP214DocumentReferenceItem; a2: pointer; a3: pointer) {.
    importcpp: "StepAP214_DocumentReferenceItem::operator delete",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc constructStepAP214DocumentReferenceItem*(): StepAP214DocumentReferenceItem {.
    constructor, importcpp: "StepAP214_DocumentReferenceItem(@)",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc caseNum*(this: StepAP214DocumentReferenceItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc approval*(this: StepAP214DocumentReferenceItem): Handle[StepBasicApproval] {.
    noSideEffect, importcpp: "Approval",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc descriptiveRepresentationItem*(this: StepAP214DocumentReferenceItem): Handle[
    StepReprDescriptiveRepresentationItem] {.noSideEffect,
    importcpp: "DescriptiveRepresentationItem",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc materialDesignation*(this: StepAP214DocumentReferenceItem): Handle[
    StepReprMaterialDesignation] {.noSideEffect, importcpp: "MaterialDesignation",
                                  header: "StepAP214_DocumentReferenceItem.hxx".}
proc productDefinition*(this: StepAP214DocumentReferenceItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                 header: "StepAP214_DocumentReferenceItem.hxx".}
proc productDefinitionRelationship*(this: StepAP214DocumentReferenceItem): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc propertyDefinition*(this: StepAP214DocumentReferenceItem): Handle[
    StepReprPropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition",
                                 header: "StepAP214_DocumentReferenceItem.hxx".}
proc representation*(this: StepAP214DocumentReferenceItem): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "Representation",
                             header: "StepAP214_DocumentReferenceItem.hxx".}
proc shapeAspect*(this: StepAP214DocumentReferenceItem): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "ShapeAspect",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc shapeAspectRelationship*(this: StepAP214DocumentReferenceItem): Handle[
    StepReprShapeAspectRelationship] {.noSideEffect,
                                      importcpp: "ShapeAspectRelationship", header: "StepAP214_DocumentReferenceItem.hxx".}
proc appliedExternalIdentificationAssignment*(
    this: StepAP214DocumentReferenceItem): Handle[
    StepAP214AppliedExternalIdentificationAssignment] {.noSideEffect,
    importcpp: "AppliedExternalIdentificationAssignment",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc assemblyComponentUsage*(this: StepAP214DocumentReferenceItem): Handle[
    StepReprAssemblyComponentUsage] {.noSideEffect,
                                     importcpp: "AssemblyComponentUsage", header: "StepAP214_DocumentReferenceItem.hxx".}
proc characterizedObject*(this: StepAP214DocumentReferenceItem): Handle[
    StepBasicCharacterizedObject] {.noSideEffect,
                                   importcpp: "CharacterizedObject", header: "StepAP214_DocumentReferenceItem.hxx".}
proc dimensionalSize*(this: StepAP214DocumentReferenceItem): Handle[
    StepShapeDimensionalSize] {.noSideEffect, importcpp: "DimensionalSize",
                               header: "StepAP214_DocumentReferenceItem.hxx".}
proc externallyDefinedItem*(this: StepAP214DocumentReferenceItem): Handle[
    StepBasicExternallyDefinedItem] {.noSideEffect,
                                     importcpp: "ExternallyDefinedItem", header: "StepAP214_DocumentReferenceItem.hxx".}
proc group*(this: StepAP214DocumentReferenceItem): Handle[StepBasicGroup] {.
    noSideEffect, importcpp: "Group", header: "StepAP214_DocumentReferenceItem.hxx".}
proc groupRelationship*(this: StepAP214DocumentReferenceItem): Handle[
    StepBasicGroupRelationship] {.noSideEffect, importcpp: "GroupRelationship",
                                 header: "StepAP214_DocumentReferenceItem.hxx".}
proc measureRepresentationItem*(this: StepAP214DocumentReferenceItem): Handle[
    StepReprMeasureRepresentationItem] {.noSideEffect,
                                        importcpp: "MeasureRepresentationItem", header: "StepAP214_DocumentReferenceItem.hxx".}
proc productCategory*(this: StepAP214DocumentReferenceItem): Handle[
    StepBasicProductCategory] {.noSideEffect, importcpp: "ProductCategory",
                               header: "StepAP214_DocumentReferenceItem.hxx".}
proc productDefinitionContext*(this: StepAP214DocumentReferenceItem): Handle[
    StepBasicProductDefinitionContext] {.noSideEffect,
                                        importcpp: "ProductDefinitionContext", header: "StepAP214_DocumentReferenceItem.hxx".}
proc representationItem*(this: StepAP214DocumentReferenceItem): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                 header: "StepAP214_DocumentReferenceItem.hxx".}