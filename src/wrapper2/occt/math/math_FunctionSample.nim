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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
type
  math_FunctionSample* {.importcpp: "math_FunctionSample",
                        header: "math_FunctionSample.hxx", bycopy.} = object


proc constructmath_FunctionSample*(A: Standard_Real; B: Standard_Real;
                                  N: Standard_Integer): math_FunctionSample {.
    constructor, importcpp: "math_FunctionSample(@)",
    header: "math_FunctionSample.hxx".}
proc Bounds*(this: math_FunctionSample; A: var Standard_Real; B: var Standard_Real) {.
    noSideEffect, importcpp: "Bounds", header: "math_FunctionSample.hxx".}
proc NbPoints*(this: math_FunctionSample): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "math_FunctionSample.hxx".}
proc GetParameter*(this: math_FunctionSample; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetParameter", header: "math_FunctionSample.hxx".}