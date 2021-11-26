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
  AppDefParLeastSquareOfMyGradientbisOfBSplineCompute* {.
      importcpp: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute",
      header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## given
                                                                                       ## a
                                                                                       ## MultiLine,
                                                                                       ## this
                                                                                       ## algorithm
                                                                                       ## computes
                                                                                       ## the
                                                                                       ## least
                                                                                       ##
                                                                                       ## !
                                                                                       ## square
                                                                                       ## resolution
                                                                                       ## using
                                                                                       ## the
                                                                                       ## Householder-QR
                                                                                       ## method.
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## the
                                                                                       ## first
                                                                                       ## and/or
                                                                                       ## the
                                                                                       ## last
                                                                                       ## point
                                                                                       ## is
                                                                                       ## a
                                                                                       ## constraint
                                                                                       ##
                                                                                       ## !
                                                                                       ## point,
                                                                                       ## the
                                                                                       ## value
                                                                                       ## of
                                                                                       ## the
                                                                                       ## tangency
                                                                                       ## or
                                                                                       ## curvature
                                                                                       ## is
                                                                                       ##
                                                                                       ## !
                                                                                       ## computed
                                                                                       ## in
                                                                                       ## the
                                                                                       ## resolution.
                                                                                       ##
                                                                                       ## !
                                                                                       ## NbPol
                                                                                       ## is
                                                                                       ## the
                                                                                       ## number
                                                                                       ## of
                                                                                       ## control
                                                                                       ## points
                                                                                       ## wanted
                                                                                       ##
                                                                                       ## !
                                                                                       ## for
                                                                                       ## the
                                                                                       ## approximating
                                                                                       ## curves.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## system
                                                                                       ## to
                                                                                       ## solve
                                                                                       ## is
                                                                                       ## the
                                                                                       ## following:
                                                                                       ##
                                                                                       ## !
                                                                                       ## A
                                                                                       ## X
                                                                                       ## =
                                                                                       ## B.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Where
                                                                                       ## A
                                                                                       ## is
                                                                                       ## the
                                                                                       ## Bernstein
                                                                                       ## matrix
                                                                                       ## computed
                                                                                       ## with
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## parameters,
                                                                                       ## B
                                                                                       ## the
                                                                                       ## points
                                                                                       ## coordinates
                                                                                       ## and
                                                                                       ## X
                                                                                       ## the
                                                                                       ## poles
                                                                                       ##
                                                                                       ## !
                                                                                       ## solutions.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## matrix
                                                                                       ## A
                                                                                       ## is
                                                                                       ## the
                                                                                       ## same
                                                                                       ## for
                                                                                       ## each
                                                                                       ## coordinate
                                                                                       ## x,
                                                                                       ## y
                                                                                       ## and
                                                                                       ## z
                                                                                       ##
                                                                                       ## !
                                                                                       ## and
                                                                                       ## is
                                                                                       ## also
                                                                                       ## the
                                                                                       ## same
                                                                                       ## for
                                                                                       ## each
                                                                                       ## MultiLine
                                                                                       ## point
                                                                                       ## because
                                                                                       ##
                                                                                       ## !
                                                                                       ## they
                                                                                       ## are
                                                                                       ## approximated
                                                                                       ## in
                                                                                       ## parallel(so
                                                                                       ## with
                                                                                       ## the
                                                                                       ## same
                                                                                       ##
                                                                                       ## !
                                                                                       ## parameter,
                                                                                       ## only
                                                                                       ## the
                                                                                       ## vector
                                                                                       ## B
                                                                                       ## changes).
                                                                                       ##
                                                                                       ## !
                                                                                       ## is
                                                                                       ## used
                                                                                       ## by
                                                                                       ## the
                                                                                       ## constuctors
                                                                                       ## above.


proc constructAppDefParLeastSquareOfMyGradientbisOfBSplineCompute*(
    ssp: AppDefMultiLine; firstPoint: cint; lastPoint: cint;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: cint): AppDefParLeastSquareOfMyGradientbisOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute(@)",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc constructAppDefParLeastSquareOfMyGradientbisOfBSplineCompute*(
    ssp: AppDefMultiLine; firstPoint: cint; lastPoint: cint;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint; nbPol: cint): AppDefParLeastSquareOfMyGradientbisOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute(@)",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc constructAppDefParLeastSquareOfMyGradientbisOfBSplineCompute*(
    ssp: AppDefMultiLine; knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
    firstPoint: cint; lastPoint: cint; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; parameters: MathVector; nbPol: cint): AppDefParLeastSquareOfMyGradientbisOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute(@)",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc constructAppDefParLeastSquareOfMyGradientbisOfBSplineCompute*(
    ssp: AppDefMultiLine; knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
    firstPoint: cint; lastPoint: cint; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; nbPol: cint): AppDefParLeastSquareOfMyGradientbisOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute(@)",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc perform*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute;
             parameters: MathVector) {.importcpp: "Perform", header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc perform*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute;
             parameters: MathVector; l1: cfloat; l2: cfloat) {.importcpp: "Perform",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc perform*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute;
             parameters: MathVector; v1t: MathVector; v2t: MathVector; l1: cfloat;
             l2: cfloat) {.importcpp: "Perform", header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc perform*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             v1c: MathVector; v2c: MathVector; l1: cfloat; l2: cfloat) {.
    importcpp: "Perform",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc isDone*(this: AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): bool {.
    noSideEffect, importcpp: "IsDone",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc bezierValue*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): AppParCurvesMultiCurve {.
    importcpp: "BezierValue",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc bSplineValue*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc functionMatrix*(this: AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc derivativeFunctionMatrix*(this: AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc errorGradient*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute;
                   grad: var MathVector; f: var cfloat; maxE3d: var cfloat;
                   maxE2d: var cfloat) {.importcpp: "ErrorGradient", header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc distance*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): MathMatrix {.
    importcpp: "Distance",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc error*(this: var AppDefParLeastSquareOfMyGradientbisOfBSplineCompute;
           f: var cfloat; maxE3d: var cfloat; maxE2d: var cfloat) {.importcpp: "Error",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc firstLambda*(this: AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): cfloat {.
    noSideEffect, importcpp: "FirstLambda",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc lastLambda*(this: AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): cfloat {.
    noSideEffect, importcpp: "LastLambda",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc points*(this: AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "Points",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc poles*(this: AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "Poles",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}
proc kIndex*(this: AppDefParLeastSquareOfMyGradientbisOfBSplineCompute): MathIntegerVector {.
    noSideEffect, importcpp: "KIndex",
    header: "AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx".}

























