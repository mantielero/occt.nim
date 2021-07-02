##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox* {.importcpp: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx",
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


proc constructGeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; firstPoint: StandardInteger;
    lastPoint: StandardInteger; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; parameters: MathVector; nbPol: StandardInteger): GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox(@)", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; firstPoint: StandardInteger;
    lastPoint: StandardInteger; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; nbPol: StandardInteger): GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox(@)", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; firstPoint: StandardInteger;
    lastPoint: StandardInteger; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; parameters: MathVector; nbPol: StandardInteger): GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox(@)", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; firstPoint: StandardInteger;
    lastPoint: StandardInteger; firstCons: AppParCurvesConstraint;
    lastCons: AppParCurvesConstraint; nbPol: StandardInteger): GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox(@)", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc perform*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox;
             parameters: MathVector) {.importcpp: "Perform", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc perform*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox;
             parameters: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc perform*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             l1: StandardReal; l2: StandardReal) {.importcpp: "Perform", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc perform*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             v1c: MathVector; v2c: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc isDone*(this: GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc bezierValue*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): AppParCurvesMultiCurve {.
    importcpp: "BezierValue", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc bSplineValue*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc functionMatrix*(this: GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc derivativeFunctionMatrix*(this: GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc errorGradient*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox;
                   grad: var MathVector; f: var StandardReal;
                   maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "ErrorGradient", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc distance*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): MathMatrix {.
    importcpp: "Distance", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc error*(this: var GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox;
           f: var StandardReal; maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "Error", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc firstLambda*(this: GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "FirstLambda", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc lastLambda*(this: GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "LastLambda", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc points*(this: GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): MathMatrix {.
    noSideEffect, importcpp: "Points", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc poles*(this: GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): MathMatrix {.
    noSideEffect, importcpp: "Poles", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc kIndex*(this: GeomIntParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox): MathIntegerVector {.
    noSideEffect, importcpp: "KIndex", header: "GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}

