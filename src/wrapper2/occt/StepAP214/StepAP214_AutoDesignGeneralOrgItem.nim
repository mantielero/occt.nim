##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of StepBasic_Product"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepBasic_ProductDefinitionWithAssociatedDocuments"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_ExternallyDefinedRepresentation"
discard "forward decl of StepAP214_AutoDesignDocumentReference"
type
  StepAP214_AutoDesignGeneralOrgItem* {.importcpp: "StepAP214_AutoDesignGeneralOrgItem", header: "StepAP214_AutoDesignGeneralOrgItem.hxx",
                                       bycopy.} = object of StepData_SelectType ## !
                                                                           ## Returns a
                                                                           ## AutoDesignGeneralOrgItem
                                                                           ## SelectType


proc constructStepAP214_AutoDesignGeneralOrgItem*(): StepAP214_AutoDesignGeneralOrgItem {.
    constructor, importcpp: "StepAP214_AutoDesignGeneralOrgItem(@)",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc CaseNum*(this: StepAP214_AutoDesignGeneralOrgItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc Product*(this: StepAP214_AutoDesignGeneralOrgItem): handle[StepBasic_Product] {.
    noSideEffect, importcpp: "Product",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc ProductDefinition*(this: StepAP214_AutoDesignGeneralOrgItem): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc ProductDefinitionFormation*(this: StepAP214_AutoDesignGeneralOrgItem): handle[
    StepBasic_ProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc ProductDefinitionRelationship*(this: StepAP214_AutoDesignGeneralOrgItem): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc ProductDefinitionWithAssociatedDocuments*(
    this: StepAP214_AutoDesignGeneralOrgItem): handle[
    StepBasic_ProductDefinitionWithAssociatedDocuments] {.noSideEffect,
    importcpp: "ProductDefinitionWithAssociatedDocuments",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc Representation*(this: StepAP214_AutoDesignGeneralOrgItem): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Representation",
                              header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc ExternallyDefinedRepresentation*(this: StepAP214_AutoDesignGeneralOrgItem): handle[
    StepRepr_ExternallyDefinedRepresentation] {.noSideEffect,
    importcpp: "ExternallyDefinedRepresentation",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc AutoDesignDocumentReference*(this: StepAP214_AutoDesignGeneralOrgItem): handle[
    StepAP214_AutoDesignDocumentReference] {.noSideEffect,
    importcpp: "AutoDesignDocumentReference",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}