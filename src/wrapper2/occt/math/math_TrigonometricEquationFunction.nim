##  Created on: 1991-05-13
##  Created by: Laurent Painnot
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

import
  math_FunctionWithDerivative

## ! This is function, which corresponds trigonometric equation
## ! a*Cos(x)*Cos(x) + 2*b*Cos(x)*Sin(x) + c*Cos(x) + d*Sin(x) + e = 0
## ! See class math_TrigonometricFunctionRoots

type
  math_TrigonometricEquationFunction* {.importcpp: "math_TrigonometricEquationFunction", header: "math_TrigonometricEquationFunction.hxx",
                                       bycopy.} = object of math_FunctionWithDerivative


proc constructmath_TrigonometricEquationFunction*(A: Standard_Real;
    B: Standard_Real; C: Standard_Real; D: Standard_Real; E: Standard_Real): math_TrigonometricEquationFunction {.
    constructor, importcpp: "math_TrigonometricEquationFunction(@)",
    header: "math_TrigonometricEquationFunction.hxx".}
proc Value*(this: var math_TrigonometricEquationFunction; X: Standard_Real;
           F: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "math_TrigonometricEquationFunction.hxx".}
proc Derivative*(this: var math_TrigonometricEquationFunction; X: Standard_Real;
                D: var Standard_Real): Standard_Boolean {.importcpp: "Derivative",
    header: "math_TrigonometricEquationFunction.hxx".}
proc Values*(this: var math_TrigonometricEquationFunction; X: Standard_Real;
            F: var Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Values", header: "math_TrigonometricEquationFunction.hxx".}