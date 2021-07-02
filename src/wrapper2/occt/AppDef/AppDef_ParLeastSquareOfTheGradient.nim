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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  AppDefParLeastSquareOfTheGradient* {.importcpp: "AppDef_ParLeastSquareOfTheGradient", header: "AppDef_ParLeastSquareOfTheGradient.hxx",
                                      bycopy.} = object ## ! given a MultiLine, this algorithm computes the least
                                                     ## ! square resolution using the Householder-QR method.
                                                     ## ! If the first and/or the last point is a constraint
                                                     ## ! point, the value of the tangency or curvature is
                                                     ## ! computed in the resolution.
                                                     ## ! NbPol is the number of control points wanted
                                                     ## ! for the approximating curves.
                                                     ## ! The system to solve is the following:
                                                     ## ! A X = B.
                                                     ## ! Where A is the Bernstein matrix computed with the
                                                     ## ! parameters, B the points coordinates and X the poles
                                                     ## ! solutions.
                                                     ## ! The matrix A is the same for each coordinate x, y and z
                                                     ## ! and is also the same for each MultiLine point because
                                                     ## ! they are approximated in parallel(so with the same
                                                     ## ! parameter, only the vector B changes).
                                                     ## ! is used by the constuctors above.


proc constructAppDefParLeastSquareOfTheGradient*(ssp: AppDefMultiLine;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: StandardInteger): AppDefParLeastSquareOfTheGradient {.
    constructor, importcpp: "AppDef_ParLeastSquareOfTheGradient(@)",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc constructAppDefParLeastSquareOfTheGradient*(ssp: AppDefMultiLine;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    nbPol: StandardInteger): AppDefParLeastSquareOfTheGradient {.constructor,
    importcpp: "AppDef_ParLeastSquareOfTheGradient(@)",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc constructAppDefParLeastSquareOfTheGradient*(ssp: AppDefMultiLine;
    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: StandardInteger): AppDefParLeastSquareOfTheGradient {.
    constructor, importcpp: "AppDef_ParLeastSquareOfTheGradient(@)",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc constructAppDefParLeastSquareOfTheGradient*(ssp: AppDefMultiLine;
    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    nbPol: StandardInteger): AppDefParLeastSquareOfTheGradient {.constructor,
    importcpp: "AppDef_ParLeastSquareOfTheGradient(@)",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc perform*(this: var AppDefParLeastSquareOfTheGradient; parameters: MathVector) {.
    importcpp: "Perform", header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc perform*(this: var AppDefParLeastSquareOfTheGradient; parameters: MathVector;
             l1: StandardReal; l2: StandardReal) {.importcpp: "Perform",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc perform*(this: var AppDefParLeastSquareOfTheGradient; parameters: MathVector;
             v1t: MathVector; v2t: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform", header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc perform*(this: var AppDefParLeastSquareOfTheGradient; parameters: MathVector;
             v1t: MathVector; v2t: MathVector; v1c: MathVector; v2c: MathVector;
             l1: StandardReal; l2: StandardReal) {.importcpp: "Perform",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc isDone*(this: AppDefParLeastSquareOfTheGradient): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc bezierValue*(this: var AppDefParLeastSquareOfTheGradient): AppParCurvesMultiCurve {.
    importcpp: "BezierValue", header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc bSplineValue*(this: var AppDefParLeastSquareOfTheGradient): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue", header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc functionMatrix*(this: AppDefParLeastSquareOfTheGradient): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc derivativeFunctionMatrix*(this: AppDefParLeastSquareOfTheGradient): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc errorGradient*(this: var AppDefParLeastSquareOfTheGradient;
                   grad: var MathVector; f: var StandardReal;
                   maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "ErrorGradient", header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc distance*(this: var AppDefParLeastSquareOfTheGradient): MathMatrix {.
    importcpp: "Distance", header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc error*(this: var AppDefParLeastSquareOfTheGradient; f: var StandardReal;
           maxE3d: var StandardReal; maxE2d: var StandardReal) {.importcpp: "Error",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc firstLambda*(this: AppDefParLeastSquareOfTheGradient): StandardReal {.
    noSideEffect, importcpp: "FirstLambda",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc lastLambda*(this: AppDefParLeastSquareOfTheGradient): StandardReal {.
    noSideEffect, importcpp: "LastLambda",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc points*(this: AppDefParLeastSquareOfTheGradient): MathMatrix {.noSideEffect,
    importcpp: "Points", header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc poles*(this: AppDefParLeastSquareOfTheGradient): MathMatrix {.noSideEffect,
    importcpp: "Poles", header: "AppDef_ParLeastSquareOfTheGradient.hxx".}
proc kIndex*(this: AppDefParLeastSquareOfTheGradient): MathIntegerVector {.
    noSideEffect, importcpp: "KIndex",
    header: "AppDef_ParLeastSquareOfTheGradient.hxx".}

