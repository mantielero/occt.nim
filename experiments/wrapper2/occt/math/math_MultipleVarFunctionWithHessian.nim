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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, math_MultipleVarFunctionWithGradient,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, math_Vector,
  ../Standard/Standard_Real

discard "forward decl of math_Matrix"
type
  math_MultipleVarFunctionWithHessian* {.importcpp: "math_MultipleVarFunctionWithHessian", header: "math_MultipleVarFunctionWithHessian.hxx",
                                        bycopy.} = object of math_MultipleVarFunctionWithGradient ##
                                                                                             ## !
                                                                                             ## returns
                                                                                             ## the
                                                                                             ## number
                                                                                             ## of
                                                                                             ## variables
                                                                                             ## of
                                                                                             ## the
                                                                                             ## function.


proc NbVariables*(this: math_MultipleVarFunctionWithHessian): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "math_MultipleVarFunctionWithHessian.hxx".}
proc Value*(this: var math_MultipleVarFunctionWithHessian; X: math_Vector;
           F: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "math_MultipleVarFunctionWithHessian.hxx".}
proc Gradient*(this: var math_MultipleVarFunctionWithHessian; X: math_Vector;
              G: var math_Vector): Standard_Boolean {.importcpp: "Gradient",
    header: "math_MultipleVarFunctionWithHessian.hxx".}
proc Values*(this: var math_MultipleVarFunctionWithHessian; X: math_Vector;
            F: var Standard_Real; G: var math_Vector): Standard_Boolean {.
    importcpp: "Values", header: "math_MultipleVarFunctionWithHessian.hxx".}
proc Values*(this: var math_MultipleVarFunctionWithHessian; X: math_Vector;
            F: var Standard_Real; G: var math_Vector; H: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "math_MultipleVarFunctionWithHessian.hxx".}