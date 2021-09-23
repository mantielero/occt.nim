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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_OpenShell"
discard "forward decl of StepShape_ClosedShell"
type
  StepShape_Shell* {.importcpp: "StepShape_Shell", header: "StepShape_Shell.hxx",
                    bycopy.} = object of StepData_SelectType ## ! Returns a Shell SelectType


proc constructStepShape_Shell*(): StepShape_Shell {.constructor,
    importcpp: "StepShape_Shell(@)", header: "StepShape_Shell.hxx".}
proc CaseNum*(this: StepShape_Shell; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepShape_Shell.hxx".}
proc OpenShell*(this: StepShape_Shell): handle[StepShape_OpenShell] {.noSideEffect,
    importcpp: "OpenShell", header: "StepShape_Shell.hxx".}
proc ClosedShell*(this: StepShape_Shell): handle[StepShape_ClosedShell] {.
    noSideEffect, importcpp: "ClosedShell", header: "StepShape_Shell.hxx".}