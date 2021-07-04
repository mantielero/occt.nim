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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, math_Vector

## ! This abstract class describes the virtual functions associated to
## ! a set on N Functions of M independant variables.

type
  math_FunctionSet* {.importcpp: "math_FunctionSet",
                     header: "math_FunctionSet.hxx", bycopy.} = object ## ! Returns the number of variables of the function.


proc NbVariables*(this: math_FunctionSet): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "math_FunctionSet.hxx".}
proc NbEquations*(this: math_FunctionSet): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "math_FunctionSet.hxx".}
proc Value*(this: var math_FunctionSet; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "math_FunctionSet.hxx".}
proc GetStateNumber*(this: var math_FunctionSet): Standard_Integer {.
    importcpp: "GetStateNumber", header: "math_FunctionSet.hxx".}
proc destroymath_FunctionSet*(this: var math_FunctionSet) {.
    importcpp: "#.~math_FunctionSet()", header: "math_FunctionSet.hxx".}