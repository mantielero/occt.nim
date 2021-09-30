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
  BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox* {.importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx",
      bycopy.} = object         ## ! is used by the constuctors above.


proc `new`*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
           theSize: csize_t): pointer {.importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox::operator new", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete`*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
              theAddress: pointer) {.importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox::operator delete", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
             theSize: csize_t): pointer {.importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox::operator new[]", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox::operator delete[]", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `new`*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox::operator new", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete`*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
              a2: pointer; a3: pointer) {.importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox::operator delete", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: int): BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint; nbPol: int): BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: int): BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint; nbPol: int): BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc perform*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
             parameters: MathVector) {.importcpp: "Perform", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc perform*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
             parameters: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc perform*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             l1: StandardReal; l2: StandardReal) {.importcpp: "Perform", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc perform*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             v1c: MathVector; v2c: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc isDone*(this: BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc bezierValue*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): AppParCurvesMultiCurve {.
    importcpp: "BezierValue", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc bSplineValue*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc functionMatrix*(this: BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc derivativeFunctionMatrix*(this: BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc errorGradient*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
                   grad: var MathVector; f: var StandardReal;
                   maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "ErrorGradient", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc distance*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): MathMatrix {.
    importcpp: "Distance", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc error*(this: var BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox;
           f: var StandardReal; maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "Error", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc firstLambda*(this: BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): StandardReal {.
    noSideEffect, importcpp: "FirstLambda", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc lastLambda*(this: BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): StandardReal {.
    noSideEffect, importcpp: "LastLambda", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc points*(this: BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): MathMatrix {.
    noSideEffect, importcpp: "Points", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc poles*(this: BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): MathMatrix {.
    noSideEffect, importcpp: "Poles", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc kIndex*(this: BRepApproxParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox): MathIntegerVector {.
    noSideEffect, importcpp: "KIndex", header: "BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}