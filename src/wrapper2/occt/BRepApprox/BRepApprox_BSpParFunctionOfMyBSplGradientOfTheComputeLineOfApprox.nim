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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  BRepApprox_TheMultiLineOfApprox, ../AppParCurves/AppParCurves_MultiBSpCurve,
  ../Standard/Standard_Integer, ../math/math_Vector, ../Standard/Standard_Real,
  ../math/math_Matrix,
  BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox,
  ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../math/math_MultipleVarFunctionWithGradient, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger, ../math/math_IntegerVector,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx",
      bycopy.} = object of math_MultipleVarFunctionWithGradient ## ! initializes the fields of the function. The approximating
                                                           ## ! curve has <NbPol> control points.
                                                           ## ! this method is used each time Value or Gradient is
                                                           ## ! needed.


proc constructBRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox*(
    SSP: BRepApprox_TheMultiLineOfApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: math_Vector; Knots: TColStd_Array1OfReal;
    Mults: TColStd_Array1OfInteger; NbPol: Standard_Integer): BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox(@)", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc NbVariables*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Value*(this: var BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
           X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Gradient*(this: var BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
              X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Values*(this: var BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
            X: math_Vector; F: var Standard_Real; G: var math_Vector): Standard_Boolean {.
    importcpp: "Values", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc NewParameters*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): math_Vector {.
    noSideEffect, importcpp: "NewParameters", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc CurveValue*(this: var BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): AppParCurves_MultiBSpCurve {.
    importcpp: "CurveValue", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Error*(this: var BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
           IPoint: Standard_Integer; CurveIndex: Standard_Integer): Standard_Real {.
    importcpp: "Error", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc MaxError3d*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc MaxError2d*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc FunctionMatrix*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): math_Matrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc DerivativeFunctionMatrix*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): math_Matrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc Index*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox): math_IntegerVector {.
    noSideEffect, importcpp: "Index", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc FirstConstraint*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                     FirstPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc LastConstraint*(this: BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                    LastPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "LastConstraint", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc SetFirstLambda*(this: var BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
                    l1: Standard_Real) {.importcpp: "SetFirstLambda", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc SetLastLambda*(this: var BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox;
                   l2: Standard_Real) {.importcpp: "SetLastLambda", header: "BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx".}