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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  GeomInt_TheMultiLineOfWLApprox, ../AppParCurves/AppParCurves_MultiBSpCurve,
  ../Standard/Standard_Integer, ../math/math_Vector, ../Standard/Standard_Real,
  ../math/math_Matrix,
  GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox,
  ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../math/math_MultipleVarFunctionWithGradient, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger, ../math/math_IntegerVector,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox* {.importcpp: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx",
      bycopy.} = object of math_MultipleVarFunctionWithGradient ## ! initializes the fields of the function. The approximating
                                                           ## ! curve has <NbPol> control points.
                                                           ## ! this method is used each time Value or Gradient is
                                                           ## ! needed.


proc constructGeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox*(
    SSP: GeomInt_TheMultiLineOfWLApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: math_Vector; Knots: TColStd_Array1OfReal;
    Mults: TColStd_Array1OfInteger; NbPol: Standard_Integer): GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox(@)", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc NbVariables*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc Value*(this: var GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
           X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc Gradient*(this: var GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
              X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc Values*(this: var GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
            X: math_Vector; F: var Standard_Real; G: var math_Vector): Standard_Boolean {.
    importcpp: "Values", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc NewParameters*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): math_Vector {.
    noSideEffect, importcpp: "NewParameters", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc CurveValue*(this: var GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): AppParCurves_MultiBSpCurve {.
    importcpp: "CurveValue", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc Error*(this: var GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
           IPoint: Standard_Integer; CurveIndex: Standard_Integer): Standard_Real {.
    importcpp: "Error", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc MaxError3d*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc MaxError2d*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc FunctionMatrix*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): math_Matrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc DerivativeFunctionMatrix*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): math_Matrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc Index*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): math_IntegerVector {.
    noSideEffect, importcpp: "Index", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc FirstConstraint*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                     FirstPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc LastConstraint*(this: GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                    LastPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "LastConstraint", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc SetFirstLambda*(this: var GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
                    l1: Standard_Real) {.importcpp: "SetFirstLambda", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc SetLastLambda*(this: var GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
                   l2: Standard_Real) {.importcpp: "SetLastLambda", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}