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
  BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx",
      bycopy.} = object         ## ! is used by the constuctors above.


proc `new`*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
           theSize: csize_t): pointer {.importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox::operator new", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
              theAddress: pointer) {.importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             theSize: csize_t): pointer {.importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox::operator new[]", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox::operator delete[]", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `new`*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox::operator new", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
              a2: pointer; a3: pointer) {.importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: int): BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint; nbPol: int): BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint;
    parameters: MathVector; nbPol: int): BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; firstPoint: int; lastPoint: int;
    firstCons: AppParCurvesConstraint; lastCons: AppParCurvesConstraint; nbPol: int): BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             parameters: MathVector) {.importcpp: "Perform", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             parameters: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             l1: StandardReal; l2: StandardReal) {.importcpp: "Perform", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc perform*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
             parameters: MathVector; v1t: MathVector; v2t: MathVector;
             v1c: MathVector; v2c: MathVector; l1: StandardReal; l2: StandardReal) {.
    importcpp: "Perform", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc isDone*(this: BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc bezierValue*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): AppParCurvesMultiCurve {.
    importcpp: "BezierValue", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc bSplineValue*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "BSplineValue", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc functionMatrix*(this: BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc derivativeFunctionMatrix*(this: BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc errorGradient*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
                   grad: var MathVector; f: var StandardReal;
                   maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "ErrorGradient", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc distance*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): MathMatrix {.
    importcpp: "Distance", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc error*(this: var BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox;
           f: var StandardReal; maxE3d: var StandardReal; maxE2d: var StandardReal) {.
    importcpp: "Error", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc firstLambda*(this: BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "FirstLambda", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc lastLambda*(this: BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "LastLambda", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc points*(this: BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "Points", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc poles*(this: BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "Poles", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc kIndex*(this: BRepApproxBSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox): MathIntegerVector {.
    noSideEffect, importcpp: "KIndex", header: "BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}