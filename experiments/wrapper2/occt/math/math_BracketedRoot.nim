##  Created on: 1991-05-14
##  Created by: Laurent Painnot
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Function"
type
  math_BracketedRoot* {.importcpp: "math_BracketedRoot",
                       header: "math_BracketedRoot.hxx", bycopy.} = object ## ! The Brent method is used to find the root of the function F between
                                                                      ## ! the bounds Bound1 and Bound2 on the function F.
                                                                      ## ! If
                                                                      ## F(Bound1)*F(Bound2) >0 the Brent method fails.
                                                                      ## ! The tolerance required for the root is given by Tolerance.
                                                                      ## ! The solution is found when :
                                                                      ## ! abs(Xi - Xi-1) <= Tolerance;
                                                                      ## ! The maximum number of iterations allowed is given by
                                                                      ## NbIterations.


proc constructmath_BracketedRoot*(F: var math_Function; Bound1: Standard_Real;
                                 Bound2: Standard_Real; Tolerance: Standard_Real;
                                 NbIterations: Standard_Integer = 100;
                                 ZEPS: Standard_Real = 1.0e-12): math_BracketedRoot {.
    constructor, importcpp: "math_BracketedRoot(@)",
    header: "math_BracketedRoot.hxx".}
proc IsDone*(this: math_BracketedRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_BracketedRoot.hxx".}
proc Root*(this: math_BracketedRoot): Standard_Real {.noSideEffect,
    importcpp: "Root", header: "math_BracketedRoot.hxx".}
proc Value*(this: math_BracketedRoot): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_BracketedRoot.hxx".}
proc NbIterations*(this: math_BracketedRoot): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_BracketedRoot.hxx".}
proc Dump*(this: math_BracketedRoot; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_BracketedRoot.hxx".}