##  Created on: 2005-12-15
##  Created by: Julia GERASIMOVA
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray2OfReal, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real, math_Vector

discard "forward decl of StdFail_NotDone"
type
  math_EigenValuesSearcher* {.importcpp: "math_EigenValuesSearcher",
                             header: "math_EigenValuesSearcher.hxx", bycopy.} = object


proc constructmath_EigenValuesSearcher*(Diagonal: TColStd_Array1OfReal;
                                       Subdiagonal: TColStd_Array1OfReal): math_EigenValuesSearcher {.
    constructor, importcpp: "math_EigenValuesSearcher(@)",
    header: "math_EigenValuesSearcher.hxx".}
proc IsDone*(this: math_EigenValuesSearcher): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_EigenValuesSearcher.hxx".}
proc Dimension*(this: math_EigenValuesSearcher): Standard_Integer {.noSideEffect,
    importcpp: "Dimension", header: "math_EigenValuesSearcher.hxx".}
proc EigenValue*(this: math_EigenValuesSearcher; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "EigenValue", header: "math_EigenValuesSearcher.hxx".}
proc EigenVector*(this: math_EigenValuesSearcher; Index: Standard_Integer): math_Vector {.
    noSideEffect, importcpp: "EigenVector", header: "math_EigenValuesSearcher.hxx".}