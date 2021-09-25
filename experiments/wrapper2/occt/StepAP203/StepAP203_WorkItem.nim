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
  StepAP203WorkItem* {.importcpp: "StepAP203_WorkItem",
                      header: "StepAP203_WorkItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructStepAP203WorkItem*(): StepAP203WorkItem {.constructor,
    importcpp: "StepAP203_WorkItem(@)", header: "StepAP203_WorkItem.hxx".}
proc caseNum*(this: StepAP203WorkItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP203_WorkItem.hxx".}
proc productDefinitionFormation*(this: StepAP203WorkItem): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation", header: "StepAP203_WorkItem.hxx".}
