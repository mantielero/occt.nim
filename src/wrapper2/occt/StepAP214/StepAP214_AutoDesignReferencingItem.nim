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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

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
  StepAP214_AutoDesignReferencingItem* {.importcpp: "StepAP214_AutoDesignReferencingItem", header: "StepAP214_AutoDesignReferencingItem.hxx",
                                        bycopy.} = object of StepData_SelectType ## !
                                                                            ## Returns a
                                                                            ## AutoDesignReferencingItem
                                                                            ## SelectType


proc constructStepAP214_AutoDesignReferencingItem*(): StepAP214_AutoDesignReferencingItem {.
    constructor, importcpp: "StepAP214_AutoDesignReferencingItem(@)",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc CaseNum*(this: StepAP214_AutoDesignReferencingItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc Approval*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepBasic_Approval] {.noSideEffect, importcpp: "Approval",
                         header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc DocumentRelationship*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepBasic_DocumentRelationship] {.noSideEffect,
                                     importcpp: "DocumentRelationship", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc ExternallyDefinedRepresentation*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepRepr_ExternallyDefinedRepresentation] {.noSideEffect,
    importcpp: "ExternallyDefinedRepresentation",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc MappedItem*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepRepr_MappedItem] {.noSideEffect, importcpp: "MappedItem",
                          header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc MaterialDesignation*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepRepr_MaterialDesignation] {.noSideEffect,
                                   importcpp: "MaterialDesignation", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc PresentationArea*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepVisual_PresentationArea] {.noSideEffect, importcpp: "PresentationArea", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc PresentationView*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepVisual_PresentationView] {.noSideEffect, importcpp: "PresentationView", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc ProductCategory*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepBasic_ProductCategory] {.noSideEffect, importcpp: "ProductCategory", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc ProductDefinition*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc ProductDefinitionRelationship*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc PropertyDefinition*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepRepr_PropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition", header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc Representation*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Representation",
                              header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc RepresentationRelationship*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepRepr_RepresentationRelationship] {.noSideEffect,
    importcpp: "RepresentationRelationship",
    header: "StepAP214_AutoDesignReferencingItem.hxx".}
proc ShapeAspect*(this: StepAP214_AutoDesignReferencingItem): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "ShapeAspect",
                           header: "StepAP214_AutoDesignReferencingItem.hxx".}