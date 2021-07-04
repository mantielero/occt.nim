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
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_MultiCurve,
  ../math/math_Vector, ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppDef_ParLeastSquareOfTheGradient"
discard "forward decl of AppDef_ResConstraintOfTheGradient"
discard "forward decl of AppDef_ParFunctionOfTheGradient"
discard "forward decl of AppDef_Gradient_BFGSOfTheGradient"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDef_TheGradient* {.importcpp: "AppDef_TheGradient",
                       header: "AppDef_TheGradient.hxx", bycopy.} = object ## ! Tries to minimize the sum
                                                                      ## (square(||Qui - Bi*Pi||))
                                                                      ## ! where Pui describe the
                                                                      ## approximating Bezier
                                                                      ## curves'Poles
                                                                      ## ! and Qi the MultiLine points with a parameter ui.
                                                                      ## ! In this algorithm, the parameters ui are the unknowns.
                                                                      ## ! The tolerance required on this sum is given by Tol.
                                                                      ## ! The desired degree of the resulting curve is Deg.


proc constructAppDef_TheGradient*(SSP: AppDef_MultiLine;
                                 FirstPoint: Standard_Integer;
                                 LastPoint: Standard_Integer; TheConstraints: handle[
    AppParCurves_HArray1OfConstraintCouple]; Parameters: var math_Vector;
                                 Deg: Standard_Integer; Tol3d: Standard_Real;
                                 Tol2d: Standard_Real;
                                 NbIterations: Standard_Integer = 200): AppDef_TheGradient {.
    constructor, importcpp: "AppDef_TheGradient(@)",
    header: "AppDef_TheGradient.hxx".}
proc IsDone*(this: AppDef_TheGradient): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "AppDef_TheGradient.hxx".}
proc Value*(this: AppDef_TheGradient): AppParCurves_MultiCurve {.noSideEffect,
    importcpp: "Value", header: "AppDef_TheGradient.hxx".}
proc Error*(this: AppDef_TheGradient; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Error", header: "AppDef_TheGradient.hxx".}
proc MaxError3d*(this: AppDef_TheGradient): Standard_Real {.noSideEffect,
    importcpp: "MaxError3d", header: "AppDef_TheGradient.hxx".}
proc MaxError2d*(this: AppDef_TheGradient): Standard_Real {.noSideEffect,
    importcpp: "MaxError2d", header: "AppDef_TheGradient.hxx".}
proc AverageError*(this: AppDef_TheGradient): Standard_Real {.noSideEffect,
    importcpp: "AverageError", header: "AppDef_TheGradient.hxx".}