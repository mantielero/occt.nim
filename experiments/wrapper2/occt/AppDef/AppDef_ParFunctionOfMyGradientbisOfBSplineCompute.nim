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
discard "forward decl of AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppDef_ResConstraintOfMyGradientbisOfBSplineCompute"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDefParFunctionOfMyGradientbisOfBSplineCompute* {.
      importcpp: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute",
      header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient ##
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
                                                                                                                         ## the
                                                                                                                         ## desired
                                                                                                                         ## degree
                                                                                                                         ## Deg.
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


proc constructAppDefParFunctionOfMyGradientbisOfBSplineCompute*(
    ssp: AppDefMultiLine; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; deg: int): AppDefParFunctionOfMyGradientbisOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute(@)",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc nbVariables*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute): int {.
    noSideEffect, importcpp: "NbVariables",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc value*(this: var AppDefParFunctionOfMyGradientbisOfBSplineCompute;
           x: MathVector; f: var float): bool {.importcpp: "Value",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc gradient*(this: var AppDefParFunctionOfMyGradientbisOfBSplineCompute;
              x: MathVector; g: var MathVector): bool {.importcpp: "Gradient",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc values*(this: var AppDefParFunctionOfMyGradientbisOfBSplineCompute;
            x: MathVector; f: var float; g: var MathVector): bool {.importcpp: "Values",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc newParameters*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute): MathVector {.
    noSideEffect, importcpp: "NewParameters",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc curveValue*(this: var AppDefParFunctionOfMyGradientbisOfBSplineCompute): AppParCurvesMultiCurve {.
    importcpp: "CurveValue",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc error*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute; iPoint: int;
           curveIndex: int): float {.noSideEffect, importcpp: "Error", header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc maxError3d*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute): float {.
    noSideEffect, importcpp: "MaxError3d",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc maxError2d*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute): float {.
    noSideEffect, importcpp: "MaxError2d",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc firstConstraint*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; firstPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc lastConstraint*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; lastPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
