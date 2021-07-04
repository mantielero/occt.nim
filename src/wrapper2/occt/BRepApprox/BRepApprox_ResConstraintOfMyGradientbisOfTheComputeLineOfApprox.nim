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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../math/math_Matrix, ../math/math_Vector,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger,
  ../AppParCurves/AppParCurves_HArray1OfConstraintCouple

discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of math_Matrix"
type
  BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx",
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


proc constructBRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox*(
    SSP: BRepApprox_TheMultiLineOfApprox; SCurv: var AppParCurves_MultiCurve;
    FirstPoint: Standard_Integer; LastPoint: Standard_Integer;
    Constraints: handle[AppParCurves_HArray1OfConstraintCouple];
    Bern: math_Matrix; DerivativeBern: math_Matrix;
    Tolerance: Standard_Real = 1.0e-10): BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox(@)", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc IsDone*(this: BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc Error*(this: BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox): Standard_Real {.
    noSideEffect, importcpp: "Error", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc ConstraintMatrix*(this: BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox): math_Matrix {.
    noSideEffect, importcpp: "ConstraintMatrix", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc Duale*(this: BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox): math_Vector {.
    noSideEffect, importcpp: "Duale", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc ConstraintDerivative*(this: var BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox;
                          SSP: BRepApprox_TheMultiLineOfApprox;
                          Parameters: math_Vector; Deg: Standard_Integer;
                          DA: math_Matrix): math_Matrix {.
    importcpp: "ConstraintDerivative", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc InverseMatrix*(this: BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox): math_Matrix {.
    noSideEffect, importcpp: "InverseMatrix", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}