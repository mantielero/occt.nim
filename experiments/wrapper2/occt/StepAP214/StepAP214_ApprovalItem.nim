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
  StepAP214ApprovalItem* {.importcpp: "StepAP214_ApprovalItem",
                          header: "StepAP214_ApprovalItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## a
                                                                                                 ## ApprovalItem
                                                                                                 ## SelectType


proc constructStepAP214ApprovalItem*(): StepAP214ApprovalItem {.constructor,
    importcpp: "StepAP214_ApprovalItem(@)", header: "StepAP214_ApprovalItem.hxx".}
proc caseNum*(this: StepAP214ApprovalItem; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_ApprovalItem.hxx".}
proc assemblyComponentUsageSubstitute*(this: StepAP214ApprovalItem): Handle[
    StepReprAssemblyComponentUsageSubstitute] {.noSideEffect,
    importcpp: "AssemblyComponentUsageSubstitute",
    header: "StepAP214_ApprovalItem.hxx".}
proc documentFile*(this: StepAP214ApprovalItem): Handle[StepBasicDocumentFile] {.
    noSideEffect, importcpp: "DocumentFile", header: "StepAP214_ApprovalItem.hxx".}
proc materialDesignation*(this: StepAP214ApprovalItem): Handle[
    StepReprMaterialDesignation] {.noSideEffect, importcpp: "MaterialDesignation",
                                  header: "StepAP214_ApprovalItem.hxx".}
proc mechanicalDesignGeometricPresentationRepresentation*(
    this: StepAP214ApprovalItem): Handle[StepVisualMechanicalDesignGeometricPresentationRepresentation] {.
    noSideEffect,
    importcpp: "MechanicalDesignGeometricPresentationRepresentation",
    header: "StepAP214_ApprovalItem.hxx".}
proc presentationArea*(this: StepAP214ApprovalItem): Handle[
    StepVisualPresentationArea] {.noSideEffect, importcpp: "PresentationArea",
                                 header: "StepAP214_ApprovalItem.hxx".}
proc product*(this: StepAP214ApprovalItem): Handle[StepBasicProduct] {.noSideEffect,
    importcpp: "Product", header: "StepAP214_ApprovalItem.hxx".}
proc productDefinition*(this: StepAP214ApprovalItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                 header: "StepAP214_ApprovalItem.hxx".}
proc productDefinitionFormation*(this: StepAP214ApprovalItem): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation", header: "StepAP214_ApprovalItem.hxx".}
proc productDefinitionRelationship*(this: StepAP214ApprovalItem): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_ApprovalItem.hxx".}
proc propertyDefinition*(this: StepAP214ApprovalItem): Handle[
    StepReprPropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition",
                                 header: "StepAP214_ApprovalItem.hxx".}
proc shapeRepresentation*(this: StepAP214ApprovalItem): Handle[
    StepShapeShapeRepresentation] {.noSideEffect,
                                   importcpp: "ShapeRepresentation",
                                   header: "StepAP214_ApprovalItem.hxx".}
proc securityClassification*(this: StepAP214ApprovalItem): Handle[
    StepBasicSecurityClassification] {.noSideEffect,
                                      importcpp: "SecurityClassification",
                                      header: "StepAP214_ApprovalItem.hxx".}
proc configurationItem*(this: StepAP214ApprovalItem): Handle[
    StepReprConfigurationItem] {.noSideEffect, importcpp: "ConfigurationItem",
                                header: "StepAP214_ApprovalItem.hxx".}
proc date*(this: StepAP214ApprovalItem): Handle[StepBasicDate] {.noSideEffect,
    importcpp: "Date", header: "StepAP214_ApprovalItem.hxx".}
proc document*(this: StepAP214ApprovalItem): Handle[StepBasicDocument] {.
    noSideEffect, importcpp: "Document", header: "StepAP214_ApprovalItem.hxx".}
proc effectivity*(this: StepAP214ApprovalItem): Handle[StepBasicEffectivity] {.
    noSideEffect, importcpp: "Effectivity", header: "StepAP214_ApprovalItem.hxx".}
proc group*(this: StepAP214ApprovalItem): Handle[StepBasicGroup] {.noSideEffect,
    importcpp: "Group", header: "StepAP214_ApprovalItem.hxx".}
proc groupRelationship*(this: StepAP214ApprovalItem): Handle[
    StepBasicGroupRelationship] {.noSideEffect, importcpp: "GroupRelationship",
                                 header: "StepAP214_ApprovalItem.hxx".}
proc productDefinitionFormationRelationship*(this: StepAP214ApprovalItem): Handle[
    StepBasicProductDefinitionFormationRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionFormationRelationship",
    header: "StepAP214_ApprovalItem.hxx".}
proc representation*(this: StepAP214ApprovalItem): Handle[StepReprRepresentation] {.
    noSideEffect, importcpp: "Representation", header: "StepAP214_ApprovalItem.hxx".}
proc shapeAspectRelationship*(this: StepAP214ApprovalItem): Handle[
    StepReprShapeAspectRelationship] {.noSideEffect,
                                      importcpp: "ShapeAspectRelationship",
                                      header: "StepAP214_ApprovalItem.hxx".}

























