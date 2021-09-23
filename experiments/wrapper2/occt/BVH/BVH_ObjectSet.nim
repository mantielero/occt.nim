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
  BVH_Set, BVH_Object

## ! Array of abstract entities (bounded by BVH boxes) to built BVH.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_ObjectSet*[T; N: static[cint]] {.importcpp: "BVH_ObjectSet<\'0,\'1>",
                                    header: "BVH_ObjectSet.hxx", bycopy.} = object of BVH_Set[
      T, N]                    ## ! Type of array of geometric objects.
          ## ! Creates new set of geometric objects.
          ## ! Removes all geometric objects.
          ## ! Return total number of objects.
    ## !< Array of geometric objects

  BVH_ObjectSetBVH_ObjectList* = NCollection_Vector[handle[BVH_Object[T, N]]]

proc constructBVH_ObjectSet*[T; N: static[cint]](): BVH_ObjectSet[T, N] {.constructor,
    importcpp: "BVH_ObjectSet<\'*0,\'*1>(@)", header: "BVH_ObjectSet.hxx".}
proc destroyBVH_ObjectSet*[T; N: static[cint]](this: var BVH_ObjectSet[T, N]) {.
    importcpp: "#.~BVH_ObjectSet()", header: "BVH_ObjectSet.hxx".}
proc Clear*[T; N: static[cint]](this: var BVH_ObjectSet[T, N]) {.importcpp: "Clear",
    header: "BVH_ObjectSet.hxx".}
proc Objects*[T; N: static[cint]](this: var BVH_ObjectSet[T, N]): var BVH_ObjectSetBVH_ObjectList {.
    importcpp: "Objects", header: "BVH_ObjectSet.hxx".}
proc Objects*[T; N: static[cint]](this: BVH_ObjectSet[T, N]): BVH_ObjectSetBVH_ObjectList {.
    noSideEffect, importcpp: "Objects", header: "BVH_ObjectSet.hxx".}
proc Size*[T; N: static[cint]](this: BVH_ObjectSet[T, N]): Standard_Integer {.
    noSideEffect, importcpp: "Size", header: "BVH_ObjectSet.hxx".}
## using statement

proc Box*[T; N: static[cint]](this: BVH_ObjectSet[T, N]; theIndex: Standard_Integer): BVH_Box[
    T, N] {.noSideEffect, importcpp: "Box", header: "BVH_ObjectSet.hxx".}
proc Center*[T; N: static[cint]](this: BVH_ObjectSet[T, N];
                              theIndex: Standard_Integer;
                              theAxis: Standard_Integer): T {.noSideEffect,
    importcpp: "Center", header: "BVH_ObjectSet.hxx".}
proc Swap*[T; N: static[cint]](this: var BVH_ObjectSet[T, N];
                            theIndex1: Standard_Integer;
                            theIndex2: Standard_Integer) {.importcpp: "Swap",
    header: "BVH_ObjectSet.hxx".}