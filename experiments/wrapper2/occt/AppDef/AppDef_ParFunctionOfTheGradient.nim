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
  ../AppParCurves/AppParCurves_MultiCurve, ../Standard/Standard_Integer,
  ../math/math_Vector, ../Standard/Standard_Real, ../math/math_Matrix,
  AppDef_ParLeastSquareOfTheGradient, ../TColStd/TColStd_HArray1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../math/math_MultipleVarFunctionWithGradient,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_ParLeastSquareOfTheGradient"
discard "forward decl of AppDef_ResConstraintOfTheGradient"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDef_ParFunctionOfTheGradient* {.importcpp: "AppDef_ParFunctionOfTheGradient", header: "AppDef_ParFunctionOfTheGradient.hxx",
                                    bycopy.} = object of math_MultipleVarFunctionWithGradient ##
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


proc constructAppDef_ParFunctionOfTheGradient*(SSP: AppDef_MultiLine;
    FirstPoint: Standard_Integer; LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: math_Vector; Deg: Standard_Integer): AppDef_ParFunctionOfTheGradient {.
    constructor, importcpp: "AppDef_ParFunctionOfTheGradient(@)",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc NbVariables*(this: AppDef_ParFunctionOfTheGradient): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc Value*(this: var AppDef_ParFunctionOfTheGradient; X: math_Vector;
           F: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc Gradient*(this: var AppDef_ParFunctionOfTheGradient; X: math_Vector;
              G: var math_Vector): Standard_Boolean {.importcpp: "Gradient",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc Values*(this: var AppDef_ParFunctionOfTheGradient; X: math_Vector;
            F: var Standard_Real; G: var math_Vector): Standard_Boolean {.
    importcpp: "Values", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc NewParameters*(this: AppDef_ParFunctionOfTheGradient): math_Vector {.
    noSideEffect, importcpp: "NewParameters",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc CurveValue*(this: var AppDef_ParFunctionOfTheGradient): AppParCurves_MultiCurve {.
    importcpp: "CurveValue", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc Error*(this: AppDef_ParFunctionOfTheGradient; IPoint: Standard_Integer;
           CurveIndex: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Error", header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc MaxError3d*(this: AppDef_ParFunctionOfTheGradient): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc MaxError2d*(this: AppDef_ParFunctionOfTheGradient): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc FirstConstraint*(this: AppDef_ParFunctionOfTheGradient; TheConstraints: handle[
    AppParCurves_HArray1OfConstraintCouple]; FirstPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "FirstConstraint",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}
proc LastConstraint*(this: AppDef_ParFunctionOfTheGradient; TheConstraints: handle[
    AppParCurves_HArray1OfConstraintCouple]; LastPoint: Standard_Integer): AppParCurves_Constraint {.
    noSideEffect, importcpp: "LastConstraint",
    header: "AppDef_ParFunctionOfTheGradient.hxx".}