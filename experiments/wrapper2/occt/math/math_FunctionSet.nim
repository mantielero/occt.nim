##  Created on: 1991-05-13
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

## ! This abstract class describes the virtual functions associated to
## ! a set on N Functions of M independant variables.

type
  MathFunctionSet* {.importcpp: "math_FunctionSet", header: "math_FunctionSet.hxx",
                    bycopy.} = object ## ! Returns the number of variables of the function.


proc nbVariables*(this: MathFunctionSet): int {.noSideEffect,
    importcpp: "NbVariables", header: "math_FunctionSet.hxx".}
proc nbEquations*(this: MathFunctionSet): int {.noSideEffect,
    importcpp: "NbEquations", header: "math_FunctionSet.hxx".}
proc value*(this: var MathFunctionSet; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "math_FunctionSet.hxx".}
proc getStateNumber*(this: var MathFunctionSet): int {.importcpp: "GetStateNumber",
    header: "math_FunctionSet.hxx".}
proc destroyMathFunctionSet*(this: var MathFunctionSet) {.
    importcpp: "#.~math_FunctionSet()", header: "math_FunctionSet.hxx".}
