import math_types

##  Created on: 1991-05-14
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_MultipleVarFunctionWithGradient"


proc newMathBFGS*(nbVariables: cint; tolerance: cfloat = 1.0e-8;
                 nbIterations: cint = 200; zeps: cfloat = 1.0e-12): MathBFGS {.cdecl,
    constructor, importcpp: "math_BFGS(@)", header: "math_BFGS.hxx".}
proc destroyMathBFGS*(this: var MathBFGS) {.cdecl, importcpp: "#.~math_BFGS()",
                                        header: "math_BFGS.hxx".}
proc setBoundary*(this: var MathBFGS; theLeftBorder: MathVector;
                 theRightBorder: MathVector) {.cdecl, importcpp: "SetBoundary",
    header: "math_BFGS.hxx".}
proc perform*(this: var MathBFGS; f: var MathMultipleVarFunctionWithGradient;
             startingPoint: MathVector) {.cdecl, importcpp: "Perform", header: "math_BFGS.hxx".}
proc isSolutionReached*(this: MathBFGS; f: var MathMultipleVarFunctionWithGradient): bool {.
    noSideEffect, cdecl, importcpp: "IsSolutionReached", header: "math_BFGS.hxx".}
proc isDone*(this: MathBFGS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                 header: "math_BFGS.hxx".}
proc location*(this: MathBFGS): MathVector {.noSideEffect, cdecl,
    importcpp: "Location", header: "math_BFGS.hxx".}
proc location*(this: MathBFGS; loc: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Location", header: "math_BFGS.hxx".}
proc minimum*(this: MathBFGS): cfloat {.noSideEffect, cdecl, importcpp: "Minimum",
                                    header: "math_BFGS.hxx".}
proc gradient*(this: MathBFGS): MathVector {.noSideEffect, cdecl,
    importcpp: "Gradient", header: "math_BFGS.hxx".}
proc gradient*(this: MathBFGS; grad: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Gradient", header: "math_BFGS.hxx".}
proc nbIterations*(this: MathBFGS): cint {.noSideEffect, cdecl,
                                       importcpp: "NbIterations", header: "math_BFGS.hxx".}
proc dump*(this: MathBFGS; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_BFGS.hxx".}
