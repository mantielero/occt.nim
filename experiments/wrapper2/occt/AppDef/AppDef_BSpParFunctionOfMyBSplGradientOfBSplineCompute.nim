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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, AppDef_MultiLine,
  ../AppParCurves/AppParCurves_MultiBSpCurve, ../Standard/Standard_Integer,
  ../math/math_Vector, ../Standard/Standard_Real, ../math/math_Matrix,
  AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute,
  ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../math/math_MultipleVarFunctionWithGradient, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger, ../math/math_IntegerVector,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute* {.
      importcpp: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute",
      header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx", bycopy.} = object of math_MultipleVarFunctionWithGradient ##
                                                                                                                              ## !
                                                                                                                              ## initializes
                                                                                                                              ## the
                                                                                                                              ## fields
                                                                                                                              ## of
                                                                                                                              ## the
                                                                                                                              ## function.
                                                                                                                              ## The
                                                                                                                              ## approximating
                                                                                                                              ##
                                                                                                                              ## !
                                                                                                                              ## curve
                                                                                                                              ## has
                                                                                                                              ## <NbPol>
                                                                                                                              ## control
                                                                                                                              ## points.
                                                                                                                              ##
                                                                                                                              ## !
                                                                                                                              ## this
                                                                                                                              ## method
                                                                                                                              ## is
                                                                                                                              ## used
                                                                                                                              ## each
                                                                                                                              ## time
                                                                                                                              ## Value
                                                                                                                              ## or
                                                                                                                              ## Gradient
                                                                                                                              ## is
                                                                                                                              ##
                                                                                                                              ## !
                                                                                                                              ## needed.


proc constructAppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute*(
    SSP: AppDef_MultiLine; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: math_Vector; Knots: TColStd_Array1OfReal;
    Mults: TColStd_Array1OfInteger; NbPol: Standard_Integer): AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc NbVariables*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc Value*(this: var AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
           X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc Gradient*(this: var AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
              X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc Values*(this: var AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
            X: math_Vector; F: var Standard_Real; G: var math_Vector): Standard_Boolean {.
    importcpp: "Values",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc NewParameters*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute): math_Vector {.
    noSideEffect, importcpp: "NewParameters",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc CurveValue*(this: var AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute): AppParCurves_MultiBSpCurve {.
    importcpp: "CurveValue",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc Error*(this: var AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
           IPoint: Standard_Integer; CurveIndex: Standard_Integer): Standard_Real {.
    importcpp: "Error",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc MaxError3d*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc MaxError2d*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc FunctionMatrix*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute): math_Matrix {.
    noSideEffect, importcpp: "FunctionMatrix",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc DerivativeFunctionMatrix*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute): math_Matrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc Index*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute): math_IntegerVector {.
    noSideEffect, importcpp: "Index",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc FirstConstraint*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                     FirstPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc LastConstraint*(this: AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
                    LastPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc SetFirstLambda*(this: var AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
                    l1: Standard_Real) {.importcpp: "SetFirstLambda", header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc SetLastLambda*(this: var AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute;
                   l2: Standard_Real) {.importcpp: "SetLastLambda", header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}