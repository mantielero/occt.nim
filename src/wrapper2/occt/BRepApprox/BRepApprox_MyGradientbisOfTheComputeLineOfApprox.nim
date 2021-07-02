##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  BRepApproxMyGradientbisOfTheComputeLineOfApprox* {.
      importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox",
      header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx", bycopy.} = object ##
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


proc constructBRepApproxMyGradientbisOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: StandardInteger;
    lastPoint: StandardInteger;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; deg: StandardInteger; tol3d: StandardReal;
    tol2d: StandardReal; nbIterations: StandardInteger = 200): BRepApproxMyGradientbisOfTheComputeLineOfApprox {.
    constructor,
    importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox(@)",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc isDone*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc value*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): AppParCurvesMultiCurve {.
    noSideEffect, importcpp: "Value",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc error*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox;
           index: StandardInteger): StandardReal {.noSideEffect, importcpp: "Error",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc maxError3d*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc maxError2d*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc averageError*(this: BRepApproxMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "AverageError",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}

