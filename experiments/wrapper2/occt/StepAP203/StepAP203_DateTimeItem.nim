##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
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
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepAP203_ChangeRequest"
discard "forward decl of StepAP203_StartRequest"
discard "forward decl of StepAP203_Change"
discard "forward decl of StepAP203_StartWork"
discard "forward decl of StepBasic_ApprovalPersonOrganization"
discard "forward decl of StepBasic_Contract"
discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepBasic_Certification"
type
  StepAP203_DateTimeItem* {.importcpp: "StepAP203_DateTimeItem",
                           header: "StepAP203_DateTimeItem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor


proc constructStepAP203_DateTimeItem*(): StepAP203_DateTimeItem {.constructor,
    importcpp: "StepAP203_DateTimeItem(@)", header: "StepAP203_DateTimeItem.hxx".}
proc CaseNum*(this: StepAP203_DateTimeItem; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP203_DateTimeItem.hxx".}
proc ProductDefinition*(this: StepAP203_DateTimeItem): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                  header: "StepAP203_DateTimeItem.hxx".}
proc ChangeRequest*(this: StepAP203_DateTimeItem): handle[StepAP203_ChangeRequest] {.
    noSideEffect, importcpp: "ChangeRequest", header: "StepAP203_DateTimeItem.hxx".}
proc StartRequest*(this: StepAP203_DateTimeItem): handle[StepAP203_StartRequest] {.
    noSideEffect, importcpp: "StartRequest", header: "StepAP203_DateTimeItem.hxx".}
proc Change*(this: StepAP203_DateTimeItem): handle[StepAP203_Change] {.noSideEffect,
    importcpp: "Change", header: "StepAP203_DateTimeItem.hxx".}
proc StartWork*(this: StepAP203_DateTimeItem): handle[StepAP203_StartWork] {.
    noSideEffect, importcpp: "StartWork", header: "StepAP203_DateTimeItem.hxx".}
proc ApprovalPersonOrganization*(this: StepAP203_DateTimeItem): handle[
    StepBasic_ApprovalPersonOrganization] {.noSideEffect,
    importcpp: "ApprovalPersonOrganization", header: "StepAP203_DateTimeItem.hxx".}
proc Contract*(this: StepAP203_DateTimeItem): handle[StepBasic_Contract] {.
    noSideEffect, importcpp: "Contract", header: "StepAP203_DateTimeItem.hxx".}
proc SecurityClassification*(this: StepAP203_DateTimeItem): handle[
    StepBasic_SecurityClassification] {.noSideEffect,
                                       importcpp: "SecurityClassification",
                                       header: "StepAP203_DateTimeItem.hxx".}
proc Certification*(this: StepAP203_DateTimeItem): handle[StepBasic_Certification] {.
    noSideEffect, importcpp: "Certification", header: "StepAP203_DateTimeItem.hxx".}