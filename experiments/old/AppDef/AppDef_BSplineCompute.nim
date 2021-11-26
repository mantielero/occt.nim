##  Created on: 1991-12-02
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_MyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_MyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_ResConstraintOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_ParFunctionOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDefBSplineCompute* {.importcpp: "AppDef_BSplineCompute",
                         header: "AppDef_BSplineCompute.hxx", bycopy.} = object ## ! The
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
                                                                           ## ! If
                                                                           ## <Squares> is True, the
                                                                           ## computation will be done with
                                                                           ## ! no
                                                                           ## iteration at all.
                                                                           ## !
                                                                           ## ! The
                                                                           ## multiplicities of the
                                                                           ## internal knots is set by
                                                                           ## !
                                                                           ## default.
                                                                           ## ! is
                                                                           ## internally used in the
                                                                           ## algorithm.


proc constructAppDefBSplineCompute*(line: AppDefMultiLine; degreemin: cint = 4;
                                   degreemax: cint = 8;
                                   tolerance3d: cfloat = 1.0e-3;
                                   tolerance2d: cfloat = 1.0e-6;
                                   nbIterations: cint = 5; cutting: bool = true;
    parametrization: ApproxParametrizationType = approxChordLength;
                                   squares: bool = false): AppDefBSplineCompute {.
    constructor, importcpp: "AppDef_BSplineCompute(@)",
    header: "AppDef_BSplineCompute.hxx".}
proc constructAppDefBSplineCompute*(line: AppDefMultiLine; parameters: MathVector;
                                   degreemin: cint = 4; degreemax: cint = 8;
                                   tolerance3d: cfloat = 1.0e-03;
                                   tolerance2d: cfloat = 1.0e-06;
                                   nbIterations: cint = 5; cutting: bool = true;
                                   squares: bool = false): AppDefBSplineCompute {.
    constructor, importcpp: "AppDef_BSplineCompute(@)",
    header: "AppDef_BSplineCompute.hxx".}
proc constructAppDefBSplineCompute*(parameters: MathVector; degreemin: cint = 4;
                                   degreemax: cint = 8;
                                   tolerance3d: cfloat = 1.0e-03;
                                   tolerance2d: cfloat = 1.0e-06;
                                   nbIterations: cint = 5; cutting: bool = true;
                                   squares: bool = false): AppDefBSplineCompute {.
    constructor, importcpp: "AppDef_BSplineCompute(@)",
    header: "AppDef_BSplineCompute.hxx".}
proc constructAppDefBSplineCompute*(degreemin: cint = 4; degreemax: cint = 8;
                                   tolerance3d: cfloat = 1.0e-03;
                                   tolerance2d: cfloat = 1.0e-06;
                                   nbIterations: cint = 5; cutting: bool = true;
    parametrization: ApproxParametrizationType = approxChordLength;
                                   squares: bool = false): AppDefBSplineCompute {.
    constructor, importcpp: "AppDef_BSplineCompute(@)",
    header: "AppDef_BSplineCompute.hxx".}
proc interpol*(this: var AppDefBSplineCompute; line: AppDefMultiLine) {.
    importcpp: "Interpol", header: "AppDef_BSplineCompute.hxx".}
proc init*(this: var AppDefBSplineCompute; degreemin: cint = 4; degreemax: cint = 8;
          tolerance3d: cfloat = 1.0e-03; tolerance2d: cfloat = 1.0e-06;
          nbIterations: cint = 5; cutting: bool = true;
          parametrization: ApproxParametrizationType = approxChordLength;
          squares: bool = false) {.importcpp: "Init",
                               header: "AppDef_BSplineCompute.hxx".}
proc perform*(this: var AppDefBSplineCompute; line: AppDefMultiLine) {.
    importcpp: "Perform", header: "AppDef_BSplineCompute.hxx".}
proc setParameters*(this: var AppDefBSplineCompute; thePar: MathVector) {.
    importcpp: "SetParameters", header: "AppDef_BSplineCompute.hxx".}
proc setKnots*(this: var AppDefBSplineCompute; knots: TColStdArray1OfReal) {.
    importcpp: "SetKnots", header: "AppDef_BSplineCompute.hxx".}
proc setKnotsAndMultiplicities*(this: var AppDefBSplineCompute;
                               knots: TColStdArray1OfReal;
                               mults: TColStdArray1OfInteger) {.
    importcpp: "SetKnotsAndMultiplicities", header: "AppDef_BSplineCompute.hxx".}
proc setDegrees*(this: var AppDefBSplineCompute; degreemin: cint; degreemax: cint) {.
    importcpp: "SetDegrees", header: "AppDef_BSplineCompute.hxx".}
proc setTolerances*(this: var AppDefBSplineCompute; tolerance3d: cfloat;
                   tolerance2d: cfloat) {.importcpp: "SetTolerances",
                                        header: "AppDef_BSplineCompute.hxx".}
proc setContinuity*(this: var AppDefBSplineCompute; c: cint) {.
    importcpp: "SetContinuity", header: "AppDef_BSplineCompute.hxx".}
proc setConstraints*(this: var AppDefBSplineCompute; firstC: AppParCurvesConstraint;
                    lastC: AppParCurvesConstraint) {.importcpp: "SetConstraints",
    header: "AppDef_BSplineCompute.hxx".}
proc setPeriodic*(this: var AppDefBSplineCompute; thePeriodic: bool) {.
    importcpp: "SetPeriodic", header: "AppDef_BSplineCompute.hxx".}
proc isAllApproximated*(this: AppDefBSplineCompute): bool {.noSideEffect,
    importcpp: "IsAllApproximated", header: "AppDef_BSplineCompute.hxx".}
proc isToleranceReached*(this: AppDefBSplineCompute): bool {.noSideEffect,
    importcpp: "IsToleranceReached", header: "AppDef_BSplineCompute.hxx".}
proc error*(this: AppDefBSplineCompute; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, importcpp: "Error", header: "AppDef_BSplineCompute.hxx".}
proc value*(this: AppDefBSplineCompute): AppParCurvesMultiBSpCurve {.noSideEffect,
    importcpp: "Value", header: "AppDef_BSplineCompute.hxx".}
proc changeValue*(this: var AppDefBSplineCompute): var AppParCurvesMultiBSpCurve {.
    importcpp: "ChangeValue", header: "AppDef_BSplineCompute.hxx".}
proc parameters*(this: AppDefBSplineCompute): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Parameters", header: "AppDef_BSplineCompute.hxx".}

























