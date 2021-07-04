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
  ../Standard/Standard_Handle, math_MultipleVarFunction,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, math_Vector,
  ../Standard/Standard_Real

## ! The abstract class MultipleVarFunctionWithGradient
## ! describes the virtual functions associated with a multiple variable function.

type
  math_MultipleVarFunctionWithGradient* {.
      importcpp: "math_MultipleVarFunctionWithGradient",
      header: "math_MultipleVarFunctionWithGradient.hxx", bycopy.} = object of math_MultipleVarFunction ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## number
                                                                                                 ## of
                                                                                                 ## variables
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## function.


proc NbVariables*(this: math_MultipleVarFunctionWithGradient): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "math_MultipleVarFunctionWithGradient.hxx".}
proc Value*(this: var math_MultipleVarFunctionWithGradient; X: math_Vector;
           F: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "math_MultipleVarFunctionWithGradient.hxx".}
proc Gradient*(this: var math_MultipleVarFunctionWithGradient; X: math_Vector;
              G: var math_Vector): Standard_Boolean {.importcpp: "Gradient",
    header: "math_MultipleVarFunctionWithGradient.hxx".}
proc Values*(this: var math_MultipleVarFunctionWithGradient; X: math_Vector;
            F: var Standard_Real; G: var math_Vector): Standard_Boolean {.
    importcpp: "Values", header: "math_MultipleVarFunctionWithGradient.hxx".}