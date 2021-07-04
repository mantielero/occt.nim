##  Created on: 1993-11-19
##  Created by: Yves FRICAUD
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

## ! BiInt is a set of two integers.

type
  MAT2d_BiInt* {.importcpp: "MAT2d_BiInt", header: "MAT2d_BiInt.hxx", bycopy.} = object


proc constructMAT2d_BiInt*(I1: Standard_Integer; I2: Standard_Integer): MAT2d_BiInt {.
    constructor, importcpp: "MAT2d_BiInt(@)", header: "MAT2d_BiInt.hxx".}
proc FirstIndex*(this: MAT2d_BiInt): Standard_Integer {.noSideEffect,
    importcpp: "FirstIndex", header: "MAT2d_BiInt.hxx".}
proc SecondIndex*(this: MAT2d_BiInt): Standard_Integer {.noSideEffect,
    importcpp: "SecondIndex", header: "MAT2d_BiInt.hxx".}
proc FirstIndex*(this: var MAT2d_BiInt; I1: Standard_Integer) {.
    importcpp: "FirstIndex", header: "MAT2d_BiInt.hxx".}
proc SecondIndex*(this: var MAT2d_BiInt; I2: Standard_Integer) {.
    importcpp: "SecondIndex", header: "MAT2d_BiInt.hxx".}
proc IsEqual*(this: MAT2d_BiInt; B: MAT2d_BiInt): Standard_Boolean {.noSideEffect,
    importcpp: "IsEqual", header: "MAT2d_BiInt.hxx".}
proc `==`*(this: MAT2d_BiInt; B: MAT2d_BiInt): Standard_Boolean {.noSideEffect,
    importcpp: "(# == #)", header: "MAT2d_BiInt.hxx".}