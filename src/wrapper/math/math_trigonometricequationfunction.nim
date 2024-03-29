import math_types
#import ../standard/standard_types    
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

## ! This is function, which corresponds trigonometric equation
## ! a*Cos(x)*Cos(x) + 2*b*Cos(x)*Sin(x) + c*Cos(x) + d*Sin(x) + e = 0
## ! See class math_TrigonometricFunctionRoots



proc newMathTrigonometricEquationFunction*(a: cfloat; b: cfloat; c: cfloat; d: cfloat;
    e: cfloat): MathTrigonometricEquationFunction {.cdecl, constructor,
    importcpp: "math_TrigonometricEquationFunction(@)", header: "math_TrigonometricEquationFunction.hxx".}
proc value*(this: var MathTrigonometricEquationFunction; x: cfloat; f: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "math_TrigonometricEquationFunction.hxx".}
proc derivative*(this: var MathTrigonometricEquationFunction; x: cfloat; d: var cfloat): bool {.
    cdecl, importcpp: "Derivative", header: "math_TrigonometricEquationFunction.hxx".}
proc values*(this: var MathTrigonometricEquationFunction; x: cfloat; f: var cfloat;
            d: var cfloat): bool {.cdecl, importcpp: "Values", header: "math_TrigonometricEquationFunction.hxx".}
