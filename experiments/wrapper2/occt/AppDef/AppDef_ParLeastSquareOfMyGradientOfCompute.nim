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
  AppDefParLeastSquareOfMyGradientOfCompute* {.
      importcpp: "AppDef_ParLeastSquareOfMyGradientOfCompute",
      header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx", bycopy.} = object ## !
                                                                             ## given a
                                                                             ## MultiLine,
                                                                             ## this
                                                                             ## algorithm
                                                                             ## computes the
                                                                             ## least
                                                                             ## !
                                                                             ## square
                                                                             ## resolution
                                                                             ## using the
                                                                             ## Householder-QR
                                                                             ## method.
                                                                             ## ! If the
                                                                             ## first
                                                                             ## and/or the
                                                                             ## last
                                                                             ## point is a
                                                                             ## constraint
                                                                             ## !
                                                                             ## point, the
                                                                             ## value of the
                                                                             ## tangency or
                                                                             ## curvature is
                                                                             ## !
                                                                             ## computed in the
                                                                             ## resolution.
                                                                             ## !
                                                                             ## NbPol is the
                                                                             ## number of
                                                                             ## control
                                                                             ## points
                                                                             ## wanted
                                                                             ## ! for the
                                                                             ## approximating
                                                                             ## curves.
                                                                             ## ! The
                                                                             ## system to
                                                                             ## solve is the
                                                                             ## following:
                                                                             ## ! A X = B.
                                                                             ## !
                                                                             ## Where A is the
                                                                             ## Bernstein
                                                                             ## matrix
                                                                             ## computed
                                                                             ## with the
                                                                             ## !
                                                                             ## parameters, B the
                                                                             ## points
                                                                             ## coordinates and X the
                                                                             ## poles
                                                                             ## !
                                                                             ## solutions.
                                                                             ## ! The
                                                                             ## matrix A is the
                                                                             ## same for
                                                                             ## each
                                                                             ## coordinate x, y and z
                                                                             ## ! and is
                                                                             ## also the
                                                                             ## same for
                                                                             ## each
                                                                             ## MultiLine
                                                                             ## point
                                                                             ## because
                                                                             ## !
                                                                             ## they are
                                                                             ## approximated in
                                                                             ## parallel(so
                                                                             ## with the
                                                                             ## same
                                                                             ## !
                                                                             ## parameter,
                                                                             ## only the
                                                                             ## vector B
                                                                             ## changes).
                                                                             ## ! is
                                                                             ## used by the
                                                                             ## constuctors
                                                                             ## above.


proc constructAppDefParLeastSquareOfMyGradientOfCompute*(ssp: AppDefMultiLine;
    firstPoint: cint; lastPoint: cint; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; parameters: MathVector; nbPol: cint): AppDefParLeastSquareOfMyGradientOfCompute {.
    constructor, importcpp: "AppDef_ParLeastSquareOfMyGradientOfCompute(@)",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc constructAppDefParLeastSquareOfMyGradientOfCompute*(ssp: AppDefMultiLine;
    firstPoint: cint; lastPoint: cint; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; nbPol: cint): AppDefParLeastSquareOfMyGradientOfCompute {.
    constructor, importcpp: "AppDef_ParLeastSquareOfMyGradientOfCompute(@)",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc constructAppDefParLeastSquareOfMyGradientOfCompute*(ssp: AppDefMultiLine;
    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger; firstPoint: cint;
    lastPoint: cint; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; parameters: MathVector; nbPol: cint): AppDefParLeastSquareOfMyGradientOfCompute {.
    constructor, importcpp: "AppDef_ParLeastSquareOfMyGradientOfCompute(@)",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc constructAppDefParLeastSquareOfMyGradientOfCompute*(ssp: AppDefMultiLine;
    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger; firstPoint: cint;
    lastPoint: cint; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; nbPol: cint): AppDefParLeastSquareOfMyGradientOfCompute {.
    constructor, importcpp: "AppDef_ParLeastSquareOfMyGradientOfCompute(@)",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc perform*(this: var AppDefParLeastSquareOfMyGradientOfCompute;
             parameters: MathVector) {.importcpp: "Perform", header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc perform*(this: var AppDefParLeastSquareOfMyGradientOfCompute;
             parameters: MathVector; l1: cfloat; l2: cfloat) {.importcpp: "Perform",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc perform*(this: var AppDefParLeastSquareOfMyGradientOfCompute;
             parameters: MathVector; v1t: MathVector; v2t: MathVector; l1: cfloat;
             l2: cfloat) {.importcpp: "Perform", header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc perform*(this: var AppDefParLeastSquareOfMyGradientOfCompute;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             v1c: MathVector; v2c: MathVector; l1: cfloat; l2: cfloat) {.
    importcpp: "Perform", header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc isDone*(this: AppDefParLeastSquareOfMyGradientOfCompute): bool {.noSideEffect,
    importcpp: "IsDone", header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc bezierValue*(this: var AppDefParLeastSquareOfMyGradientOfCompute): AppParCurvesMultiCurve {.
    importcpp: "BezierValue",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc bSplineValue*(this: var AppDefParLeastSquareOfMyGradientOfCompute): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc functionMatrix*(this: AppDefParLeastSquareOfMyGradientOfCompute): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc derivativeFunctionMatrix*(this: AppDefParLeastSquareOfMyGradientOfCompute): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc errorGradient*(this: var AppDefParLeastSquareOfMyGradientOfCompute;
                   grad: var MathVector; f: var cfloat; maxE3d: var cfloat;
                   maxE2d: var cfloat) {.importcpp: "ErrorGradient", header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc distance*(this: var AppDefParLeastSquareOfMyGradientOfCompute): MathMatrix {.
    importcpp: "Distance",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc error*(this: var AppDefParLeastSquareOfMyGradientOfCompute; f: var cfloat;
           maxE3d: var cfloat; maxE2d: var cfloat) {.importcpp: "Error",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc firstLambda*(this: AppDefParLeastSquareOfMyGradientOfCompute): cfloat {.
    noSideEffect, importcpp: "FirstLambda",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc lastLambda*(this: AppDefParLeastSquareOfMyGradientOfCompute): cfloat {.
    noSideEffect, importcpp: "LastLambda",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc points*(this: AppDefParLeastSquareOfMyGradientOfCompute): MathMatrix {.
    noSideEffect, importcpp: "Points",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc poles*(this: AppDefParLeastSquareOfMyGradientOfCompute): MathMatrix {.
    noSideEffect, importcpp: "Poles",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}
proc kIndex*(this: AppDefParLeastSquareOfMyGradientOfCompute): MathIntegerVector {.
    noSideEffect, importcpp: "KIndex",
    header: "AppDef_ParLeastSquareOfMyGradientOfCompute.hxx".}

























