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
      bycopy.} = object of MathMultipleVarFunctionWithGradient ## ! this method is used each time Value or Gradient is
                                                          ## ! needed.


proc `new`*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
           theSize: csize_t): pointer {.importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox::operator new", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
              theAddress: pointer) {.importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
             theSize: csize_t): pointer {.importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox::operator new[]", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox::operator delete[]", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `new`*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox::operator new", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
              a2: pointer; a3: pointer) {.importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; nbPol: int): BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc nbVariables*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): int {.
    noSideEffect, importcpp: "NbVariables", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc value*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
           x: MathVector; f: var StandardReal): StandardBoolean {.importcpp: "Value", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc gradient*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
              x: MathVector; g: var MathVector): StandardBoolean {.
    importcpp: "Gradient", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc values*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
            x: MathVector; f: var StandardReal; g: var MathVector): StandardBoolean {.
    importcpp: "Values", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc newParameters*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): MathVector {.
    noSideEffect, importcpp: "NewParameters", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc curveValue*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "CurveValue", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc error*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
           iPoint: int; curveIndex: int): StandardReal {.importcpp: "Error", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc maxError3d*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc maxError2d*(this: BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): StandardReal {.
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
                    l1: StandardReal) {.importcpp: "SetFirstLambda", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc setLastLambda*(this: var BRepApproxBSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
                   l2: StandardReal) {.importcpp: "SetLastLambda", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}