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

## ! This abstract class describes the virtual functions associated with
## ! a function of a single variable for which the first derivative is
## ! available.

type
  MathFunctionWithDerivative* {.importcpp: "math_FunctionWithDerivative",
                               header: "math_FunctionWithDerivative.hxx", bycopy.} = object of MathFunction ##
                                                                                                     ## !
                                                                                                     ## Computes
                                                                                                     ## the
                                                                                                     ## value
                                                                                                     ## <F>of
                                                                                                     ## the
                                                                                                     ## function
                                                                                                     ## for
                                                                                                     ## the
                                                                                                     ## variable
                                                                                                     ## <X>.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## True
                                                                                                     ## if
                                                                                                     ## the
                                                                                                     ## calculation
                                                                                                     ## were
                                                                                                     ## successfully
                                                                                                     ## done,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## False
                                                                                                     ## otherwise.


proc value*(this: var MathFunctionWithDerivative; x: float; f: var float): bool {.
    importcpp: "Value", header: "math_FunctionWithDerivative.hxx".}
proc derivative*(this: var MathFunctionWithDerivative; x: float; d: var float): bool {.
    importcpp: "Derivative", header: "math_FunctionWithDerivative.hxx".}
proc values*(this: var MathFunctionWithDerivative; x: float; f: var float; d: var float): bool {.
    importcpp: "Values", header: "math_FunctionWithDerivative.hxx".}
proc destroyMathFunctionWithDerivative*(this: var MathFunctionWithDerivative) {.
    importcpp: "#.~math_FunctionWithDerivative()",
    header: "math_FunctionWithDerivative.hxx".}
