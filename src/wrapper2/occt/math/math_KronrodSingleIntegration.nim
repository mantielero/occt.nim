##  Created on: 2005-12-08
##  Created by: Sergey KHROMOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Real, ../Standard/Standard_Integer, math_Vector

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Function"
type
  math_KronrodSingleIntegration* {.importcpp: "math_KronrodSingleIntegration",
                                  header: "math_KronrodSingleIntegration.hxx",
                                  bycopy.} = object ## ! An empty constructor.


proc constructmath_KronrodSingleIntegration*(): math_KronrodSingleIntegration {.
    constructor, importcpp: "math_KronrodSingleIntegration(@)",
    header: "math_KronrodSingleIntegration.hxx".}
proc constructmath_KronrodSingleIntegration*(theFunction: var math_Function;
    theLower: Standard_Real; theUpper: Standard_Real; theNbPnts: Standard_Integer): math_KronrodSingleIntegration {.
    constructor, importcpp: "math_KronrodSingleIntegration(@)",
    header: "math_KronrodSingleIntegration.hxx".}
proc constructmath_KronrodSingleIntegration*(theFunction: var math_Function;
    theLower: Standard_Real; theUpper: Standard_Real; theNbPnts: Standard_Integer;
    theTolerance: Standard_Real; theMaxNbIter: Standard_Integer): math_KronrodSingleIntegration {.
    constructor, importcpp: "math_KronrodSingleIntegration(@)",
    header: "math_KronrodSingleIntegration.hxx".}
proc Perform*(this: var math_KronrodSingleIntegration;
             theFunction: var math_Function; theLower: Standard_Real;
             theUpper: Standard_Real; theNbPnts: Standard_Integer) {.
    importcpp: "Perform", header: "math_KronrodSingleIntegration.hxx".}
proc Perform*(this: var math_KronrodSingleIntegration;
             theFunction: var math_Function; theLower: Standard_Real;
             theUpper: Standard_Real; theNbPnts: Standard_Integer;
             theTolerance: Standard_Real; theMaxNbIter: Standard_Integer) {.
    importcpp: "Perform", header: "math_KronrodSingleIntegration.hxx".}
proc IsDone*(this: math_KronrodSingleIntegration): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_KronrodSingleIntegration.hxx".}
proc Value*(this: math_KronrodSingleIntegration): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_KronrodSingleIntegration.hxx".}
proc ErrorReached*(this: math_KronrodSingleIntegration): Standard_Real {.
    noSideEffect, importcpp: "ErrorReached",
    header: "math_KronrodSingleIntegration.hxx".}
proc AbsolutError*(this: math_KronrodSingleIntegration): Standard_Real {.
    noSideEffect, importcpp: "AbsolutError",
    header: "math_KronrodSingleIntegration.hxx".}
proc OrderReached*(this: math_KronrodSingleIntegration): Standard_Integer {.
    noSideEffect, importcpp: "OrderReached",
    header: "math_KronrodSingleIntegration.hxx".}
proc NbIterReached*(this: math_KronrodSingleIntegration): Standard_Integer {.
    noSideEffect, importcpp: "NbIterReached",
    header: "math_KronrodSingleIntegration.hxx".}
proc GKRule*(theFunction: var math_Function; theLower: Standard_Real;
            theUpper: Standard_Real; theGaussP: math_Vector; theGaussW: math_Vector;
            theKronrodP: math_Vector; theKronrodW: math_Vector;
            theValue: var Standard_Real; theError: var Standard_Real): Standard_Boolean {.
    importcpp: "math_KronrodSingleIntegration::GKRule(@)",
    header: "math_KronrodSingleIntegration.hxx".}