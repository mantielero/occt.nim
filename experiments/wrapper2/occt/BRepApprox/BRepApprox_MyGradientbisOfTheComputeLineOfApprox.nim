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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_MultiCurve,
  ../math/math_Vector, ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple

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
  BRepApprox_MyGradientbisOfTheComputeLineOfApprox* {.
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


proc constructBRepApprox_MyGradientbisOfTheComputeLineOfApprox*(
    SSP: BRepApprox_TheMultiLineOfApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: var math_Vector; Deg: Standard_Integer; Tol3d: Standard_Real;
    Tol2d: Standard_Real; NbIterations: Standard_Integer = 200): BRepApprox_MyGradientbisOfTheComputeLineOfApprox {.
    constructor,
    importcpp: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox(@)",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc IsDone*(this: BRepApprox_MyGradientbisOfTheComputeLineOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc Value*(this: BRepApprox_MyGradientbisOfTheComputeLineOfApprox): AppParCurves_MultiCurve {.
    noSideEffect, importcpp: "Value",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc Error*(this: BRepApprox_MyGradientbisOfTheComputeLineOfApprox;
           Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Error",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc MaxError3d*(this: BRepApprox_MyGradientbisOfTheComputeLineOfApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc MaxError2d*(this: BRepApprox_MyGradientbisOfTheComputeLineOfApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}
proc AverageError*(this: BRepApprox_MyGradientbisOfTheComputeLineOfApprox): Standard_Real {.
    noSideEffect, importcpp: "AverageError",
    header: "BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx".}