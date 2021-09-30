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
discard "forward decl of AppDef_TheLeastSquares"
discard "forward decl of AppDef_TheResol"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDefTheFunction* {.importcpp: "AppDef_TheFunction",
                      header: "AppDef_TheFunction.hxx", bycopy.} = object of MathMultipleVarFunctionWithGradient ##
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


proc constructAppDefTheFunction*(ssp: AppDefMultiLine; firstPoint: cint;
                                lastPoint: cint; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; parameters: MathVector; deg: cint): AppDefTheFunction {.
    constructor, importcpp: "AppDef_TheFunction(@)",
    header: "AppDef_TheFunction.hxx".}
proc nbVariables*(this: AppDefTheFunction): cint {.noSideEffect,
    importcpp: "NbVariables", header: "AppDef_TheFunction.hxx".}
proc value*(this: var AppDefTheFunction; x: MathVector; f: var cfloat): bool {.
    importcpp: "Value", header: "AppDef_TheFunction.hxx".}
proc gradient*(this: var AppDefTheFunction; x: MathVector; g: var MathVector): bool {.
    importcpp: "Gradient", header: "AppDef_TheFunction.hxx".}
proc values*(this: var AppDefTheFunction; x: MathVector; f: var cfloat; g: var MathVector): bool {.
    importcpp: "Values", header: "AppDef_TheFunction.hxx".}
proc newParameters*(this: AppDefTheFunction): MathVector {.noSideEffect,
    importcpp: "NewParameters", header: "AppDef_TheFunction.hxx".}
proc curveValue*(this: var AppDefTheFunction): AppParCurvesMultiCurve {.
    importcpp: "CurveValue", header: "AppDef_TheFunction.hxx".}
proc error*(this: AppDefTheFunction; iPoint: cint; curveIndex: cint): cfloat {.
    noSideEffect, importcpp: "Error", header: "AppDef_TheFunction.hxx".}
proc maxError3d*(this: AppDefTheFunction): cfloat {.noSideEffect,
    importcpp: "MaxError3d", header: "AppDef_TheFunction.hxx".}
proc maxError2d*(this: AppDefTheFunction): cfloat {.noSideEffect,
    importcpp: "MaxError2d", header: "AppDef_TheFunction.hxx".}
proc firstConstraint*(this: AppDefTheFunction; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; firstPoint: cint): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "AppDef_TheFunction.hxx".}
proc lastConstraint*(this: AppDefTheFunction; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; lastPoint: cint): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint", header: "AppDef_TheFunction.hxx".}

























