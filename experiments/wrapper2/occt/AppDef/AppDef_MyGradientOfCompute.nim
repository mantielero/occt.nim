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
discard "forward decl of AppDef_ParLeastSquareOfMyGradientOfCompute"
discard "forward decl of AppDef_ResConstraintOfMyGradientOfCompute"
discard "forward decl of AppDef_ParFunctionOfMyGradientOfCompute"
discard "forward decl of AppDef_Gradient_BFGSOfMyGradientOfCompute"
discard "forward decl of AppParCurves_MultiCurve"
type
  AppDefMyGradientOfCompute* {.importcpp: "AppDef_MyGradientOfCompute",
                              header: "AppDef_MyGradientOfCompute.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Tries
                                                                                     ## to
                                                                                     ## minimize
                                                                                     ## the
                                                                                     ## sum
                                                                                     ## (square(||Qui
                                                                                     ## -
                                                                                     ## Bi*Pi||))
                                                                                     ##
                                                                                     ## !
                                                                                     ## where
                                                                                     ## Pui
                                                                                     ## describe
                                                                                     ## the
                                                                                     ## approximating
                                                                                     ## Bezier
                                                                                     ## curves'Poles
                                                                                     ##
                                                                                     ## !
                                                                                     ## and
                                                                                     ## Qi
                                                                                     ## the
                                                                                     ## MultiLine
                                                                                     ## points
                                                                                     ## with
                                                                                     ## a
                                                                                     ## parameter
                                                                                     ## ui.
                                                                                     ##
                                                                                     ## !
                                                                                     ## In
                                                                                     ## this
                                                                                     ## algorithm,
                                                                                     ## the
                                                                                     ## parameters
                                                                                     ## ui
                                                                                     ## are
                                                                                     ## the
                                                                                     ## unknowns.
                                                                                     ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## tolerance
                                                                                     ## required
                                                                                     ## on
                                                                                     ## this
                                                                                     ## sum
                                                                                     ## is
                                                                                     ## given
                                                                                     ## by
                                                                                     ## Tol.
                                                                                     ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## desired
                                                                                     ## degree
                                                                                     ## of
                                                                                     ## the
                                                                                     ## resulting
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## Deg.


proc constructAppDefMyGradientOfCompute*(ssp: AppDefMultiLine; firstPoint: int;
                                        lastPoint: int; theConstraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; parameters: var MathVector; deg: int;
                                        tol3d: float; tol2d: float;
                                        nbIterations: int = 200): AppDefMyGradientOfCompute {.
    constructor, importcpp: "AppDef_MyGradientOfCompute(@)",
    header: "AppDef_MyGradientOfCompute.hxx".}
proc isDone*(this: AppDefMyGradientOfCompute): bool {.noSideEffect,
    importcpp: "IsDone", header: "AppDef_MyGradientOfCompute.hxx".}
proc value*(this: AppDefMyGradientOfCompute): AppParCurvesMultiCurve {.noSideEffect,
    importcpp: "Value", header: "AppDef_MyGradientOfCompute.hxx".}
proc error*(this: AppDefMyGradientOfCompute; index: int): float {.noSideEffect,
    importcpp: "Error", header: "AppDef_MyGradientOfCompute.hxx".}
proc maxError3d*(this: AppDefMyGradientOfCompute): float {.noSideEffect,
    importcpp: "MaxError3d", header: "AppDef_MyGradientOfCompute.hxx".}
proc maxError2d*(this: AppDefMyGradientOfCompute): float {.noSideEffect,
    importcpp: "MaxError2d", header: "AppDef_MyGradientOfCompute.hxx".}
proc averageError*(this: AppDefMyGradientOfCompute): float {.noSideEffect,
    importcpp: "AverageError", header: "AppDef_MyGradientOfCompute.hxx".}
