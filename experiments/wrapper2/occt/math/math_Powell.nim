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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, math_Vector,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, math_Status,
  math_Matrix, ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_MultipleVarFunction"
discard "forward decl of math_Matrix"
type
  math_Powell* {.importcpp: "math_Powell", header: "math_Powell.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Constructor.
                                                                                ## Initialize
                                                                                ## new
                                                                                ## entity.


proc constructmath_Powell*(theFunction: math_MultipleVarFunction;
                          theTolerance: Standard_Real;
                          theNbIterations: Standard_Integer = 200;
                          theZEPS: Standard_Real = 1.0e-12): math_Powell {.
    constructor, importcpp: "math_Powell(@)", header: "math_Powell.hxx".}
proc destroymath_Powell*(this: var math_Powell) {.importcpp: "#.~math_Powell()",
    header: "math_Powell.hxx".}
proc Perform*(this: var math_Powell; theFunction: var math_MultipleVarFunction;
             theStartingPoint: math_Vector; theStartingDirections: math_Matrix) {.
    importcpp: "Perform", header: "math_Powell.hxx".}
proc IsSolutionReached*(this: var math_Powell;
                       theFunction: var math_MultipleVarFunction): Standard_Boolean {.
    importcpp: "IsSolutionReached", header: "math_Powell.hxx".}
proc IsDone*(this: math_Powell): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_Powell.hxx".}
proc Location*(this: math_Powell): math_Vector {.noSideEffect, importcpp: "Location",
    header: "math_Powell.hxx".}
proc Location*(this: math_Powell; Loc: var math_Vector) {.noSideEffect,
    importcpp: "Location", header: "math_Powell.hxx".}
proc Minimum*(this: math_Powell): Standard_Real {.noSideEffect, importcpp: "Minimum",
    header: "math_Powell.hxx".}
proc NbIterations*(this: math_Powell): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_Powell.hxx".}
proc Dump*(this: math_Powell; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_Powell.hxx".}