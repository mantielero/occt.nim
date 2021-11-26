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
  BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox* {.importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx",
      bycopy.} = object         ## ! is used internally to create the fields.


proc `new`*(this: var BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox;
           theSize: csize_t): pointer {.importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox::operator new", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox;
              theAddress: pointer) {.importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox;
             theSize: csize_t): pointer {.importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox::operator new[]", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox::operator delete[]", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `new`*(this: var BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox::operator new", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox;
              a2: pointer; a3: pointer) {.importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; sCurv: var AppParCurvesMultiCurve;
    firstPoint: int; lastPoint: int;
    constraints: Handle[AppParCurvesHArray1OfConstraintCouple]; bern: MathMatrix;
    derivativeBern: MathMatrix; tolerance: StandardReal = 1.0e-10): BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox {.
    constructor, importcpp: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox(@)", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc isDone*(this: BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc error*(this: BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "Error", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc constraintMatrix*(this: BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "ConstraintMatrix", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc duale*(this: BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox): MathVector {.
    noSideEffect, importcpp: "Duale", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc constraintDerivative*(this: var BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox;
                          ssp: BRepApproxTheMultiLineOfApprox;
                          parameters: MathVector; deg: int; da: MathMatrix): MathMatrix {.
    importcpp: "ConstraintDerivative", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}
proc inverseMatrix*(this: BRepApproxResConstraintOfMyGradientbisOfTheComputeLineOfApprox): MathMatrix {.
    noSideEffect, importcpp: "InverseMatrix", header: "BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx".}