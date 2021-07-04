##  Created on: 1999-03-09
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
discard "forward decl of StepRepr_AssemblyComponentUsageSubstitute"
discard "forward decl of StepBasic_DocumentFile"
discard "forward decl of StepRepr_MaterialDesignation"
discard "forward decl of StepVisual_MechanicalDesignGeometricPresentationRepresentation"
discard "forward decl of StepVisual_PresentationArea"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepRepr_ConfigurationItem"
discard "forward decl of StepBasic_Date"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_Effectivity"
discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_GroupRelationship"
discard "forward decl of StepBasic_ProductDefinitionFormationRelationship"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  StepAP214_ApprovalItem* {.importcpp: "StepAP214_ApprovalItem",
                           header: "StepAP214_ApprovalItem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## ApprovalItem
                                                                                                   ## SelectType


proc constructStepAP214_ApprovalItem*(): StepAP214_ApprovalItem {.constructor,
    importcpp: "StepAP214_ApprovalItem(@)", header: "StepAP214_ApprovalItem.hxx".}
proc CaseNum*(this: StepAP214_ApprovalItem; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_ApprovalItem.hxx".}
proc AssemblyComponentUsageSubstitute*(this: StepAP214_ApprovalItem): handle[
    StepRepr_AssemblyComponentUsageSubstitute] {.noSideEffect,
    importcpp: "AssemblyComponentUsageSubstitute",
    header: "StepAP214_ApprovalItem.hxx".}
proc DocumentFile*(this: StepAP214_ApprovalItem): handle[StepBasic_DocumentFile] {.
    noSideEffect, importcpp: "DocumentFile", header: "StepAP214_ApprovalItem.hxx".}
proc MaterialDesignation*(this: StepAP214_ApprovalItem): handle[
    StepRepr_MaterialDesignation] {.noSideEffect,
                                   importcpp: "MaterialDesignation",
                                   header: "StepAP214_ApprovalItem.hxx".}
proc MechanicalDesignGeometricPresentationRepresentation*(
    this: StepAP214_ApprovalItem): handle[StepVisual_MechanicalDesignGeometricPresentationRepresentation] {.
    noSideEffect,
    importcpp: "MechanicalDesignGeometricPresentationRepresentation",
    header: "StepAP214_ApprovalItem.hxx".}
proc PresentationArea*(this: StepAP214_ApprovalItem): handle[
    StepVisual_PresentationArea] {.noSideEffect, importcpp: "PresentationArea",
                                  header: "StepAP214_ApprovalItem.hxx".}
proc Product*(this: StepAP214_ApprovalItem): handle[StepBasic_Product] {.
    noSideEffect, importcpp: "Product", header: "StepAP214_ApprovalItem.hxx".}
proc ProductDefinition*(this: StepAP214_ApprovalItem): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                  header: "StepAP214_ApprovalItem.hxx".}
proc ProductDefinitionFormation*(this: StepAP214_ApprovalItem): handle[
    StepBasic_ProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation", header: "StepAP214_ApprovalItem.hxx".}
proc ProductDefinitionRelationship*(this: StepAP214_ApprovalItem): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_ApprovalItem.hxx".}
proc PropertyDefinition*(this: StepAP214_ApprovalItem): handle[
    StepRepr_PropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition",
                                  header: "StepAP214_ApprovalItem.hxx".}
proc ShapeRepresentation*(this: StepAP214_ApprovalItem): handle[
    StepShape_ShapeRepresentation] {.noSideEffect,
                                    importcpp: "ShapeRepresentation",
                                    header: "StepAP214_ApprovalItem.hxx".}
proc SecurityClassification*(this: StepAP214_ApprovalItem): handle[
    StepBasic_SecurityClassification] {.noSideEffect,
                                       importcpp: "SecurityClassification",
                                       header: "StepAP214_ApprovalItem.hxx".}
proc ConfigurationItem*(this: StepAP214_ApprovalItem): handle[
    StepRepr_ConfigurationItem] {.noSideEffect, importcpp: "ConfigurationItem",
                                 header: "StepAP214_ApprovalItem.hxx".}
proc Date*(this: StepAP214_ApprovalItem): handle[StepBasic_Date] {.noSideEffect,
    importcpp: "Date", header: "StepAP214_ApprovalItem.hxx".}
proc Document*(this: StepAP214_ApprovalItem): handle[StepBasic_Document] {.
    noSideEffect, importcpp: "Document", header: "StepAP214_ApprovalItem.hxx".}
proc Effectivity*(this: StepAP214_ApprovalItem): handle[StepBasic_Effectivity] {.
    noSideEffect, importcpp: "Effectivity", header: "StepAP214_ApprovalItem.hxx".}
proc Group*(this: StepAP214_ApprovalItem): handle[StepBasic_Group] {.noSideEffect,
    importcpp: "Group", header: "StepAP214_ApprovalItem.hxx".}
proc GroupRelationship*(this: StepAP214_ApprovalItem): handle[
    StepBasic_GroupRelationship] {.noSideEffect, importcpp: "GroupRelationship",
                                  header: "StepAP214_ApprovalItem.hxx".}
proc ProductDefinitionFormationRelationship*(this: StepAP214_ApprovalItem): handle[
    StepBasic_ProductDefinitionFormationRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionFormationRelationship",
    header: "StepAP214_ApprovalItem.hxx".}
proc Representation*(this: StepAP214_ApprovalItem): handle[StepRepr_Representation] {.
    noSideEffect, importcpp: "Representation", header: "StepAP214_ApprovalItem.hxx".}
proc ShapeAspectRelationship*(this: StepAP214_ApprovalItem): handle[
    StepRepr_ShapeAspectRelationship] {.noSideEffect,
                                       importcpp: "ShapeAspectRelationship",
                                       header: "StepAP214_ApprovalItem.hxx".}