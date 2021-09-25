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
discard "forward decl of StepBasic_ApprovalPersonOrganization"
discard "forward decl of StepAP214_AutoDesignDateAndPersonAssignment"
discard "forward decl of StepBasic_ProductDefinitionEffectivity"
type
  StepAP214AutoDesignDatedItem* {.importcpp: "StepAP214_AutoDesignDatedItem",
                                 header: "StepAP214_AutoDesignDatedItem.hxx",
                                 bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                    ## AutoDesignDatedItem SelectType


proc constructStepAP214AutoDesignDatedItem*(): StepAP214AutoDesignDatedItem {.
    constructor, importcpp: "StepAP214_AutoDesignDatedItem(@)",
    header: "StepAP214_AutoDesignDatedItem.hxx".}
proc caseNum*(this: StepAP214AutoDesignDatedItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_AutoDesignDatedItem.hxx".}
proc approvalPersonOrganization*(this: StepAP214AutoDesignDatedItem): Handle[
    StepBasicApprovalPersonOrganization] {.noSideEffect,
    importcpp: "ApprovalPersonOrganization",
    header: "StepAP214_AutoDesignDatedItem.hxx".}
proc autoDesignDateAndPersonAssignment*(this: StepAP214AutoDesignDatedItem): Handle[
    StepAP214AutoDesignDateAndPersonAssignment] {.noSideEffect,
    importcpp: "AutoDesignDateAndPersonAssignment",
    header: "StepAP214_AutoDesignDatedItem.hxx".}
proc productDefinitionEffectivity*(this: StepAP214AutoDesignDatedItem): Handle[
    StepBasicProductDefinitionEffectivity] {.noSideEffect,
    importcpp: "ProductDefinitionEffectivity",
    header: "StepAP214_AutoDesignDatedItem.hxx".}
