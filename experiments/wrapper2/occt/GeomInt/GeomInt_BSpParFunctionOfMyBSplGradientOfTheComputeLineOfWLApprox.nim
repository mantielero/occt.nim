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

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
discard "forward decl of math_Matrix"
type
  GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox* {.importcpp: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx",
      bycopy.} = object of MathMultipleVarFunctionWithGradient ## ! initializes the fields of the function. The approximating
                                                          ## ! curve has <NbPol> control points.
                                                          ## ! this method is used each time Value or Gradient is
                                                          ## ! needed.


proc constructGeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; nbPol: int): GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox(@)", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc nbVariables*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): int {.
    noSideEffect, importcpp: "NbVariables", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc value*(this: var GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
           x: MathVector; f: var float): bool {.importcpp: "Value", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc gradient*(this: var GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
              x: MathVector; g: var MathVector): bool {.importcpp: "Gradient", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc values*(this: var GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
            x: MathVector; f: var float; g: var MathVector): bool {.importcpp: "Values", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc newParameters*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): MathVector {.
    noSideEffect, importcpp: "NewParameters", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc curveValue*(this: var GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): AppParCurvesMultiBSpCurve {.
    importcpp: "CurveValue", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc error*(this: var GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
           iPoint: int; curveIndex: int): float {.importcpp: "Error", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc maxError3d*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): float {.
    noSideEffect, importcpp: "MaxError3d", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc maxError2d*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): float {.
    noSideEffect, importcpp: "MaxError2d", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc functionMatrix*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): MathMatrix {.
    noSideEffect, importcpp: "FunctionMatrix", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc derivativeFunctionMatrix*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): MathMatrix {.
    noSideEffect, importcpp: "DerivativeFunctionMatrix", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc index*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox): MathIntegerVector {.
    noSideEffect, importcpp: "Index", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc firstConstraint*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; firstPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc lastConstraint*(this: GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; lastPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc setFirstLambda*(this: var GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
                    l1: float) {.importcpp: "SetFirstLambda", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc setLastLambda*(this: var GeomIntBSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox;
                   l2: float) {.importcpp: "SetLastLambda", header: "GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
