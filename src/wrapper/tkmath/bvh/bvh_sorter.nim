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

## ! Tool object to sort abstract primitive set.

type
  BVH_Sorter*[T; N: static[cint]] {.importcpp: "BVH_Sorter<\'0,\'1>",
                                 header: "BVH_Sorter.hxx", bycopy.} = object of RootObj## ! Performs default
                                                                        ## initialization.


proc newBVH_Sorter*[T; N: static[cint]](): BVH_Sorter[T, N] {.cdecl, constructor,
    importcpp: "BVH_Sorter<\'*0,\'*1>(@)", header: "BVH_Sorter.hxx".}
proc destroyBVH_Sorter*[T; N: static[cint]](this: var BVH_Sorter[T, N]) {.cdecl,
    importcpp: "#.~BVH_Sorter()", header: "BVH_Sorter.hxx".}
proc perform*[T; N: static[cint]](this: var BVH_Sorter[T, N]; theSet: ptr BVH_Set[T, N]) {.
    cdecl, importcpp: "Perform", header: "BVH_Sorter.hxx".}
proc perform*[T; N: static[cint]](this: var BVH_Sorter[T, N];
                               theSet: ptr BVH_Set[T, N]; theStart: cint;
                               theFinal: cint) {.cdecl, importcpp: "Perform",
    header: "BVH_Sorter.hxx".}
proc isParallel*[T; N: static[cint]](this: BVH_Sorter[T, N]): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", header: "BVH_Sorter.hxx".}
proc setParallel*[T; N: static[cint]](this: var BVH_Sorter[T, N]; isParallel: bool) {.
    cdecl, importcpp: "SetParallel", header: "BVH_Sorter.hxx".}