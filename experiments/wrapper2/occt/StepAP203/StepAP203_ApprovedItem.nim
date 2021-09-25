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
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepRepr_ConfigurationEffectivity"
discard "forward decl of StepRepr_ConfigurationItem"
discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepAP203_ChangeRequest"
discard "forward decl of StepAP203_Change"
discard "forward decl of StepAP203_StartRequest"
discard "forward decl of StepAP203_StartWork"
discard "forward decl of StepBasic_Certification"
discard "forward decl of StepBasic_Contract"
type
  StepAP203ApprovedItem* {.importcpp: "StepAP203_ApprovedItem",
                          header: "StepAP203_ApprovedItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor


proc constructStepAP203ApprovedItem*(): StepAP203ApprovedItem {.constructor,
    importcpp: "StepAP203_ApprovedItem(@)", header: "StepAP203_ApprovedItem.hxx".}
proc caseNum*(this: StepAP203ApprovedItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP203_ApprovedItem.hxx".}
proc productDefinitionFormation*(this: StepAP203ApprovedItem): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation", header: "StepAP203_ApprovedItem.hxx".}
proc productDefinition*(this: StepAP203ApprovedItem): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                 header: "StepAP203_ApprovedItem.hxx".}
proc configurationEffectivity*(this: StepAP203ApprovedItem): Handle[
    StepReprConfigurationEffectivity] {.noSideEffect,
                                       importcpp: "ConfigurationEffectivity",
                                       header: "StepAP203_ApprovedItem.hxx".}
proc configurationItem*(this: StepAP203ApprovedItem): Handle[
    StepReprConfigurationItem] {.noSideEffect, importcpp: "ConfigurationItem",
                                header: "StepAP203_ApprovedItem.hxx".}
proc securityClassification*(this: StepAP203ApprovedItem): Handle[
    StepBasicSecurityClassification] {.noSideEffect,
                                      importcpp: "SecurityClassification",
                                      header: "StepAP203_ApprovedItem.hxx".}
proc changeRequest*(this: StepAP203ApprovedItem): Handle[StepAP203ChangeRequest] {.
    noSideEffect, importcpp: "ChangeRequest", header: "StepAP203_ApprovedItem.hxx".}
proc change*(this: StepAP203ApprovedItem): Handle[StepAP203Change] {.noSideEffect,
    importcpp: "Change", header: "StepAP203_ApprovedItem.hxx".}
proc startRequest*(this: StepAP203ApprovedItem): Handle[StepAP203StartRequest] {.
    noSideEffect, importcpp: "StartRequest", header: "StepAP203_ApprovedItem.hxx".}
proc startWork*(this: StepAP203ApprovedItem): Handle[StepAP203StartWork] {.
    noSideEffect, importcpp: "StartWork", header: "StepAP203_ApprovedItem.hxx".}
proc certification*(this: StepAP203ApprovedItem): Handle[StepBasicCertification] {.
    noSideEffect, importcpp: "Certification", header: "StepAP203_ApprovedItem.hxx".}
proc contract*(this: StepAP203ApprovedItem): Handle[StepBasicContract] {.
    noSideEffect, importcpp: "Contract", header: "StepAP203_ApprovedItem.hxx".}
