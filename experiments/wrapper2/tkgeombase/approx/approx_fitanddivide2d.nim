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
  ApproxFitAndDivide2d* {.importcpp: "Approx_FitAndDivide2d",
                         header: "Approx_FitAndDivide2d.hxx", bycopy.} = object ## ! The
                                                                           ## MultiLine
                                                                           ## <Line> will be
                                                                           ## approximated until
                                                                           ## tolerances
                                                                           ## ! will be
                                                                           ## reached.
                                                                           ## ! The
                                                                           ## approximation will be done from
                                                                           ## degreemin to
                                                                           ## degreemax
                                                                           ## ! with a
                                                                           ## cutting if the
                                                                           ## corresponding
                                                                           ## boolean is True.
                                                                           ## ! is
                                                                           ## internally used by the
                                                                           ## algorithms.


proc newApproxFitAndDivide2d*(line: AppContFunction; degreemin: cint = 3;
                             degreemax: cint = 8; tolerance3d: cfloat = 1.0e-5;
                             tolerance2d: cfloat = 1.0e-5; cutting: bool = false; firstC: AppParCurvesConstraint = appParCurvesTangencyPoint;
    lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): ApproxFitAndDivide2d {.
    cdecl, constructor, importcpp: "Approx_FitAndDivide2d(@)", dynlib: tkgeombase.}
proc newApproxFitAndDivide2d*(degreemin: cint = 3; degreemax: cint = 8;
                             tolerance3d: cfloat = 1.0e-05;
                             tolerance2d: cfloat = 1.0e-05; cutting: bool = false;
    firstC: AppParCurvesConstraint = appParCurvesTangencyPoint; lastC: AppParCurvesConstraint = appParCurvesTangencyPoint): ApproxFitAndDivide2d {.
    cdecl, constructor, importcpp: "Approx_FitAndDivide2d(@)", dynlib: tkgeombase.}
proc perform*(this: var ApproxFitAndDivide2d; line: AppContFunction) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc setDegrees*(this: var ApproxFitAndDivide2d; degreemin: cint; degreemax: cint) {.
    cdecl, importcpp: "SetDegrees", dynlib: tkgeombase.}
proc setTolerances*(this: var ApproxFitAndDivide2d; tolerance3d: cfloat;
                   tolerance2d: cfloat) {.cdecl, importcpp: "SetTolerances",
                                        dynlib: tkgeombase.}
proc setConstraints*(this: var ApproxFitAndDivide2d; firstC: AppParCurvesConstraint;
                    lastC: AppParCurvesConstraint) {.cdecl,
    importcpp: "SetConstraints", dynlib: tkgeombase.}
proc setMaxSegments*(this: var ApproxFitAndDivide2d; theMaxSegments: cint) {.cdecl,
    importcpp: "SetMaxSegments", dynlib: tkgeombase.}
proc setInvOrder*(this: var ApproxFitAndDivide2d; theInvOrder: bool) {.cdecl,
    importcpp: "SetInvOrder", dynlib: tkgeombase.}
proc setHangChecking*(this: var ApproxFitAndDivide2d; theHangChecking: bool) {.cdecl,
    importcpp: "SetHangChecking", dynlib: tkgeombase.}
proc isAllApproximated*(this: ApproxFitAndDivide2d): bool {.noSideEffect, cdecl,
    importcpp: "IsAllApproximated", dynlib: tkgeombase.}
proc isToleranceReached*(this: ApproxFitAndDivide2d): bool {.noSideEffect, cdecl,
    importcpp: "IsToleranceReached", dynlib: tkgeombase.}
proc error*(this: ApproxFitAndDivide2d; index: cint; tol3d: var cfloat;
           tol2d: var cfloat) {.noSideEffect, cdecl, importcpp: "Error",
                             dynlib: tkgeombase.}
proc nbMultiCurves*(this: ApproxFitAndDivide2d): cint {.noSideEffect, cdecl,
    importcpp: "NbMultiCurves", dynlib: tkgeombase.}
proc value*(this: ApproxFitAndDivide2d; index: cint = 1): AppParCurvesMultiCurve {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkgeombase.}
proc parameters*(this: ApproxFitAndDivide2d; index: cint; firstp: var cfloat;
                lastp: var cfloat) {.noSideEffect, cdecl, importcpp: "Parameters",
                                  dynlib: tkgeombase.}