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
type
  StepAP203ContractedItem* {.importcpp: "StepAP203_ContractedItem",
                            header: "StepAP203_ContractedItem.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepAP203ContractedItem; theSize: csize_t): pointer {.
    importcpp: "StepAP203_ContractedItem::operator new",
    header: "StepAP203_ContractedItem.hxx".}
proc `delete`*(this: var StepAP203ContractedItem; theAddress: pointer) {.
    importcpp: "StepAP203_ContractedItem::operator delete",
    header: "StepAP203_ContractedItem.hxx".}
proc `new[]`*(this: var StepAP203ContractedItem; theSize: csize_t): pointer {.
    importcpp: "StepAP203_ContractedItem::operator new[]",
    header: "StepAP203_ContractedItem.hxx".}
proc `delete[]`*(this: var StepAP203ContractedItem; theAddress: pointer) {.
    importcpp: "StepAP203_ContractedItem::operator delete[]",
    header: "StepAP203_ContractedItem.hxx".}
proc `new`*(this: var StepAP203ContractedItem; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepAP203_ContractedItem::operator new",
    header: "StepAP203_ContractedItem.hxx".}
proc `delete`*(this: var StepAP203ContractedItem; a2: pointer; a3: pointer) {.
    importcpp: "StepAP203_ContractedItem::operator delete",
    header: "StepAP203_ContractedItem.hxx".}
proc constructStepAP203ContractedItem*(): StepAP203ContractedItem {.constructor,
    importcpp: "StepAP203_ContractedItem(@)",
    header: "StepAP203_ContractedItem.hxx".}
proc caseNum*(this: StepAP203ContractedItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP203_ContractedItem.hxx".}
proc productDefinitionFormation*(this: StepAP203ContractedItem): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation",
    header: "StepAP203_ContractedItem.hxx".}