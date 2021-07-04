##  Created on: 1996-01-22
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
  ../Standard/Standard_Handle, math_Vector, ../Standard/Standard_Boolean,
  math_IntegerVector, ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of math_FunctionSet"
type
  math_GaussSetIntegration* {.importcpp: "math_GaussSetIntegration",
                             header: "math_GaussSetIntegration.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## The
                                                                                  ## Gauss-Legendre
                                                                                  ## integration
                                                                                  ## with
                                                                                  ## Order
                                                                                  ## =
                                                                                  ## points
                                                                                  ## of
                                                                                  ##
                                                                                  ## !
                                                                                  ## integration
                                                                                  ## for
                                                                                  ## each
                                                                                  ## unknow,
                                                                                  ## is
                                                                                  ## done
                                                                                  ## on
                                                                                  ## the
                                                                                  ## function
                                                                                  ## F
                                                                                  ##
                                                                                  ## !
                                                                                  ## between
                                                                                  ## the
                                                                                  ## bounds
                                                                                  ## Lower
                                                                                  ## and
                                                                                  ## Upper.


proc constructmath_GaussSetIntegration*(F: var math_FunctionSet; Lower: math_Vector;
                                       Upper: math_Vector;
                                       Order: math_IntegerVector): math_GaussSetIntegration {.
    constructor, importcpp: "math_GaussSetIntegration(@)",
    header: "math_GaussSetIntegration.hxx".}
proc IsDone*(this: math_GaussSetIntegration): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_GaussSetIntegration.hxx".}
proc Value*(this: math_GaussSetIntegration): math_Vector {.noSideEffect,
    importcpp: "Value", header: "math_GaussSetIntegration.hxx".}
proc Dump*(this: math_GaussSetIntegration; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_GaussSetIntegration.hxx".}