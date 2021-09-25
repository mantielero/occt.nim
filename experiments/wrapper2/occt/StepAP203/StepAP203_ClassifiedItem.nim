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
discard "forward decl of StepRepr_AssemblyComponentUsage"
type
  StepAP203ClassifiedItem* {.importcpp: "StepAP203_ClassifiedItem",
                            header: "StepAP203_ClassifiedItem.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor


proc constructStepAP203ClassifiedItem*(): StepAP203ClassifiedItem {.constructor,
    importcpp: "StepAP203_ClassifiedItem(@)",
    header: "StepAP203_ClassifiedItem.hxx".}
proc caseNum*(this: StepAP203ClassifiedItem; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP203_ClassifiedItem.hxx".}
proc productDefinitionFormation*(this: StepAP203ClassifiedItem): Handle[
    StepBasicProductDefinitionFormation] {.noSideEffect,
    importcpp: "ProductDefinitionFormation",
    header: "StepAP203_ClassifiedItem.hxx".}
proc assemblyComponentUsage*(this: StepAP203ClassifiedItem): Handle[
    StepReprAssemblyComponentUsage] {.noSideEffect,
                                     importcpp: "AssemblyComponentUsage",
                                     header: "StepAP203_ClassifiedItem.hxx".}
