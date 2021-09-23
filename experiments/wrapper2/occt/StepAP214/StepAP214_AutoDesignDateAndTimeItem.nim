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
discard "forward decl of StepBasic_ApprovalPersonOrganization"
discard "forward decl of StepAP214_AutoDesignDateAndPersonAssignment"
discard "forward decl of StepBasic_ProductDefinitionEffectivity"
type
  StepAP214_AutoDesignDateAndTimeItem* {.importcpp: "StepAP214_AutoDesignDateAndTimeItem", header: "StepAP214_AutoDesignDateAndTimeItem.hxx",
                                        bycopy.} = object of StepData_SelectType ## !
                                                                            ## Returns a
                                                                            ## AutoDesignDateAndTimeItem
                                                                            ## SelectType


proc constructStepAP214_AutoDesignDateAndTimeItem*(): StepAP214_AutoDesignDateAndTimeItem {.
    constructor, importcpp: "StepAP214_AutoDesignDateAndTimeItem(@)",
    header: "StepAP214_AutoDesignDateAndTimeItem.hxx".}
proc CaseNum*(this: StepAP214_AutoDesignDateAndTimeItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignDateAndTimeItem.hxx".}
proc ApprovalPersonOrganization*(this: StepAP214_AutoDesignDateAndTimeItem): handle[
    StepBasic_ApprovalPersonOrganization] {.noSideEffect,
    importcpp: "ApprovalPersonOrganization",
    header: "StepAP214_AutoDesignDateAndTimeItem.hxx".}
proc AutoDesignDateAndPersonAssignment*(this: StepAP214_AutoDesignDateAndTimeItem): handle[
    StepAP214_AutoDesignDateAndPersonAssignment] {.noSideEffect,
    importcpp: "AutoDesignDateAndPersonAssignment",
    header: "StepAP214_AutoDesignDateAndTimeItem.hxx".}
proc ProductDefinitionEffectivity*(this: StepAP214_AutoDesignDateAndTimeItem): handle[
    StepBasic_ProductDefinitionEffectivity] {.noSideEffect,
    importcpp: "ProductDefinitionEffectivity",
    header: "StepAP214_AutoDesignDateAndTimeItem.hxx".}