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
  AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute* {.
      importcpp: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute",
      header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx",
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


proc constructAppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute*(
    ssp: AppDefMultiLine; firstPoint: StandardInteger; lastPoint: StandardInteger;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: StandardInteger): AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc constructAppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute*(
    ssp: AppDefMultiLine; firstPoint: StandardInteger; lastPoint: StandardInteger;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    nbPol: StandardInteger): AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc constructAppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute*(
    ssp: AppDefMultiLine; knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: StandardInteger): AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc constructAppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute*(
    ssp: AppDefMultiLine; knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    nbPol: StandardInteger): AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc perform*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute;
             parameters: MathVector) {.importcpp: "Perform", header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc perform*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute;
             parameters: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc perform*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             l1: StandardReal; l2: StandardReal) {.importcpp: "Perform",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc perform*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             v1c: MathVector; v2c: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc isDone*(this: AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc bezierValue*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): AppParCurvesMultiCurve {.
    importcpp: "BezierValue",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc bSplineValue*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc functionMatrix*(this: AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc derivativeFunctionMatrix*(this: AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc errorGradient*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute;
                   grad: var MathVector; f: var StandardReal;
                   maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "ErrorGradient",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc distance*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): MathMatrix {.
    importcpp: "Distance",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc error*(this: var AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute;
           f: var StandardReal; maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "Error",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc firstLambda*(this: AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "FirstLambda",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc lastLambda*(this: AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "LastLambda",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc points*(this: AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "Points",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc poles*(this: AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "Poles",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}
proc kIndex*(this: AppDefBSpParLeastSquareOfMyBSplGradientOfBSplineCompute): MathIntegerVector {.
    noSideEffect, importcpp: "KIndex",
    header: "AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx".}

