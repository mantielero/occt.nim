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
    ssp: AppDefMultiLine; firstPoint: StandardInteger; lastPoint: StandardInteger;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; deg: StandardInteger): AppDefParFunctionOfMyGradientbisOfBSplineCompute {.
    constructor,
    importcpp: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute(@)",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc nbVariables*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc value*(this: var AppDefParFunctionOfMyGradientbisOfBSplineCompute;
           x: MathVector; f: var StandardReal): StandardBoolean {.importcpp: "Value",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc gradient*(this: var AppDefParFunctionOfMyGradientbisOfBSplineCompute;
              x: MathVector; g: var MathVector): StandardBoolean {.
    importcpp: "Gradient",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc values*(this: var AppDefParFunctionOfMyGradientbisOfBSplineCompute;
            x: MathVector; f: var StandardReal; g: var MathVector): StandardBoolean {.
    importcpp: "Values",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc newParameters*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute): MathVector {.
    noSideEffect, importcpp: "NewParameters",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc curveValue*(this: var AppDefParFunctionOfMyGradientbisOfBSplineCompute): AppParCurvesMultiCurve {.
    importcpp: "CurveValue",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc error*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute;
           iPoint: StandardInteger; curveIndex: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Error",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc maxError3d*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc maxError2d*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc firstConstraint*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
                     firstPoint: StandardInteger): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}
proc lastConstraint*(this: AppDefParFunctionOfMyGradientbisOfBSplineCompute;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
                    lastPoint: StandardInteger): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx".}

