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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, StepAP214_AutoDesignGeneralOrgItem,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_PhysicallyModeledProductDefinition"
type
  StepAP214_AutoDesignOrganizationItem* {.
      importcpp: "StepAP214_AutoDesignOrganizationItem",
      header: "StepAP214_AutoDesignOrganizationItem.hxx", bycopy.} = object of StepAP214_AutoDesignGeneralOrgItem


proc constructStepAP214_AutoDesignOrganizationItem*(): StepAP214_AutoDesignOrganizationItem {.
    constructor, importcpp: "StepAP214_AutoDesignOrganizationItem(@)",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc CaseNum*(this: StepAP214_AutoDesignOrganizationItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc Document*(this: StepAP214_AutoDesignOrganizationItem): handle[
    StepBasic_Document] {.noSideEffect, importcpp: "Document",
                         header: "StepAP214_AutoDesignOrganizationItem.hxx".}
proc PhysicallyModeledProductDefinition*(this: StepAP214_AutoDesignOrganizationItem): handle[
    StepBasic_PhysicallyModeledProductDefinition] {.noSideEffect,
    importcpp: "PhysicallyModeledProductDefinition",
    header: "StepAP214_AutoDesignOrganizationItem.hxx".}