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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  AppDefMyBSplGradientOfBSplineCompute* {.
      importcpp: "AppDef_MyBSplGradientOfBSplineCompute",
      header: "AppDef_MyBSplGradientOfBSplineCompute.hxx", bycopy.} = object ## ! Tries to minimize the sum
                                                                        ## (square(||Qui -
                                                                        ## Bi*Pi||))
                                                                        ## ! where Pui describe the
                                                                        ## approximating BSpline
                                                                        ## curves'Poles
                                                                        ## ! and Qi the
                                                                        ## MultiLine points with a
                                                                        ## parameter ui.
                                                                        ## ! In this
                                                                        ## algorithm, the
                                                                        ## parameters ui are the
                                                                        ## unknowns.
                                                                        ## ! The
                                                                        ## tolerance required on this sum is given by Tol.
                                                                        ## ! The desired degree of the
                                                                        ## resulting curve is Deg.


proc constructAppDefMyBSplGradientOfBSplineCompute*(ssp: AppDefMultiLine;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; deg: StandardInteger; tol3d: StandardReal;
    tol2d: StandardReal; nbIterations: StandardInteger = 1): AppDefMyBSplGradientOfBSplineCompute {.
    constructor, importcpp: "AppDef_MyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_MyBSplGradientOfBSplineCompute.hxx".}
proc constructAppDefMyBSplGradientOfBSplineCompute*(ssp: AppDefMultiLine;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; deg: StandardInteger; tol3d: StandardReal;
    tol2d: StandardReal; nbIterations: StandardInteger; lambda1: StandardReal;
    lambda2: StandardReal): AppDefMyBSplGradientOfBSplineCompute {.constructor,
    importcpp: "AppDef_MyBSplGradientOfBSplineCompute(@)",
    header: "AppDef_MyBSplGradientOfBSplineCompute.hxx".}
proc isDone*(this: AppDefMyBSplGradientOfBSplineCompute): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "AppDef_MyBSplGradientOfBSplineCompute.hxx".}
proc value*(this: AppDefMyBSplGradientOfBSplineCompute): AppParCurvesMultiBSpCurve {.
    noSideEffect, importcpp: "Value",
    header: "AppDef_MyBSplGradientOfBSplineCompute.hxx".}
proc error*(this: AppDefMyBSplGradientOfBSplineCompute; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Error",
    header: "AppDef_MyBSplGradientOfBSplineCompute.hxx".}
proc maxError3d*(this: AppDefMyBSplGradientOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "AppDef_MyBSplGradientOfBSplineCompute.hxx".}
proc maxError2d*(this: AppDefMyBSplGradientOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "AppDef_MyBSplGradientOfBSplineCompute.hxx".}
proc averageError*(this: AppDefMyBSplGradientOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "AverageError",
    header: "AppDef_MyBSplGradientOfBSplineCompute.hxx".}

