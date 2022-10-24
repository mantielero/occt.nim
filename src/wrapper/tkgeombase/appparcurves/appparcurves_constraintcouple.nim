import appparcurves_types

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

## ! associates an index and a constraint for an object.
## ! This couple is used by AppDef_TheVariational when performing approximations.



proc newAppParCurvesConstraintCouple*(): AppParCurvesConstraintCouple {.cdecl,
    constructor, importcpp: "AppParCurves_ConstraintCouple(@)", header: "AppParCurves_ConstraintCouple.hxx".}
proc newAppParCurvesConstraintCouple*(theIndex: cint; cons: AppParCurvesConstraint): AppParCurvesConstraintCouple {.
    cdecl, constructor, importcpp: "AppParCurves_ConstraintCouple(@)",
    header: "AppParCurves_ConstraintCouple.hxx".}
proc index*(this: AppParCurvesConstraintCouple): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "AppParCurves_ConstraintCouple.hxx".}
proc constraint*(this: AppParCurvesConstraintCouple): AppParCurvesConstraint {.
    noSideEffect, cdecl, importcpp: "Constraint", header: "AppParCurves_ConstraintCouple.hxx".}
proc setIndex*(this: var AppParCurvesConstraintCouple; theIndex: cint) {.cdecl,
    importcpp: "SetIndex", header: "AppParCurves_ConstraintCouple.hxx".}
proc setConstraint*(this: var AppParCurvesConstraintCouple;
                   cons: AppParCurvesConstraint) {.cdecl,
    importcpp: "SetConstraint", header: "AppParCurves_ConstraintCouple.hxx".}
