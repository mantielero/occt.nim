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

discard "forward decl of AppParCurves_MultiCurve"
type
  ApproxFitAndDivide* {.importcpp: "Approx_FitAndDivide",
                       header: "Approx_FitAndDivide.hxx", bycopy.} = object ## ! The MultiLine <Line> will be
                                                                       ## approximated until
                                                                       ## tolerances
                                                                       ## ! will be reached.
                                                                       ## ! The
                                                                       ## approximation will be done from degreemin to degreemax
                                                                       ## ! with a cutting if the
                                                                       ## corresponding boolean is True.
                                                                       ## ! is
                                                                       ## internally used by the
                                                                       ## algorithms.


proc constructApproxFitAndDivide*(line: AppContFunction;
                                 degreemin: StandardInteger = 3;
                                 degreemax: StandardInteger = 8;
                                 tolerance3d: StandardReal = 1.0e-5;
                                 tolerance2d: StandardReal = 1.0e-5;
                                 cutting: StandardBoolean = standardFalse; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): ApproxFitAndDivide {.
    constructor, importcpp: "Approx_FitAndDivide(@)",
    header: "Approx_FitAndDivide.hxx".}
proc constructApproxFitAndDivide*(degreemin: StandardInteger = 3;
                                 degreemax: StandardInteger = 8;
                                 tolerance3d: StandardReal = 1.0e-05;
                                 tolerance2d: StandardReal = 1.0e-05;
                                 cutting: StandardBoolean = standardFalse; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): ApproxFitAndDivide {.
    constructor, importcpp: "Approx_FitAndDivide(@)",
    header: "Approx_FitAndDivide.hxx".}
proc perform*(this: var ApproxFitAndDivide; line: AppContFunction) {.
    importcpp: "Perform", header: "Approx_FitAndDivide.hxx".}
proc setDegrees*(this: var ApproxFitAndDivide; degreemin: StandardInteger;
                degreemax: StandardInteger) {.importcpp: "SetDegrees",
    header: "Approx_FitAndDivide.hxx".}
proc setTolerances*(this: var ApproxFitAndDivide; tolerance3d: StandardReal;
                   tolerance2d: StandardReal) {.importcpp: "SetTolerances",
    header: "Approx_FitAndDivide.hxx".}
proc setConstraints*(this: var ApproxFitAndDivide; firstC: AppParCurvesConstraint;
                    lastC: AppParCurvesConstraint) {.importcpp: "SetConstraints",
    header: "Approx_FitAndDivide.hxx".}
proc setMaxSegments*(this: var ApproxFitAndDivide; theMaxSegments: StandardInteger) {.
    importcpp: "SetMaxSegments", header: "Approx_FitAndDivide.hxx".}
proc setInvOrder*(this: var ApproxFitAndDivide; theInvOrder: StandardBoolean) {.
    importcpp: "SetInvOrder", header: "Approx_FitAndDivide.hxx".}
proc setHangChecking*(this: var ApproxFitAndDivide; theHangChecking: StandardBoolean) {.
    importcpp: "SetHangChecking", header: "Approx_FitAndDivide.hxx".}
proc isAllApproximated*(this: ApproxFitAndDivide): StandardBoolean {.noSideEffect,
    importcpp: "IsAllApproximated", header: "Approx_FitAndDivide.hxx".}
proc isToleranceReached*(this: ApproxFitAndDivide): StandardBoolean {.noSideEffect,
    importcpp: "IsToleranceReached", header: "Approx_FitAndDivide.hxx".}
proc error*(this: ApproxFitAndDivide; index: StandardInteger;
           tol3d: var StandardReal; tol2d: var StandardReal) {.noSideEffect,
    importcpp: "Error", header: "Approx_FitAndDivide.hxx".}
proc nbMultiCurves*(this: ApproxFitAndDivide): StandardInteger {.noSideEffect,
    importcpp: "NbMultiCurves", header: "Approx_FitAndDivide.hxx".}
proc value*(this: ApproxFitAndDivide; index: StandardInteger = 1): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value", header: "Approx_FitAndDivide.hxx".}
proc parameters*(this: ApproxFitAndDivide; index: StandardInteger;
                firstp: var StandardReal; lastp: var StandardReal) {.noSideEffect,
    importcpp: "Parameters", header: "Approx_FitAndDivide.hxx".}

