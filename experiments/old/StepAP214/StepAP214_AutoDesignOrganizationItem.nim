##  Created on: 1998-08-04
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_PhysicallyModeledProductDefinition"
type
  StepAP214AutoDesignOrganizationItem* {.importcpp: "StepAP214_AutoDesignOrganizationItem", header: "StepAP214_AutoDesignOrganizationItem.hxx",
                                        bycopy.} = object of StepAP214AutoDesignGeneralOrgItem


proc `new`*(this: var StepAP214AutoDesignOrganizationItem; theSize: csize_t): pointer {.
    importcpp: "StepAP214_AutoDesignOrganizationItem::operator new",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc `delete`*(this: var StepAP214AutoDesignOrganizationItem; theAddress: pointer) {.
    importcpp: "StepAP214_AutoDesignOrganizationItem::operator delete",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc `new[]`*(this: var StepAP214AutoDesignOrganizationItem; theSize: csize_t): pointer {.
    importcpp: "StepAP214_AutoDesignOrganizationItem::operator new[]",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc `delete[]`*(this: var StepAP214AutoDesignOrganizationItem; theAddress: pointer) {.
    importcpp: "StepAP214_AutoDesignOrganizationItem::operator delete[]",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc `new`*(this: var StepAP214AutoDesignOrganizationItem; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepAP214_AutoDesignOrganizationItem::operator new", header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc `delete`*(this: var StepAP214AutoDesignOrganizationItem; a2: pointer; a3: pointer) {.
    importcpp: "StepAP214_AutoDesignOrganizationItem::operator delete",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc constructStepAP214AutoDesignOrganizationItem*(): StepAP214AutoDesignOrganizationItem {.
    constructor, importcpp: "StepAP214_AutoDesignOrganizationItem(@)",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc caseNum*(this: StepAP214AutoDesignOrganizationItem;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc document*(this: StepAP214AutoDesignOrganizationItem): Handle[StepBasicDocument] {.
    noSideEffect, importcpp: "Document",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc physicallyModeledProductDefinition*(this: StepAP214AutoDesignOrganizationItem): Handle[
    StepBasicPhysicallyModeledProductDefinition] {.noSideEffect,
    importcpp: "PhysicallyModeledProductDefinition",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}