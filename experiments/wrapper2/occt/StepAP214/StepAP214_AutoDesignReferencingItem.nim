##  Created on: 1998-08-04
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_Approval"
discard "forward decl of StepBasic_DocumentRelationship"
discard "forward decl of StepRepr_ExternallyDefinedRepresentation"
discard "forward decl of StepRepr_MappedItem"
discard "forward decl of StepRepr_MaterialDesignation"
discard "forward decl of StepVisual_PresentationArea"
discard "forward decl of StepVisual_PresentationView"
discard "forward decl of StepBasic_ProductCategory"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_RepresentationRelationship"
discard "forward decl of StepRepr_ShapeAspect"
type
  StepAP214AutoDesignReferencingItem* {.importcpp: "StepAP214_AutoDesignReferencingItem", header: "StepAP214_AutoDesignReferencingItem.hxx",
                                       bycopy.} = object of StepDataSelectType ## !
                                                                          ## Returns a
                                                                          ## AutoDesignReferencingItem
                                                                          ## SelectType


proc constructStepAP214AutoDesignReferencingItem*(): StepAP214AutoDesignReferencingItem {.
    constructor, importcpp: "StepAP214_AutoDesignReferencingItem(@)",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc caseNum*(this: StepAP214AutoDesignReferencingItem;
             ent: Handle[StandardTransient]): cint {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc approval*(this: StepAP214AutoDesignReferencingItem): Handle[StepBasicApproval] {.
    noSideEffect, importcpp: "Approval",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc documentRelationship*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepBasicDocumentRelationship] {.noSideEffect,
                                    importcpp: "DocumentRelationship", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc externallyDefinedRepresentation*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepReprExternallyDefinedRepresentation] {.noSideEffect,
    importcpp: "ExternallyDefinedRepresentation",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc mappedItem*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepReprMappedItem] {.noSideEffect, importcpp: "MappedItem",
                         header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc materialDesignation*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepReprMaterialDesignation] {.noSideEffect, importcpp: "MaterialDesignation", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc presentationArea*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepVisualPresentationArea] {.noSideEffect, importcpp: "PresentationArea", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc presentationView*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepVisualPresentationView] {.noSideEffect, importcpp: "PresentationView", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc productCategory*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepBasicProductCategory] {.noSideEffect, importcpp: "ProductCategory", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc productDefinition*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc productDefinitionRelationship*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc propertyDefinition*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepReprPropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc representation*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "Representation",
                             header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc representationRelationship*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepReprRepresentationRelationship] {.noSideEffect,
    importcpp: "RepresentationRelationship",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc shapeAspect*(this: StepAP214AutoDesignReferencingItem): Handle[
    StepReprShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                          header: "StepAP214_AutoDesignReferencingItem.hxx".}

























