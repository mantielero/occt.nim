##  Created on: 1992-02-07
##  Created by: Laurent PAINNOT
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

type
  math_DoubleTab* {.importcpp: "math_DoubleTab", header: "math_DoubleTab.hxx", bycopy.} = object


proc constructmath_DoubleTab*(LowerRow: Standard_Integer;
                             UpperRow: Standard_Integer;
                             LowerCol: Standard_Integer;
                             UpperCol: Standard_Integer): math_DoubleTab {.
    constructor, importcpp: "math_DoubleTab(@)", header: "math_DoubleTab.hxx".}
proc constructmath_DoubleTab*(Tab: Standard_Address; LowerRow: Standard_Integer;
                             UpperRow: Standard_Integer;
                             LowerCol: Standard_Integer;
                             UpperCol: Standard_Integer): math_DoubleTab {.
    constructor, importcpp: "math_DoubleTab(@)", header: "math_DoubleTab.hxx".}
proc Init*(this: var math_DoubleTab; InitValue: Standard_Real) {.importcpp: "Init",
    header: "math_DoubleTab.hxx".}
proc constructmath_DoubleTab*(Other: math_DoubleTab): math_DoubleTab {.constructor,
    importcpp: "math_DoubleTab(@)", header: "math_DoubleTab.hxx".}
proc Copy*(this: math_DoubleTab; Other: var math_DoubleTab) {.noSideEffect,
    importcpp: "Copy", header: "math_DoubleTab.hxx".}
proc SetLowerRow*(this: var math_DoubleTab; LowerRow: Standard_Integer) {.
    importcpp: "SetLowerRow", header: "math_DoubleTab.hxx".}
proc SetLowerCol*(this: var math_DoubleTab; LowerCol: Standard_Integer) {.
    importcpp: "SetLowerCol", header: "math_DoubleTab.hxx".}
proc Value*(this: math_DoubleTab; RowIndex: Standard_Integer;
           ColIndex: Standard_Integer): var Standard_Real {.noSideEffect,
    importcpp: "Value", header: "math_DoubleTab.hxx".}
proc `()`*(this: math_DoubleTab; RowIndex: Standard_Integer;
          ColIndex: Standard_Integer): var Standard_Real {.noSideEffect,
    importcpp: "#(@)", header: "math_DoubleTab.hxx".}
proc Free*(this: var math_DoubleTab) {.importcpp: "Free", header: "math_DoubleTab.hxx".}
proc destroymath_DoubleTab*(this: var math_DoubleTab) {.
    importcpp: "#.~math_DoubleTab()", header: "math_DoubleTab.hxx".}