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

discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx",
      bycopy.} = object of MathMultipleVarFunctionWithGradient ## ! initializes the fields of the function. The approximating
                                                          ## ! curve has <NbPol> control points.
                                                          ## ! this method is used each time Value or Gradient is
                                                          ## ! needed.


proc constructBRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; nbPol: int): BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc nbVariables*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): int {.
    noSideEffect, importcpp: "NbVariables", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc value*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
           x: MathVector; f: var float): bool {.importcpp: "Value", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc gradient*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
              x: MathVector; g: var MathVector): bool {.importcpp: "Gradient", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc values*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
            x: MathVector; f: var float; g: var MathVector): bool {.importcpp: "Values", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc newParameters*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): MathVector {.
    noSideEffect, importcpp: "NewParameters", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc curveValue*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "CurveValue", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc error*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
           iPoint: int; curveIndex: int): float {.importcpp: "Error", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc maxError3d*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): float {.
    noSideEffect, importcpp: "MaxError3d", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc maxError2d*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): float {.
    noSideEffect, importcpp: "MaxError2d", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc functionMatrix*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc derivativeFunctionMatrix*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc index*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): MathIntegerVector {.
    noSideEffect, importcpp: "Index", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc firstConstraint*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; firstPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc lastConstraint*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; lastPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc setFirstLambda*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
                    l1: float) {.importcpp: "SetFirstLambda", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc setLastLambda*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
                   l2: float) {.importcpp: "SetLastLambda", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
