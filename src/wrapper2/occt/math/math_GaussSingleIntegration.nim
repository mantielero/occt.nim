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
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Function"
type
  math_GaussSingleIntegration* {.importcpp: "math_GaussSingleIntegration",
                                header: "math_GaussSingleIntegration.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## perfoms
                                                                                        ## actual
                                                                                        ## computation


proc constructmath_GaussSingleIntegration*(): math_GaussSingleIntegration {.
    constructor, importcpp: "math_GaussSingleIntegration(@)",
    header: "math_GaussSingleIntegration.hxx".}
proc constructmath_GaussSingleIntegration*(F: var math_Function;
    Lower: Standard_Real; Upper: Standard_Real; Order: Standard_Integer): math_GaussSingleIntegration {.
    constructor, importcpp: "math_GaussSingleIntegration(@)",
    header: "math_GaussSingleIntegration.hxx".}
proc constructmath_GaussSingleIntegration*(F: var math_Function;
    Lower: Standard_Real; Upper: Standard_Real; Order: Standard_Integer;
    Tol: Standard_Real): math_GaussSingleIntegration {.constructor,
    importcpp: "math_GaussSingleIntegration(@)",
    header: "math_GaussSingleIntegration.hxx".}
proc IsDone*(this: math_GaussSingleIntegration): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_GaussSingleIntegration.hxx".}
proc Value*(this: math_GaussSingleIntegration): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_GaussSingleIntegration.hxx".}
proc Dump*(this: math_GaussSingleIntegration; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_GaussSingleIntegration.hxx".}