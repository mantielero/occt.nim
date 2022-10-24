import math_types

##  Created on: 1991-08-22
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
discard "forward decl of Standard_ConstructionError"
discard "forward decl of math_Matrix"


proc newMathUzawa*(cont: MathMatrix; secont: MathVector; startingPoint: MathVector;
                  epsLix: cfloat = 1.0e-06; epsLic: cfloat = 1.0e-06;
                  nbIterations: cint = 500): MathUzawa {.cdecl, constructor,
    importcpp: "math_Uzawa(@)", header: "math_Uzawa.hxx".}
proc newMathUzawa*(cont: MathMatrix; secont: MathVector; startingPoint: MathVector;
                  nci: cint; nce: cint; epsLix: cfloat = 1.0e-06;
                  epsLic: cfloat = 1.0e-06; nbIterations: cint = 500): MathUzawa {.cdecl,
    constructor, importcpp: "math_Uzawa(@)", header: "math_Uzawa.hxx".}
proc isDone*(this: MathUzawa): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                  header: "math_Uzawa.hxx".}
proc value*(this: MathUzawa): MathVector {.noSideEffect, cdecl, importcpp: "Value",
                                       header: "math_Uzawa.hxx".}
proc initialError*(this: MathUzawa): MathVector {.noSideEffect, cdecl,
    importcpp: "InitialError", header: "math_Uzawa.hxx".}
proc duale*(this: MathUzawa; v: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Duale", header: "math_Uzawa.hxx".}
proc error*(this: MathUzawa): MathVector {.noSideEffect, cdecl, importcpp: "Error",
                                       header: "math_Uzawa.hxx".}
proc nbIterations*(this: MathUzawa): cint {.noSideEffect, cdecl,
                                        importcpp: "NbIterations", header: "math_Uzawa.hxx".}
proc inverseCont*(this: MathUzawa): MathMatrix {.noSideEffect, cdecl,
    importcpp: "InverseCont", header: "math_Uzawa.hxx".}
proc dump*(this: MathUzawa; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_Uzawa.hxx".}
