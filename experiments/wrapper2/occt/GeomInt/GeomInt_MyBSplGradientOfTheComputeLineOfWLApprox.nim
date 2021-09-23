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
  ../Standard/Standard_Handle, ../AppParCurves/AppParCurves_MultiBSpCurve,
  ../math/math_Vector, ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox* {.
      importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox",
      header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx", bycopy.} = object ##
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
                                                                                   ## BSpline
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


proc constructGeomInt_MyBSplGradientOfTheComputeLineOfWLApprox*(
    SSP: GeomInt_TheMultiLineOfWLApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: var math_Vector; Knots: TColStd_Array1OfReal;
    Mults: TColStd_Array1OfInteger; Deg: Standard_Integer; Tol3d: Standard_Real;
    Tol2d: Standard_Real; NbIterations: Standard_Integer = 1): GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox {.
    constructor,
    importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox(@)",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomInt_MyBSplGradientOfTheComputeLineOfWLApprox*(
    SSP: GeomInt_TheMultiLineOfWLApprox; FirstPoint: Standard_Integer;
    LastPoint: Standard_Integer;
    TheConstraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Parameters: var math_Vector; Knots: TColStd_Array1OfReal;
    Mults: TColStd_Array1OfInteger; Deg: Standard_Integer; Tol3d: Standard_Real;
    Tol2d: Standard_Real; NbIterations: Standard_Integer; lambda1: Standard_Real;
    lambda2: Standard_Real): GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox {.
    constructor,
    importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox(@)",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc IsDone*(this: GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc Value*(this: GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox): AppParCurves_MultiBSpCurve {.
    noSideEffect, importcpp: "Value",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc Error*(this: GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox;
           Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Error",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc MaxError3d*(this: GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError3d",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc MaxError2d*(this: GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "MaxError2d",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc AverageError*(this: GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "AverageError",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}