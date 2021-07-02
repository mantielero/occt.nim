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
discard "forward decl of AppDef_ParLeastSquareOfMyGradientOfCompute"
discard "forward decl of AppDef_ResConstraintOfMyGradientOfCompute"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDefParFunctionOfMyGradientOfCompute* {.
      importcpp: "AppDef_ParFunctionOfMyGradientOfCompute",
      header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient ##
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


proc constructAppDefParFunctionOfMyGradientOfCompute*(ssp: AppDefMultiLine;
    firstPoint: StandardInteger; lastPoint: StandardInteger;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; deg: StandardInteger): AppDefParFunctionOfMyGradientOfCompute {.
    constructor, importcpp: "AppDef_ParFunctionOfMyGradientOfCompute(@)",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc nbVariables*(this: AppDefParFunctionOfMyGradientOfCompute): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc value*(this: var AppDefParFunctionOfMyGradientOfCompute; x: MathVector;
           f: var StandardReal): StandardBoolean {.importcpp: "Value",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc gradient*(this: var AppDefParFunctionOfMyGradientOfCompute; x: MathVector;
              g: var MathVector): StandardBoolean {.importcpp: "Gradient",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc values*(this: var AppDefParFunctionOfMyGradientOfCompute; x: MathVector;
            f: var StandardReal; g: var MathVector): StandardBoolean {.
    importcpp: "Values", header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc newParameters*(this: AppDefParFunctionOfMyGradientOfCompute): MathVector {.
    noSideEffect, importcpp: "NewParameters",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc curveValue*(this: var AppDefParFunctionOfMyGradientOfCompute): AppParCurvesMultiCurve {.
    importcpp: "CurveValue", header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc error*(this: AppDefParFunctionOfMyGradientOfCompute; iPoint: StandardInteger;
           curveIndex: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Error", header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc maxError3d*(this: AppDefParFunctionOfMyGradientOfCompute): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc maxError2d*(this: AppDefParFunctionOfMyGradientOfCompute): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc firstConstraint*(this: AppDefParFunctionOfMyGradientOfCompute; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; firstPoint: StandardInteger): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}
proc lastConstraint*(this: AppDefParFunctionOfMyGradientOfCompute; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; lastPoint: StandardInteger): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "AppDef_ParFunctionOfMyGradientOfCompute.hxx".}

