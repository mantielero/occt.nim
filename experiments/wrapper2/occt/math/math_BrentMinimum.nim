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
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Function"
type
  math_BrentMinimum* {.importcpp: "math_BrentMinimum",
                      header: "math_BrentMinimum.hxx", bycopy.} = object ## ! This constructor should be used in a sub-class to initialize
                                                                    ## ! correctly all the fields of this class.


proc constructmath_BrentMinimum*(TolX: Standard_Real;
                                NbIterations: Standard_Integer = 100;
                                ZEPS: Standard_Real = 1.0e-12): math_BrentMinimum {.
    constructor, importcpp: "math_BrentMinimum(@)", header: "math_BrentMinimum.hxx".}
proc constructmath_BrentMinimum*(TolX: Standard_Real; Fbx: Standard_Real;
                                NbIterations: Standard_Integer = 100;
                                ZEPS: Standard_Real = 1.0e-12): math_BrentMinimum {.
    constructor, importcpp: "math_BrentMinimum(@)", header: "math_BrentMinimum.hxx".}
proc destroymath_BrentMinimum*(this: var math_BrentMinimum) {.
    importcpp: "#.~math_BrentMinimum()", header: "math_BrentMinimum.hxx".}
proc Perform*(this: var math_BrentMinimum; F: var math_Function; Ax: Standard_Real;
             Bx: Standard_Real; Cx: Standard_Real) {.importcpp: "Perform",
    header: "math_BrentMinimum.hxx".}
proc IsSolutionReached*(this: var math_BrentMinimum; theFunction: var math_Function): Standard_Boolean {.
    importcpp: "IsSolutionReached", header: "math_BrentMinimum.hxx".}
proc IsDone*(this: math_BrentMinimum): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_BrentMinimum.hxx".}
proc Location*(this: math_BrentMinimum): Standard_Real {.noSideEffect,
    importcpp: "Location", header: "math_BrentMinimum.hxx".}
proc Minimum*(this: math_BrentMinimum): Standard_Real {.noSideEffect,
    importcpp: "Minimum", header: "math_BrentMinimum.hxx".}
proc NbIterations*(this: math_BrentMinimum): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_BrentMinimum.hxx".}
proc Dump*(this: math_BrentMinimum; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_BrentMinimum.hxx".}