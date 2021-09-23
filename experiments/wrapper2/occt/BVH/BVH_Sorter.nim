##  Created on: 2014-01-10
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  BVH_Set

## ! Tool object to sort abstract primitive set.

type
  BVH_Sorter*[T; N: static[cint]] {.importcpp: "BVH_Sorter<\'0,\'1>",
                                 header: "BVH_Sorter.hxx", bycopy.} = object ## ! Performs default
                                                                        ## initialization.


proc constructBVH_Sorter*[T; N: static[cint]](): BVH_Sorter[T, N] {.constructor,
    importcpp: "BVH_Sorter<\'*0,\'*1>(@)", header: "BVH_Sorter.hxx".}
proc destroyBVH_Sorter*[T; N: static[cint]](this: var BVH_Sorter[T, N]) {.
    importcpp: "#.~BVH_Sorter()", header: "BVH_Sorter.hxx".}
proc Perform*[T; N: static[cint]](this: var BVH_Sorter[T, N]; theSet: ptr BVH_Set[T, N]) {.
    importcpp: "Perform", header: "BVH_Sorter.hxx".}
proc Perform*[T; N: static[cint]](this: var BVH_Sorter[T, N];
                               theSet: ptr BVH_Set[T, N];
                               theStart: Standard_Integer;
                               theFinal: Standard_Integer) {.importcpp: "Perform",
    header: "BVH_Sorter.hxx".}
proc IsParallel*[T; N: static[cint]](this: BVH_Sorter[T, N]): Standard_Boolean {.
    noSideEffect, importcpp: "IsParallel", header: "BVH_Sorter.hxx".}
proc SetParallel*[T; N: static[cint]](this: var BVH_Sorter[T, N];
                                   isParallel: Standard_Boolean) {.
    importcpp: "SetParallel", header: "BVH_Sorter.hxx".}