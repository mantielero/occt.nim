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
discard "forward decl of AppDef_ParLeastSquareOfTheGradient"
discard "forward decl of AppDef_ResConstraintOfTheGradient"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDefParFunctionOfTheGradient* {.importcpp: "AppDef_ParFunctionOfTheGradient", header: "AppDef_ParFunctionOfTheGradient.hxx",
                                   bycopy.} = object of MathMultipleVarFunctionWithGradient ##
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


proc constructAppDefParFunctionOfTheGradient*(ssp: AppDefMultiLine;
    firstPoint: cint; lastPoint: cint;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; deg: cint): AppDefParFunctionOfTheGradient {.constructor,
    importcpp: "AppDef_ParFunctionOfTheGradient(@)",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc nbVariables*(this: AppDefParFunctionOfTheGradient): cint {.noSideEffect,
    importcpp: "NbVariables", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc value*(this: var AppDefParFunctionOfTheGradient; x: MathVector; f: var cfloat): bool {.
    importcpp: "Value", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc gradient*(this: var AppDefParFunctionOfTheGradient; x: MathVector;
              g: var MathVector): bool {.importcpp: "Gradient", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc values*(this: var AppDefParFunctionOfTheGradient; x: MathVector; f: var cfloat;
            g: var MathVector): bool {.importcpp: "Values", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc newParameters*(this: AppDefParFunctionOfTheGradient): MathVector {.
    noSideEffect, importcpp: "NewParameters",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc curveValue*(this: var AppDefParFunctionOfTheGradient): AppParCurvesMultiCurve {.
    importcpp: "CurveValue", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc error*(this: AppDefParFunctionOfTheGradient; iPoint: cint; curveIndex: cint): cfloat {.
    noSideEffect, importcpp: "Error", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc maxError3d*(this: AppDefParFunctionOfTheGradient): cfloat {.noSideEffect,
    importcpp: "MaxError3d", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc maxError2d*(this: AppDefParFunctionOfTheGradient): cfloat {.noSideEffect,
    importcpp: "MaxError2d", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc firstConstraint*(this: AppDefParFunctionOfTheGradient; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; firstPoint: cint): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc lastConstraint*(this: AppDefParFunctionOfTheGradient; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; lastPoint: cint): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}

























