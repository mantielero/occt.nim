##  Created on: 1993-02-24
##  Created by: Laurent PAINNOT
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  AppParCurves_Constraint

## ! associates an index and a constraint for an object.
## ! This couple is used by AppDef_TheVariational when performing approximations.

type
  AppParCurves_ConstraintCouple* {.importcpp: "AppParCurves_ConstraintCouple",
                                  header: "AppParCurves_ConstraintCouple.hxx",
                                  bycopy.} = object ## ! returns an indefinite ConstraintCouple.


proc constructAppParCurves_ConstraintCouple*(): AppParCurves_ConstraintCouple {.
    constructor, importcpp: "AppParCurves_ConstraintCouple(@)",
    header: "AppParCurves_ConstraintCouple.hxx".}
proc constructAppParCurves_ConstraintCouple*(TheIndex: Standard_Integer;
    Cons: AppParCurves_Constraint): AppParCurves_ConstraintCouple {.constructor,
    importcpp: "AppParCurves_ConstraintCouple(@)",
    header: "AppParCurves_ConstraintCouple.hxx".}
proc Index*(this: AppParCurves_ConstraintCouple): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "AppParCurves_ConstraintCouple.hxx".}
proc Constraint*(this: AppParCurves_ConstraintCouple): AppParCurves_Constraint {.
    noSideEffect, importcpp: "Constraint",
    header: "AppParCurves_ConstraintCouple.hxx".}
proc SetIndex*(this: var AppParCurves_ConstraintCouple; TheIndex: Standard_Integer) {.
    importcpp: "SetIndex", header: "AppParCurves_ConstraintCouple.hxx".}
proc SetConstraint*(this: var AppParCurves_ConstraintCouple;
                   Cons: AppParCurves_Constraint) {.importcpp: "SetConstraint",
    header: "AppParCurves_ConstraintCouple.hxx".}