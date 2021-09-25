##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
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
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx",
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


proc constructBRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: int): BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox(@)", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint; nbPol: int): BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox(@)", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: int): BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox(@)", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint; nbPol: int): BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox(@)", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox;
             parameters: MathVector) {.importcpp: "Perform", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox;
             parameters: MathVector; l1: float; l2: float) {.importcpp: "Perform", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox;
             parameters: MathVector; v1t: MathVector; v2t: MathVector; l1: float;
             l2: float) {.importcpp: "Perform", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             v1c: MathVector; v2c: MathVector; l1: float; l2: float) {.
    importcpp: "Perform", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc isDone*(this: BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): bool {.
    noSideEffect, importcpp: "IsDone", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc bezierValue*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): AppParCurvesMultiCurve {.
    importcpp: "BezierValue", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc bSplineValue*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc functionMatrix*(this: BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc derivativeFunctionMatrix*(this: BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc errorGradient*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox;
                   grad: var MathVector; f: var float; maxE3d: var float;
                   maxE2d: var float) {.importcpp: "ErrorGradient", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc distance*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): MathMatrix {.
    importcpp: "Distance", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc error*(this: var BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox;
           f: var float; maxE3d: var float; maxE2d: var float) {.importcpp: "Error", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc firstLambda*(this: BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): float {.
    noSideEffect, importcpp: "FirstLambda", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc lastLambda*(this: BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): float {.
    noSideEffect, importcpp: "LastLambda", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc points*(this: BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "Points", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc poles*(this: BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "Poles", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc kIndex*(this: BRepApproxParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox): MathIntegerVector {.
    noSideEffect, importcpp: "KIndex", header: "BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
