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
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepRepr_AssemblyComponentUsage"
type
  StepAP203_ClassifiedItem* {.importcpp: "StepAP203_ClassifiedItem",
                             header: "StepAP203_ClassifiedItem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepAP203_ClassifiedItem*(): StepAP203_ClassifiedItem {.constructor,
    importcpp: "StepAP203_ClassifiedItem(@)",
    header: "StepAP203_ClassifiedItem.hxx".}
proc CaseNum*(this: StepAP203_ClassifiedItem; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP203_ClassifiedItem.hxx".}
proc ProductDefinitionFormation*(this: StepAP203_ClassifiedItem): handle[
    StepBasic_ProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation",
    header: "StepAP203_ClassifiedItem.hxx".}
proc AssemblyComponentUsage*(this: StepAP203_ClassifiedItem): handle[
    StepRepr_AssemblyComponentUsage] {.noSideEffect,
                                      importcpp: "AssemblyComponentUsage",
                                      header: "StepAP203_ClassifiedItem.hxx".}