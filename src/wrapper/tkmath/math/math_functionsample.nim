##  Created on: 1991-07-17
##  Created by: Isabelle GRIGNON
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

discard "forward decl of Standard_OutOfRange"
type
  MathFunctionSample* {.importcpp: "math_FunctionSample",
                       header: "math_FunctionSample.hxx", bycopy.} = object


proc newMathFunctionSample*(a: cfloat; b: cfloat; n: cint): MathFunctionSample {.cdecl,
    constructor, importcpp: "math_FunctionSample(@)", dynlib: tkmath.}
proc bounds*(this: MathFunctionSample; a: var cfloat; b: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Bounds", dynlib: tkmath.}
proc nbPoints*(this: MathFunctionSample): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints", dynlib: tkmath.}
proc getParameter*(this: MathFunctionSample; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "GetParameter", dynlib: tkmath.}