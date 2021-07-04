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
  StepAP214_DocumentReferenceItem* {.importcpp: "StepAP214_DocumentReferenceItem", header: "StepAP214_DocumentReferenceItem.hxx",
                                    bycopy.} = object of StepData_SelectType ## ! Returns a
                                                                        ## DocumentReferenceItem
                                                                        ## SelectType


proc constructStepAP214_DocumentReferenceItem*(): StepAP214_DocumentReferenceItem {.
    constructor, importcpp: "StepAP214_DocumentReferenceItem(@)",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc CaseNum*(this: StepAP214_DocumentReferenceItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_DocumentReferenceItem.hxx".}
proc Approval*(this: StepAP214_DocumentReferenceItem): handle[StepBasic_Approval] {.
    noSideEffect, importcpp: "Approval",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc DescriptiveRepresentationItem*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_DescriptiveRepresentationItem] {.noSideEffect,
    importcpp: "DescriptiveRepresentationItem",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc MaterialDesignation*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_MaterialDesignation] {.noSideEffect,
                                   importcpp: "MaterialDesignation", header: "StepAP214_DocumentReferenceItem.hxx".}
proc ProductDefinition*(this: StepAP214_DocumentReferenceItem): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                  header: "StepAP214_DocumentReferenceItem.hxx".}
proc ProductDefinitionRelationship*(this: StepAP214_DocumentReferenceItem): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc PropertyDefinition*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_PropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition",
                                  header: "StepAP214_DocumentReferenceItem.hxx".}
proc Representation*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Representation",
                              header: "StepAP214_DocumentReferenceItem.hxx".}
proc ShapeAspect*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                           header: "StepAP214_DocumentReferenceItem.hxx".}
proc ShapeAspectRelationship*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_ShapeAspectRelationship] {.noSideEffect,
                                       importcpp: "ShapeAspectRelationship", header: "StepAP214_DocumentReferenceItem.hxx".}
proc AppliedExternalIdentificationAssignment*(
    this: StepAP214_DocumentReferenceItem): handle[
    StepAP214_AppliedExternalIdentificationAssignment] {.noSideEffect,
    importcpp: "AppliedExternalIdentificationAssignment",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc AssemblyComponentUsage*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_AssemblyComponentUsage] {.noSideEffect,
                                      importcpp: "AssemblyComponentUsage", header: "StepAP214_DocumentReferenceItem.hxx".}
proc CharacterizedObject*(this: StepAP214_DocumentReferenceItem): handle[
    StepBasic_CharacterizedObject] {.noSideEffect,
                                    importcpp: "CharacterizedObject", header: "StepAP214_DocumentReferenceItem.hxx".}
proc DimensionalSize*(this: StepAP214_DocumentReferenceItem): handle[
    StepShape_DimensionalSize] {.noSideEffect, importcpp: "DimensionalSize",
                                header: "StepAP214_DocumentReferenceItem.hxx".}
proc ExternallyDefinedItem*(this: StepAP214_DocumentReferenceItem): handle[
    StepBasic_ExternallyDefinedItem] {.noSideEffect,
                                      importcpp: "ExternallyDefinedItem", header: "StepAP214_DocumentReferenceItem.hxx".}
proc Group*(this: StepAP214_DocumentReferenceItem): handle[StepBasic_Group] {.
    noSideEffect, importcpp: "Group", header: "StepAP214_DocumentReferenceItem.hxx".}
proc GroupRelationship*(this: StepAP214_DocumentReferenceItem): handle[
    StepBasic_GroupRelationship] {.noSideEffect, importcpp: "GroupRelationship",
                                  header: "StepAP214_DocumentReferenceItem.hxx".}
proc MeasureRepresentationItem*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_MeasureRepresentationItem] {.noSideEffect,
    importcpp: "MeasureRepresentationItem",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc ProductCategory*(this: StepAP214_DocumentReferenceItem): handle[
    StepBasic_ProductCategory] {.noSideEffect, importcpp: "ProductCategory",
                                header: "StepAP214_DocumentReferenceItem.hxx".}
proc ProductDefinitionContext*(this: StepAP214_DocumentReferenceItem): handle[
    StepBasic_ProductDefinitionContext] {.noSideEffect,
    importcpp: "ProductDefinitionContext",
    header: "StepAP214_DocumentReferenceItem.hxx".}
proc RepresentationItem*(this: StepAP214_DocumentReferenceItem): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "RepresentationItem",
                                  header: "StepAP214_DocumentReferenceItem.hxx".}