##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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
discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox* {.
      importcpp: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox",
      header: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx", bycopy.} = object ##
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


proc constructGeomInt_MyGradientOfTheComputeLineBezierOfWLApprox*(
    SSP: GeomInt_TheMultiLineOfWLApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: var math_Vector; Deg: Standard_Integer; Tol3d: Standard_Real;
    Tol2d: Standard_Real; NbIterations: Standard_Integer = 200): GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox {.
    constructor,
    importcpp: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox(@)",
    header: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc IsDone*(this: GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc Value*(this: GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox): AppParCurves_MultiCurve {.
    noSideEffect, importcpp: "Value",
    header: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc Error*(this: GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox;
           Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Error",
    header: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc MaxError3d*(this: GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d",
    header: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc MaxError2d*(this: GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d",
    header: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc AverageError*(this: GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "AverageError",
    header: "GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx".}