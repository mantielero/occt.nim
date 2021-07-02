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

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute* {.
      importcpp: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute",
      header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient ##
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


proc constructAppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute*(
    ssp: AppDefMultiLine; firstPoint: StandardInteger; lastPoint: StandardInteger;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; nbPol: StandardInteger): AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc nbVariables*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc value*(this: var AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute;
           x: MathVector; f: var StandardReal): StandardBoolean {.importcpp: "Value",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc gradient*(this: var AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute;
              x: MathVector; g: var MathVector): StandardBoolean {.
    importcpp: "Gradient",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc values*(this: var AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute;
            x: MathVector; f: var StandardReal; g: var MathVector): StandardBoolean {.
    importcpp: "Values",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc newParameters*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute): MathVector {.
    noSideEffect, importcpp: "NewParameters",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc curveValue*(this: var AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute): AppParCurvesMultiBSpCurve {.
    importcpp: "CurveValue",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc error*(this: var AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute;
           iPoint: StandardInteger; curveIndex: StandardInteger): StandardReal {.
    importcpp: "Error",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc maxError3d*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc maxError2d*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc functionMatrix*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc derivativeFunctionMatrix*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc index*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute): MathIntegerVector {.
    noSideEffect, importcpp: "Index",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc firstConstraint*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
                     firstPoint: StandardInteger): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc lastConstraint*(this: AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
                    lastPoint: StandardInteger): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc setFirstLambda*(this: var AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute;
                    l1: StandardReal) {.importcpp: "SetFirstLambda", header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}
proc setLastLambda*(this: var AppDefBSpParFunctionOfMyBSplGradientOfBSplineCompute;
                   l2: StandardReal) {.importcpp: "SetLastLambda", header: "AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx".}

