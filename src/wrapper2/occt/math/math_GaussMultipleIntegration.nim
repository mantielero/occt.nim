##  Created on: 1991-05-14
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, math_Vector, math_IntegerVector,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_MultipleVarFunction"
type
  math_GaussMultipleIntegration* {.importcpp: "math_GaussMultipleIntegration",
                                  header: "math_GaussMultipleIntegration.hxx",
                                  bycopy.} = object ## ! The Gauss-Legendre integration with Order = points of
                                                 ## ! integration for each unknow, is done on the function F
                                                 ## ! between the bounds Lower and Upper.


proc constructmath_GaussMultipleIntegration*(F: var math_MultipleVarFunction;
    Lower: math_Vector; Upper: math_Vector; Order: math_IntegerVector): math_GaussMultipleIntegration {.
    constructor, importcpp: "math_GaussMultipleIntegration(@)",
    header: "math_GaussMultipleIntegration.hxx".}
proc IsDone*(this: math_GaussMultipleIntegration): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_GaussMultipleIntegration.hxx".}
proc Value*(this: math_GaussMultipleIntegration): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_GaussMultipleIntegration.hxx".}
proc Dump*(this: math_GaussMultipleIntegration; o: var Standard_OStream) {.
    noSideEffect, importcpp: "Dump", header: "math_GaussMultipleIntegration.hxx".}