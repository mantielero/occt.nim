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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_ProductDefinitionRelationship"
discard "forward decl of StepBasic_ProductDefinition"
type
  StepAP214PresentedItemSelect* {.importcpp: "StepAP214_PresentedItemSelect",
                                 header: "StepAP214_PresentedItemSelect.hxx",
                                 bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                    ## PresentedItemSelect SelectType


proc constructStepAP214PresentedItemSelect*(): StepAP214PresentedItemSelect {.
    constructor, importcpp: "StepAP214_PresentedItemSelect(@)",
    header: "StepAP214_PresentedItemSelect.hxx".}
proc caseNum*(this: StepAP214PresentedItemSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP214_PresentedItemSelect.hxx".}
proc productDefinitionRelationship*(this: StepAP214PresentedItemSelect): Handle[
    StepBasicProductDefinitionRelationship] {.noSideEffect,
    importcpp: "ProductDefinitionRelationship",
    header: "StepAP214_PresentedItemSelect.hxx".}
proc productDefinition*(this: StepAP214PresentedItemSelect): Handle[
    StepBasicProductDefinition] {.noSideEffect, importcpp: "ProductDefinition",
                                 header: "StepAP214_PresentedItemSelect.hxx".}
