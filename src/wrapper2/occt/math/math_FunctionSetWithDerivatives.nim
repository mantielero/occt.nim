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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, math_FunctionSet, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, math_Vector

discard "forward decl of math_Matrix"
type
  math_FunctionSetWithDerivatives* {.importcpp: "math_FunctionSetWithDerivatives", header: "math_FunctionSetWithDerivatives.hxx",
                                    bycopy.} = object of math_FunctionSet ## ! Returns the number of variables of the function.


proc NbVariables*(this: math_FunctionSetWithDerivatives): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "math_FunctionSetWithDerivatives.hxx".}
proc NbEquations*(this: math_FunctionSetWithDerivatives): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "math_FunctionSetWithDerivatives.hxx".}
proc Value*(this: var math_FunctionSetWithDerivatives; X: math_Vector;
           F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "math_FunctionSetWithDerivatives.hxx".}
proc Derivatives*(this: var math_FunctionSetWithDerivatives; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "math_FunctionSetWithDerivatives.hxx".}
proc Values*(this: var math_FunctionSetWithDerivatives; X: math_Vector;
            F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "math_FunctionSetWithDerivatives.hxx".}