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

## ! BiInt is a set of two integers.

type
  MAT2dBiInt* {.importcpp: "MAT2d_BiInt", header: "MAT2d_BiInt.hxx", bycopy.} = object


proc constructMAT2dBiInt*(i1: int; i2: int): MAT2dBiInt {.constructor,
    importcpp: "MAT2d_BiInt(@)", header: "MAT2d_BiInt.hxx".}
proc firstIndex*(this: MAT2dBiInt): int {.noSideEffect, importcpp: "FirstIndex",
                                      header: "MAT2d_BiInt.hxx".}
proc secondIndex*(this: MAT2dBiInt): int {.noSideEffect, importcpp: "SecondIndex",
                                       header: "MAT2d_BiInt.hxx".}
proc firstIndex*(this: var MAT2dBiInt; i1: int) {.importcpp: "FirstIndex",
    header: "MAT2d_BiInt.hxx".}
proc secondIndex*(this: var MAT2dBiInt; i2: int) {.importcpp: "SecondIndex",
    header: "MAT2d_BiInt.hxx".}
proc isEqual*(this: MAT2dBiInt; b: MAT2dBiInt): bool {.noSideEffect,
    importcpp: "IsEqual", header: "MAT2d_BiInt.hxx".}
proc `==`*(this: MAT2dBiInt; b: MAT2dBiInt): bool {.noSideEffect,
    importcpp: "(# == #)", header: "MAT2d_BiInt.hxx".}
