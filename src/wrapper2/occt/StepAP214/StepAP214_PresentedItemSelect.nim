##  Created on: 1999-03-10
##  Created by: data exchange team
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
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepBasic_ProductDefinition"
type
  StepAP214_PresentedItemSelect* {.importcpp: "StepAP214_PresentedItemSelect",
                                  header: "StepAP214_PresentedItemSelect.hxx",
                                  bycopy.} = object of StepData_SelectType ## ! Returns a
                                                                      ## PresentedItemSelect SelectType


proc constructStepAP214_PresentedItemSelect*(): StepAP214_PresentedItemSelect {.
    constructor, importcpp: "StepAP214_PresentedItemSelect(@)",
    header: "StepAP214_PresentedItemSelect.hxx".}
proc CaseNum*(this: StepAP214_PresentedItemSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_PresentedItemSelect.hxx".}
proc ProductDefinitionRelationship*(this: StepAP214_PresentedItemSelect): handle[
    StepBasic_ProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_PresentedItemSelect.hxx".}
proc ProductDefinition*(this: StepAP214_PresentedItemSelect): handle[
    StepBasic_ProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                  header: "StepAP214_PresentedItemSelect.hxx".}