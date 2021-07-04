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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Function"
type
  math_BracketMinimum* {.importcpp: "math_BracketMinimum",
                        header: "math_BracketMinimum.hxx", bycopy.} = object ## !
                                                                        ## Constructor
                                                                        ## preparing A and B
                                                                        ## parameters only. It does not perform the job.
                                                                        ## ! Limit the given value to become within the range [myLeft,
                                                                        ## myRight].


proc constructmath_BracketMinimum*(A: Standard_Real; B: Standard_Real): math_BracketMinimum {.
    constructor, importcpp: "math_BracketMinimum(@)",
    header: "math_BracketMinimum.hxx".}
proc constructmath_BracketMinimum*(F: var math_Function; A: Standard_Real;
                                  B: Standard_Real): math_BracketMinimum {.
    constructor, importcpp: "math_BracketMinimum(@)",
    header: "math_BracketMinimum.hxx".}
proc constructmath_BracketMinimum*(F: var math_Function; A: Standard_Real;
                                  B: Standard_Real; FA: Standard_Real): math_BracketMinimum {.
    constructor, importcpp: "math_BracketMinimum(@)",
    header: "math_BracketMinimum.hxx".}
proc constructmath_BracketMinimum*(F: var math_Function; A: Standard_Real;
                                  B: Standard_Real; FA: Standard_Real;
                                  FB: Standard_Real): math_BracketMinimum {.
    constructor, importcpp: "math_BracketMinimum(@)",
    header: "math_BracketMinimum.hxx".}
proc SetLimits*(this: var math_BracketMinimum; theLeft: Standard_Real;
               theRight: Standard_Real) {.importcpp: "SetLimits",
                                        header: "math_BracketMinimum.hxx".}
proc SetFA*(this: var math_BracketMinimum; theValue: Standard_Real) {.
    importcpp: "SetFA", header: "math_BracketMinimum.hxx".}
proc SetFB*(this: var math_BracketMinimum; theValue: Standard_Real) {.
    importcpp: "SetFB", header: "math_BracketMinimum.hxx".}
proc Perform*(this: var math_BracketMinimum; F: var math_Function) {.
    importcpp: "Perform", header: "math_BracketMinimum.hxx".}
proc IsDone*(this: math_BracketMinimum): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_BracketMinimum.hxx".}
proc Values*(this: math_BracketMinimum; A: var Standard_Real; B: var Standard_Real;
            C: var Standard_Real) {.noSideEffect, importcpp: "Values",
                                 header: "math_BracketMinimum.hxx".}
proc FunctionValues*(this: math_BracketMinimum; FA: var Standard_Real;
                    FB: var Standard_Real; FC: var Standard_Real) {.noSideEffect,
    importcpp: "FunctionValues", header: "math_BracketMinimum.hxx".}
proc Dump*(this: math_BracketMinimum; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_BracketMinimum.hxx".}