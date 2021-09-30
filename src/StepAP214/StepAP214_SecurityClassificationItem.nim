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

discard "forward decl of StepBasic_Action"
discard "forward decl of StepRepr_AssemblyComponentUsage"
discard "forward decl of StepRepr_ConfigurationDesign"
discard "forward decl of StepRepr_ConfigurationEffectivity"
discard "forward decl of StepVisual_DraughtingModel"
discard "forward decl of StepBasic_GeneralProperty"
discard "forward decl of StepRepr_MakeFromUsageOption"
discard "forward decl of StepRepr_ProductConcept"
discard "forward decl of StepRepr_ProductDefinitionUsage"
discard "forward decl of StepBasic_VersionedActionRequest"
type
  StepAP214SecurityClassificationItem* {.importcpp: "StepAP214_SecurityClassificationItem", header: "StepAP214_SecurityClassificationItem.hxx",
                                        bycopy.} = object of StepAP214ApprovalItem ## !
                                                                              ## Returns a
                                                                              ## SecurityClassificationItem
                                                                              ## SelectType


proc constructStepAP214SecurityClassificationItem*(): StepAP214SecurityClassificationItem {.
    constructor, importcpp: "StepAP214_SecurityClassificationItem(@)",
    header: "StepAP214_SecurityClassificationItem.hxx".}
proc caseNum*(this: StepAP214SecurityClassificationItem;
             ent: Handle[StandardTransient]): cint {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_SecurityClassificationItem.hxx".}
proc action*(this: StepAP214SecurityClassificationItem): Handle[StepBasicAction] {.
    noSideEffect, importcpp: "Action",
    header: "StepAP214_SecurityClassificationItem.hxx".}
proc assemblyComponentUsage*(this: StepAP214SecurityClassificationItem): Handle[
    StepReprAssemblyComponentUsage] {.noSideEffect,
                                     importcpp: "AssemblyComponentUsage", header: "StepAP214_SecurityClassificationItem.hxx".}
proc configurationDesign*(this: StepAP214SecurityClassificationItem): Handle[
    StepReprConfigurationDesign] {.noSideEffect, importcpp: "ConfigurationDesign", header: "StepAP214_SecurityClassificationItem.hxx".}
proc configurationEffectivity*(this: StepAP214SecurityClassificationItem): Handle[
    StepReprConfigurationEffectivity] {.noSideEffect,
                                       importcpp: "ConfigurationEffectivity", header: "StepAP214_SecurityClassificationItem.hxx".}
proc draughtingModel*(this: StepAP214SecurityClassificationItem): Handle[
    StepVisualDraughtingModel] {.noSideEffect, importcpp: "DraughtingModel", header: "StepAP214_SecurityClassificationItem.hxx".}
proc generalProperty*(this: StepAP214SecurityClassificationItem): Handle[
    StepBasicGeneralProperty] {.noSideEffect, importcpp: "GeneralProperty", header: "StepAP214_SecurityClassificationItem.hxx".}
proc makeFromUsageOption*(this: StepAP214SecurityClassificationItem): Handle[
    StepReprMakeFromUsageOption] {.noSideEffect, importcpp: "MakeFromUsageOption", header: "StepAP214_SecurityClassificationItem.hxx".}
proc productConcept*(this: StepAP214SecurityClassificationItem): Handle[
    StepReprProductConcept] {.noSideEffect, importcpp: "ProductConcept",
                             header: "StepAP214_SecurityClassificationItem.hxx".}
proc productDefinitionUsage*(this: StepAP214SecurityClassificationItem): Handle[
    StepReprProductDefinitionUsage] {.noSideEffect,
                                     importcpp: "ProductDefinitionUsage", header: "StepAP214_SecurityClassificationItem.hxx".}
proc versionedActionRequest*(this: StepAP214SecurityClassificationItem): Handle[
    StepBasicVersionedActionRequest] {.noSideEffect,
                                      importcpp: "VersionedActionRequest", header: "StepAP214_SecurityClassificationItem.hxx".}

























