##  Created on: 1993-07-28
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

## ! This class implements the common services for
## ! all classes of StepToTopoDS which report error
## ! and sets and returns precision.

type
  StepToTopoDS_Root* {.importcpp: "StepToTopoDS_Root",
                      header: "StepToTopoDS_Root.hxx", bycopy.} = object


proc IsDone*(this: StepToTopoDS_Root): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "StepToTopoDS_Root.hxx".}
proc Precision*(this: StepToTopoDS_Root): Standard_Real {.noSideEffect,
    importcpp: "Precision", header: "StepToTopoDS_Root.hxx".}
proc SetPrecision*(this: var StepToTopoDS_Root; preci: Standard_Real) {.
    importcpp: "SetPrecision", header: "StepToTopoDS_Root.hxx".}
proc MaxTol*(this: StepToTopoDS_Root): Standard_Real {.noSideEffect,
    importcpp: "MaxTol", header: "StepToTopoDS_Root.hxx".}
proc SetMaxTol*(this: var StepToTopoDS_Root; maxpreci: Standard_Real) {.
    importcpp: "SetMaxTol", header: "StepToTopoDS_Root.hxx".}