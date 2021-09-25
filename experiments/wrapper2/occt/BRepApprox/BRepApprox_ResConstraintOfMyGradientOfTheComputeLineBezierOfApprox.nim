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
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of math_Matrix"
type
  BRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox* {.importcpp: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox", header: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx",
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


proc constructBRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; sCurv: var AppParCurvesMultiCurve;
    firstPoint: int; lastPoint: int;
    constraints: Handle[AppParCurvesHArray1OfConstraintCouple]; bern: MathMatrix;
    derivativeBern: MathMatrix; tolerance: float = 1.0e-10): BRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc isDone*(this: BRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox): bool {.
    noSideEffect, importcpp: "IsDone", header: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc error*(this: BRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox): float {.
    noSideEffect, importcpp: "Error", header: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc constraintMatrix*(this: BRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox): MathMatrix {.
    noSideEffect, importcpp: "ConstraintMatrix", header: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc duale*(this: BRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox): MathVector {.
    noSideEffect, importcpp: "Duale", header: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc constraintDerivative*(this: var BRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox;
                          ssp: BRepApproxTheMultiLineOfApprox;
                          parameters: MathVector; deg: int; da: MathMatrix): MathMatrix {.
    importcpp: "ConstraintDerivative", header: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc inverseMatrix*(this: BRepApproxResConstraintOfMyGradientOfTheComputeLineBezierOfApprox): MathMatrix {.
    noSideEffect, importcpp: "InverseMatrix", header: "BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
