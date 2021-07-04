##  Created on: 2013-12-20
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
  BVH_Box

## ! Set of abstract entities (bounded by BVH boxes). This is
## ! the minimal geometry interface needed to construct BVH.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_Set*[T; N: static[cint]] {.importcpp: "BVH_Set<\'0,\'1>",
                              header: "BVH_Set.hxx", bycopy.} = object ## ! Creates new abstract set of objects.
                                                                  ## ! Returns total number of objects.

  BVH_SetBVH_BoxNt* = BVH_Box[T, N]

proc constructBVH_Set*[T; N: static[cint]](): BVH_Set[T, N] {.constructor,
    importcpp: "BVH_Set<\'*0,\'*1>(@)", header: "BVH_Set.hxx".}
proc destroyBVH_Set*[T; N: static[cint]](this: var BVH_Set[T, N]) {.
    importcpp: "#.~BVH_Set()", header: "BVH_Set.hxx".}
proc Box*[T; N: static[cint]](this: BVH_Set[T, N]): BVH_Box[T, N] {.noSideEffect,
    importcpp: "Box", header: "BVH_Set.hxx".}
proc Size*[T; N: static[cint]](this: BVH_Set[T, N]): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "BVH_Set.hxx".}
proc Box*[T; N: static[cint]](this: BVH_Set[T, N]; theIndex: Standard_Integer): BVH_Box[
    T, N] {.noSideEffect, importcpp: "Box", header: "BVH_Set.hxx".}
proc Center*[T; N: static[cint]](this: BVH_Set[T, N]; theIndex: Standard_Integer;
                              theAxis: Standard_Integer): T {.noSideEffect,
    importcpp: "Center", header: "BVH_Set.hxx".}
proc Swap*[T; N: static[cint]](this: var BVH_Set[T, N]; theIndex1: Standard_Integer;
                            theIndex2: Standard_Integer) {.importcpp: "Swap",
    header: "BVH_Set.hxx".}