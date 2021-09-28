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
  AppDefTheLeastSquares* {.importcpp: "AppDef_TheLeastSquares",
                          header: "AppDef_TheLeastSquares.hxx", bycopy.} = object ## !
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


proc constructAppDefTheLeastSquares*(ssp: AppDefMultiLine; firstPoint: cint;
                                    lastPoint: cint;
                                    firstCons: AppParCurvesConstraint;
                                    lastCons: AppParCurvesConstraint;
                                    parameters: MathVector; nbPol: cint): AppDefTheLeastSquares {.
    constructor, importcpp: "AppDef_TheLeastSquares(@)",
    header: "AppDef_TheLeastSquares.hxx".}
proc constructAppDefTheLeastSquares*(ssp: AppDefMultiLine; firstPoint: cint;
                                    lastPoint: cint;
                                    firstCons: AppParCurvesConstraint;
                                    lastCons: AppParCurvesConstraint; nbPol: cint): AppDefTheLeastSquares {.
    constructor, importcpp: "AppDef_TheLeastSquares(@)",
    header: "AppDef_TheLeastSquares.hxx".}
proc constructAppDefTheLeastSquares*(ssp: AppDefMultiLine;
                                    knots: TColStdArray1OfReal;
                                    mults: TColStdArray1OfInteger;
                                    firstPoint: cint; lastPoint: cint;
                                    firstCons: AppParCurvesConstraint;
                                    lastCons: AppParCurvesConstraint;
                                    parameters: MathVector; nbPol: cint): AppDefTheLeastSquares {.
    constructor, importcpp: "AppDef_TheLeastSquares(@)",
    header: "AppDef_TheLeastSquares.hxx".}
proc constructAppDefTheLeastSquares*(ssp: AppDefMultiLine;
                                    knots: TColStdArray1OfReal;
                                    mults: TColStdArray1OfInteger;
                                    firstPoint: cint; lastPoint: cint;
                                    firstCons: AppParCurvesConstraint;
                                    lastCons: AppParCurvesConstraint; nbPol: cint): AppDefTheLeastSquares {.
    constructor, importcpp: "AppDef_TheLeastSquares(@)",
    header: "AppDef_TheLeastSquares.hxx".}
proc perform*(this: var AppDefTheLeastSquares; parameters: MathVector) {.
    importcpp: "Perform", header: "AppDef_TheLeastSquares.hxx".}
proc perform*(this: var AppDefTheLeastSquares; parameters: MathVector; l1: cfloat;
             l2: cfloat) {.importcpp: "Perform",
                         header: "AppDef_TheLeastSquares.hxx".}
proc perform*(this: var AppDefTheLeastSquares; parameters: MathVector;
             v1t: MathVector; v2t: MathVector; l1: cfloat; l2: cfloat) {.
    importcpp: "Perform", header: "AppDef_TheLeastSquares.hxx".}
proc perform*(this: var AppDefTheLeastSquares; parameters: MathVector;
             v1t: MathVector; v2t: MathVector; v1c: MathVector; v2c: MathVector;
             l1: cfloat; l2: cfloat) {.importcpp: "Perform",
                                   header: "AppDef_TheLeastSquares.hxx".}
proc isDone*(this: AppDefTheLeastSquares): bool {.noSideEffect, importcpp: "IsDone",
    header: "AppDef_TheLeastSquares.hxx".}
proc bezierValue*(this: var AppDefTheLeastSquares): AppParCurvesMultiCurve {.
    importcpp: "BezierValue", header: "AppDef_TheLeastSquares.hxx".}
proc bSplineValue*(this: var AppDefTheLeastSquares): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue", header: "AppDef_TheLeastSquares.hxx".}
proc functionMatrix*(this: AppDefTheLeastSquares): MathMatrix {.noSideEffect,
    importcpp: "FunctionMatrix", header: "AppDef_TheLeastSquares.hxx".}
proc derivativeFunctionMatrix*(this: AppDefTheLeastSquares): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix",
    header: "AppDef_TheLeastSquares.hxx".}
proc errorGradient*(this: var AppDefTheLeastSquares; grad: var MathVector;
                   f: var cfloat; maxE3d: var cfloat; maxE2d: var cfloat) {.
    importcpp: "ErrorGradient", header: "AppDef_TheLeastSquares.hxx".}
proc distance*(this: var AppDefTheLeastSquares): MathMatrix {.importcpp: "Distance",
    header: "AppDef_TheLeastSquares.hxx".}
proc error*(this: var AppDefTheLeastSquares; f: var cfloat; maxE3d: var cfloat;
           maxE2d: var cfloat) {.importcpp: "Error",
                              header: "AppDef_TheLeastSquares.hxx".}
proc firstLambda*(this: AppDefTheLeastSquares): cfloat {.noSideEffect,
    importcpp: "FirstLambda", header: "AppDef_TheLeastSquares.hxx".}
proc lastLambda*(this: AppDefTheLeastSquares): cfloat {.noSideEffect,
    importcpp: "LastLambda", header: "AppDef_TheLeastSquares.hxx".}
proc points*(this: AppDefTheLeastSquares): MathMatrix {.noSideEffect,
    importcpp: "Points", header: "AppDef_TheLeastSquares.hxx".}
proc poles*(this: AppDefTheLeastSquares): MathMatrix {.noSideEffect,
    importcpp: "Poles", header: "AppDef_TheLeastSquares.hxx".}
proc kIndex*(this: AppDefTheLeastSquares): MathIntegerVector {.noSideEffect,
    importcpp: "KIndex", header: "AppDef_TheLeastSquares.hxx".}

























