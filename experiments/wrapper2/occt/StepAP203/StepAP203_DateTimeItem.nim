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
  StepAP203DateTimeItem* {.importcpp: "StepAP203_DateTimeItem",
                          header: "StepAP203_DateTimeItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor


proc constructStepAP203DateTimeItem*(): StepAP203DateTimeItem {.constructor,
    importcpp: "StepAP203_DateTimeItem(@)", header: "StepAP203_DateTimeItem.hxx".}
proc caseNum*(this: StepAP203DateTimeItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP203_DateTimeItem.hxx".}
proc productDefinition*(this: StepAP203DateTimeItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                 header: "StepAP203_DateTimeItem.hxx".}
proc changeRequest*(this: StepAP203DateTimeItem): Handle[StepAP203ChangeRequest] {.
    noSideEffect, importcpp: "ChangeRequest", header: "StepAP203_DateTimeItem.hxx".}
proc startRequest*(this: StepAP203DateTimeItem): Handle[StepAP203StartRequest] {.
    noSideEffect, importcpp: "StartRequest", header: "StepAP203_DateTimeItem.hxx".}
proc change*(this: StepAP203DateTimeItem): Handle[StepAP203Change] {.noSideEffect,
    importcpp: "Change", header: "StepAP203_DateTimeItem.hxx".}
proc startWork*(this: StepAP203DateTimeItem): Handle[StepAP203StartWork] {.
    noSideEffect, importcpp: "StartWork", header: "StepAP203_DateTimeItem.hxx".}
proc approvalPersonOrganization*(this: StepAP203DateTimeItem): Handle[
    StepBasicApprovalPersonOrganization] {.noSideEffect,
    importcpp: "ApprovalPersonOrganization", header: "StepAP203_DateTimeItem.hxx".}
proc contract*(this: StepAP203DateTimeItem): Handle[StepBasicContract] {.
    noSideEffect, importcpp: "Contract", header: "StepAP203_DateTimeItem.hxx".}
proc securityClassification*(this: StepAP203DateTimeItem): Handle[
    StepBasicSecurityClassification] {.noSideEffect,
                                      importcpp: "SecurityClassification",
                                      header: "StepAP203_DateTimeItem.hxx".}
proc certification*(this: StepAP203DateTimeItem): Handle[StepBasicCertification] {.
    noSideEffect, importcpp: "Certification", header: "StepAP203_DateTimeItem.hxx".}
