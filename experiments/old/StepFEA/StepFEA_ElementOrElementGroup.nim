##  Created on: 2003-02-04
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepFEA_ElementRepresentation"
discard "forward decl of StepFEA_ElementGroup"
type
  StepFEA_ElementOrElementGroup* {.importcpp: "StepFEA_ElementOrElementGroup",
                                  header: "StepFEA_ElementOrElementGroup.hxx",
                                  bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepFEA_ElementOrElementGroup; theSize: csize_t): pointer {.
    importcpp: "StepFEA_ElementOrElementGroup::operator new",
    header: "StepFEA_ElementOrElementGroup.hxx".}
proc `delete`*(this: var StepFEA_ElementOrElementGroup; theAddress: pointer) {.
    importcpp: "StepFEA_ElementOrElementGroup::operator delete",
    header: "StepFEA_ElementOrElementGroup.hxx".}
proc `new[]`*(this: var StepFEA_ElementOrElementGroup; theSize: csize_t): pointer {.
    importcpp: "StepFEA_ElementOrElementGroup::operator new[]",
    header: "StepFEA_ElementOrElementGroup.hxx".}
proc `delete[]`*(this: var StepFEA_ElementOrElementGroup; theAddress: pointer) {.
    importcpp: "StepFEA_ElementOrElementGroup::operator delete[]",
    header: "StepFEA_ElementOrElementGroup.hxx".}
proc `new`*(this: var StepFEA_ElementOrElementGroup; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepFEA_ElementOrElementGroup::operator new",
    header: "StepFEA_ElementOrElementGroup.hxx".}
proc `delete`*(this: var StepFEA_ElementOrElementGroup; a2: pointer; a3: pointer) {.
    importcpp: "StepFEA_ElementOrElementGroup::operator delete",
    header: "StepFEA_ElementOrElementGroup.hxx".}
proc constructStepFEA_ElementOrElementGroup*(): StepFEA_ElementOrElementGroup {.
    constructor, importcpp: "StepFEA_ElementOrElementGroup(@)",
    header: "StepFEA_ElementOrElementGroup.hxx".}
proc caseNum*(this: StepFEA_ElementOrElementGroup; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepFEA_ElementOrElementGroup.hxx".}
proc elementRepresentation*(this: StepFEA_ElementOrElementGroup): Handle[
    StepFEA_ElementRepresentation] {.noSideEffect,
                                    importcpp: "ElementRepresentation",
                                    header: "StepFEA_ElementOrElementGroup.hxx".}
proc elementGroup*(this: StepFEA_ElementOrElementGroup): Handle[
    StepFEA_ElementGroup] {.noSideEffect, importcpp: "ElementGroup",
                           header: "StepFEA_ElementOrElementGroup.hxx".}