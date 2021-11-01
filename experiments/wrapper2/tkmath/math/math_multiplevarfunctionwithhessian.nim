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

discard "forward decl of math_Matrix"
type
  MathMultipleVarFunctionWithHessian* {.importcpp: "math_MultipleVarFunctionWithHessian", header: "math_MultipleVarFunctionWithHessian.hxx",
                                       bycopy.} = object of MathMultipleVarFunctionWithGradient ##
                                                                                           ## !
                                                                                           ## returns
                                                                                           ## the
                                                                                           ## number
                                                                                           ## of
                                                                                           ## variables
                                                                                           ## of
                                                                                           ## the
                                                                                           ## function.


proc nbVariables*(this: MathMultipleVarFunctionWithHessian): cint {.noSideEffect,
    cdecl, importcpp: "NbVariables", dynlib: tkmath.}
proc value*(this: var MathMultipleVarFunctionWithHessian; x: MathVector; f: var cfloat): bool {.
    cdecl, importcpp: "Value", dynlib: tkmath.}
proc gradient*(this: var MathMultipleVarFunctionWithHessian; x: MathVector;
              g: var MathVector): bool {.cdecl, importcpp: "Gradient", dynlib: tkmath.}
proc values*(this: var MathMultipleVarFunctionWithHessian; x: MathVector;
            f: var cfloat; g: var MathVector): bool {.cdecl, importcpp: "Values",
    dynlib: tkmath.}
proc values*(this: var MathMultipleVarFunctionWithHessian; x: MathVector;
            f: var cfloat; g: var MathVector; h: var MathMatrix): bool {.cdecl,
    importcpp: "Values", dynlib: tkmath.}