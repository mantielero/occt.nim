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
  StepAP214AutoDesignGeneralOrgItem* {.importcpp: "StepAP214_AutoDesignGeneralOrgItem", header: "StepAP214_AutoDesignGeneralOrgItem.hxx",
                                      bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                         ## AutoDesignGeneralOrgItem
                                                                         ## SelectType


proc constructStepAP214AutoDesignGeneralOrgItem*(): StepAP214AutoDesignGeneralOrgItem {.
    constructor, importcpp: "StepAP214_AutoDesignGeneralOrgItem(@)",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc caseNum*(this: StepAP214AutoDesignGeneralOrgItem;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc product*(this: StepAP214AutoDesignGeneralOrgItem): Handle[StepBasicProduct] {.
    noSideEffect, importcpp: "Product",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc productDefinition*(this: StepAP214AutoDesignGeneralOrgItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition", header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc productDefinitionFormation*(this: StepAP214AutoDesignGeneralOrgItem): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc productDefinitionRelationship*(this: StepAP214AutoDesignGeneralOrgItem): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc productDefinitionWithAssociatedDocuments*(
    this: StepAP214AutoDesignGeneralOrgItem): Handle[
    StepBasicProductDefinitionWithAssociatedDocuments] {.noSideEffect,
    importcpp: "ProductDefinitionWithAssociatedDocuments",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc representation*(this: StepAP214AutoDesignGeneralOrgItem): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "Representation",
                             header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc externallyDefinedRepresentation*(this: StepAP214AutoDesignGeneralOrgItem): Handle[
    StepReprExternallyDefinedRepresentation] {.noSideEffect,
    importcpp: "ExternallyDefinedRepresentation",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
proc autoDesignDocumentReference*(this: StepAP214AutoDesignGeneralOrgItem): Handle[
    StepAP214AutoDesignDocumentReference] {.noSideEffect,
    importcpp: "AutoDesignDocumentReference",
    header: "StepAP214_AutoDesignGeneralOrgItem.hxx".}
