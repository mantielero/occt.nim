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
  ../Standard/Standard_Handle, StepAP214_ApprovalItem

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
  StepAP214_SecurityClassificationItem* {.
      importcpp: "StepAP214_SecurityClassificationItem",
      header: "StepAP214_SecurityClassificationItem.hxx", bycopy.} = object of StepAP214_ApprovalItem ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## a
                                                                                               ## SecurityClassificationItem
                                                                                               ## SelectType


proc constructStepAP214_SecurityClassificationItem*(): StepAP214_SecurityClassificationItem {.
    constructor, importcpp: "StepAP214_SecurityClassificationItem(@)",
    header: "StepAP214_SecurityClassificationItem.hxx".}
proc CaseNum*(this: StepAP214_SecurityClassificationItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_SecurityClassificationItem.hxx".}
proc Action*(this: StepAP214_SecurityClassificationItem): handle[StepBasic_Action] {.
    noSideEffect, importcpp: "Action",
    header: "StepAP214_SecurityClassificationItem.hxx".}
proc AssemblyComponentUsage*(this: StepAP214_SecurityClassificationItem): handle[
    StepRepr_AssemblyComponentUsage] {.noSideEffect,
                                      importcpp: "AssemblyComponentUsage", header: "StepAP214_SecurityClassificationItem.hxx".}
proc ConfigurationDesign*(this: StepAP214_SecurityClassificationItem): handle[
    StepRepr_ConfigurationDesign] {.noSideEffect,
                                   importcpp: "ConfigurationDesign", header: "StepAP214_SecurityClassificationItem.hxx".}
proc ConfigurationEffectivity*(this: StepAP214_SecurityClassificationItem): handle[
    StepRepr_ConfigurationEffectivity] {.noSideEffect,
                                        importcpp: "ConfigurationEffectivity", header: "StepAP214_SecurityClassificationItem.hxx".}
proc DraughtingModel*(this: StepAP214_SecurityClassificationItem): handle[
    StepVisual_DraughtingModel] {.noSideEffect, importcpp: "DraughtingModel", header: "StepAP214_SecurityClassificationItem.hxx".}
proc GeneralProperty*(this: StepAP214_SecurityClassificationItem): handle[
    StepBasic_GeneralProperty] {.noSideEffect, importcpp: "GeneralProperty", header: "StepAP214_SecurityClassificationItem.hxx".}
proc MakeFromUsageOption*(this: StepAP214_SecurityClassificationItem): handle[
    StepRepr_MakeFromUsageOption] {.noSideEffect,
                                   importcpp: "MakeFromUsageOption", header: "StepAP214_SecurityClassificationItem.hxx".}
proc ProductConcept*(this: StepAP214_SecurityClassificationItem): handle[
    StepRepr_ProductConcept] {.noSideEffect, importcpp: "ProductConcept", header: "StepAP214_SecurityClassificationItem.hxx".}
proc ProductDefinitionUsage*(this: StepAP214_SecurityClassificationItem): handle[
    StepRepr_ProductDefinitionUsage] {.noSideEffect,
                                      importcpp: "ProductDefinitionUsage", header: "StepAP214_SecurityClassificationItem.hxx".}
proc VersionedActionRequest*(this: StepAP214_SecurityClassificationItem): handle[
    StepBasic_VersionedActionRequest] {.noSideEffect,
                                       importcpp: "VersionedActionRequest", header: "StepAP214_SecurityClassificationItem.hxx".}