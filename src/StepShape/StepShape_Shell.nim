##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of StepShape_OpenShell"
discard "forward decl of StepShape_ClosedShell"
type
  StepShapeShell* {.importcpp: "StepShape_Shell", header: "StepShape_Shell.hxx",
                   bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepShapeShell; theSize: csize_t): pointer {.
    importcpp: "StepShape_Shell::operator new", header: "StepShape_Shell.hxx".}
proc `delete`*(this: var StepShapeShell; theAddress: pointer) {.
    importcpp: "StepShape_Shell::operator delete", header: "StepShape_Shell.hxx".}
proc `new[]`*(this: var StepShapeShell; theSize: csize_t): pointer {.
    importcpp: "StepShape_Shell::operator new[]", header: "StepShape_Shell.hxx".}
proc `delete[]`*(this: var StepShapeShell; theAddress: pointer) {.
    importcpp: "StepShape_Shell::operator delete[]", header: "StepShape_Shell.hxx".}
proc `new`*(this: var StepShapeShell; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepShape_Shell::operator new", header: "StepShape_Shell.hxx".}
proc `delete`*(this: var StepShapeShell; a2: pointer; a3: pointer) {.
    importcpp: "StepShape_Shell::operator delete", header: "StepShape_Shell.hxx".}
proc constructStepShapeShell*(): StepShapeShell {.constructor,
    importcpp: "StepShape_Shell(@)", header: "StepShape_Shell.hxx".}
proc caseNum*(this: StepShapeShell; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepShape_Shell.hxx".}
proc openShell*(this: StepShapeShell): Handle[StepShapeOpenShell] {.noSideEffect,
    importcpp: "OpenShell", header: "StepShape_Shell.hxx".}
proc closedShell*(this: StepShapeShell): Handle[StepShapeClosedShell] {.
    noSideEffect, importcpp: "ClosedShell", header: "StepShape_Shell.hxx".}