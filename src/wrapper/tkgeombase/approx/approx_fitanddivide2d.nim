import ../tkgeombase/appcont/appcont_types
import ../tkgeombase/appparcurves/appparcurves_types
import approx_types



##  Created on: 1993-01-26
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



proc newApproxFitAndDivide2d*(line: AppContFunction; degreemin: cint = 3;
                             degreemax: cint = 8; tolerance3d: cfloat = 1.0e-5;
                             tolerance2d: cfloat = 1.0e-5; cutting: bool = false; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): ApproxFitAndDivide2d {.
    cdecl, constructor, importcpp: "Approx_FitAndDivide2d(@)", header: "Approx_FitAndDivide2d.hxx".}
proc newApproxFitAndDivide2d*(degreemin: cint = 3; degreemax: cint = 8;
                             tolerance3d: cfloat = 1.0e-05;
                             tolerance2d: cfloat = 1.0e-05; cutting: bool = false;
    firstC: AppParCurvesConstraint = appParCurvesTangencyPoint; lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): ApproxFitAndDivide2d {.
    cdecl, constructor, importcpp: "Approx_FitAndDivide2d(@)", header: "Approx_FitAndDivide2d.hxx".}
proc perform*(this: var ApproxFitAndDivide2d; line: AppContFunction) {.cdecl,
    importcpp: "Perform", header: "Approx_FitAndDivide2d.hxx".}
proc setDegrees*(this: var ApproxFitAndDivide2d; degreemin: cint; degreemax: cint) {.
    cdecl, importcpp: "SetDegrees", header: "Approx_FitAndDivide2d.hxx".}
proc setTolerances*(this: var ApproxFitAndDivide2d; tolerance3d: cfloat;
                   tolerance2d: cfloat) {.cdecl, importcpp: "SetTolerances",
                                        header: "Approx_FitAndDivide2d.hxx".}
proc setConstraints*(this: var ApproxFitAndDivide2d; firstC: AppParCurvesConstraint;
                    lastC: AppParCurvesConstraint) {.cdecl,
    importcpp: "SetConstraints", header: "Approx_FitAndDivide2d.hxx".}
proc setMaxSegments*(this: var ApproxFitAndDivide2d; theMaxSegments: cint) {.cdecl,
    importcpp: "SetMaxSegments", header: "Approx_FitAndDivide2d.hxx".}
proc setInvOrder*(this: var ApproxFitAndDivide2d; theInvOrder: bool) {.cdecl,
    importcpp: "SetInvOrder", header: "Approx_FitAndDivide2d.hxx".}
proc setHangChecking*(this: var ApproxFitAndDivide2d; theHangChecking: bool) {.cdecl,
    importcpp: "SetHangChecking", header: "Approx_FitAndDivide2d.hxx".}
proc isAllApproximated*(this: ApproxFitAndDivide2d): bool {.noSideEffect, cdecl,
    importcpp: "IsAllApproximated", header: "Approx_FitAndDivide2d.hxx".}
proc isToleranceReached*(this: ApproxFitAndDivide2d): bool {.noSideEffect, cdecl,
    importcpp: "IsToleranceReached", header: "Approx_FitAndDivide2d.hxx".}
proc error*(this: ApproxFitAndDivide2d; index: cint; tol3d: var cfloat;
           tol2d: var cfloat) {.noSideEffect, cdecl, importcpp: "Error",
                             header: "Approx_FitAndDivide2d.hxx".}
proc nbMultiCurves*(this: ApproxFitAndDivide2d): cint {.noSideEffect, cdecl,
    importcpp: "NbMultiCurves", header: "Approx_FitAndDivide2d.hxx".}
proc value*(this: ApproxFitAndDivide2d; index: cint = 1): AppParCurvesMultiCurve {.
    noSideEffect, cdecl, importcpp: "Value", header: "Approx_FitAndDivide2d.hxx".}
proc parameters*(this: ApproxFitAndDivide2d; index: cint; firstp: var cfloat;
                lastp: var cfloat) {.noSideEffect, cdecl, importcpp: "Parameters",
                                  header: "Approx_FitAndDivide2d.hxx".}

