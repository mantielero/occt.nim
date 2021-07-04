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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../math/math_Matrix, ../math/math_Vector,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple

discard "forward decl of Standard_OutOfRange"
discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of math_Matrix"
type
  GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox* {.importcpp: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox", header: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx",
      bycopy.} = object ## ! Given a MultiLine SSP with constraints points, this
                     ## ! algorithm finds the best curve solution to approximate it.
                     ## ! The poles from SCurv issued for example from the least
                     ## ! squares are used as a guess solution for the uzawa
                     ## ! algorithm. The tolerance used in the Uzawa algorithms
                     ## ! is Tolerance.
                     ## ! A is the Bernstein matrix associated to the MultiLine
                     ## ! and DA is the derivative bernstein matrix.(They can come
                     ## ! from an approximation with ParLeastSquare.)
                     ## ! The MultiCurve is modified. New MultiPoles are given.
                     ## ! is used internally to create the fields.


proc constructGeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox*(
    SSP: GeomInt_TheMultiLineOfWLApprox; SCurv: var AppParCurves_MultiCurve;
    FirstPoint: Standard_Integer; LastPoint: Standard_Integer;
    Constraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Bern: math_Matrix; DerivativeBern: math_Matrix;
    Tolerance: Standard_Real = 1.0e-10): GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox(@)", header: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc IsDone*(this: GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone", header: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc Error*(this: GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "Error", header: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc ConstraintMatrix*(this: GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox): math_Matrix {.
    noSideEffect, importcpp: "ConstraintMatrix", header: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc Duale*(this: GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox): math_Vector {.
    noSideEffect, importcpp: "Duale", header: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc ConstraintDerivative*(this: var GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox;
                          SSP: GeomInt_TheMultiLineOfWLApprox;
                          Parameters: math_Vector; Deg: Standard_Integer;
                          DA: math_Matrix): math_Matrix {.
    importcpp: "ConstraintDerivative", header: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}
proc InverseMatrix*(this: GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox): math_Matrix {.
    noSideEffect, importcpp: "InverseMatrix", header: "GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx".}