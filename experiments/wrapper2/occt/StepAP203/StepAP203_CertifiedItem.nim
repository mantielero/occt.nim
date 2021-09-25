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
discard "forward decl of StepRepr_SuppliedPartRelationship"
type
  StepAP203CertifiedItem* {.importcpp: "StepAP203_CertifiedItem",
                           header: "StepAP203_CertifiedItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor


proc constructStepAP203CertifiedItem*(): StepAP203CertifiedItem {.constructor,
    importcpp: "StepAP203_CertifiedItem(@)", header: "StepAP203_CertifiedItem.hxx".}
proc caseNum*(this: StepAP203CertifiedItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP203_CertifiedItem.hxx".}
proc suppliedPartRelationship*(this: StepAP203CertifiedItem): Handle[
    StepReprSuppliedPartRelationship] {.noSideEffect,
                                       importcpp: "SuppliedPartRelationship",
                                       header: "StepAP203_CertifiedItem.hxx".}
