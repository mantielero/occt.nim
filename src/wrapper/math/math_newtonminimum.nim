import math_types
import ../standard/standard_types
import ../precision/precision  # confusion
##  Created on: 1996-02-28
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_MultipleVarFunctionWithHessian"


proc newMathNewtonMinimum*(theFunction: MathMultipleVarFunctionWithHessian;
                          theTolerance: cfloat = confusion();
                          theNbIterations: cint = 40; theConvexity: cfloat = 1.0e-6;
                          theWithSingularity: bool = true): MathNewtonMinimum {.
    cdecl, constructor, importcpp: "math_NewtonMinimum(@)", header: "math_NewtonMinimum.hxx".}
proc perform*(this: var MathNewtonMinimum;
             theFunction: var MathMultipleVarFunctionWithHessian;
             theStartingPoint: MathVector) {.cdecl, importcpp: "Perform",
    header: "math_NewtonMinimum.hxx".}
proc destroyMathNewtonMinimum*(this: var MathNewtonMinimum) {.cdecl,
    importcpp: "#.~math_NewtonMinimum()", header: "math_NewtonMinimum.hxx".}
proc isConverged*(this: MathNewtonMinimum): bool {.noSideEffect, cdecl,
    importcpp: "IsConverged", header: "math_NewtonMinimum.hxx".}
proc isDone*(this: MathNewtonMinimum): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_NewtonMinimum.hxx".}
proc isConvex*(this: MathNewtonMinimum): bool {.noSideEffect, cdecl,
    importcpp: "IsConvex", header: "math_NewtonMinimum.hxx".}
proc location*(this: MathNewtonMinimum): MathVector {.noSideEffect, cdecl,
    importcpp: "Location", header: "math_NewtonMinimum.hxx".}
proc location*(this: MathNewtonMinimum; loc: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Location", header: "math_NewtonMinimum.hxx".}
proc setBoundary*(this: var MathNewtonMinimum; theLeftBorder: MathVector;
                 theRightBorder: MathVector) {.cdecl, importcpp: "SetBoundary",
    header: "math_NewtonMinimum.hxx".}
proc minimum*(this: MathNewtonMinimum): cfloat {.noSideEffect, cdecl,
    importcpp: "Minimum", header: "math_NewtonMinimum.hxx".}
proc gradient*(this: MathNewtonMinimum): MathVector {.noSideEffect, cdecl,
    importcpp: "Gradient", header: "math_NewtonMinimum.hxx".}
proc gradient*(this: MathNewtonMinimum; grad: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Gradient", header: "math_NewtonMinimum.hxx".}
proc nbIterations*(this: MathNewtonMinimum): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", header: "math_NewtonMinimum.hxx".}
proc getStatus*(this: MathNewtonMinimum): MathStatus {.noSideEffect, cdecl,
    importcpp: "GetStatus", header: "math_NewtonMinimum.hxx".}
proc dump*(this: MathNewtonMinimum; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_NewtonMinimum.hxx".}
