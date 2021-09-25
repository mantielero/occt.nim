##  Created on: 2016-04-13
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2016 OPEN CASCADE SAS
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

## ! Performs centroid-based sorting of abstract set along
## ! the given axis (X - 0, Y - 1, Z - 2) using quick sort.

type
  BVH_QuickSorter*[T; N: static[cint]] {.importcpp: "BVH_QuickSorter<\'0,\'1>",
                                      header: "BVH_QuickSorter.hxx", bycopy.} = object of BVH_Sorter[
      T, N]                    ## ! Creates new BVH quick sorter for the given axis.
          ## ! Axis used to arrange the primitives (X - 0, Y - 1, Z - 2).


proc constructBVH_QuickSorter*[T; N: static[cint]](theAxis: int = 0): BVH_QuickSorter[
    T, N] {.constructor, importcpp: "BVH_QuickSorter<\'*0,\'*1>(@)",
          header: "BVH_QuickSorter.hxx".}
proc perform*[T; N: static[cint]](this: var BVH_QuickSorter[T, N];
                               theSet: ptr BVH_Set[T, N]) {.importcpp: "Perform",
    header: "BVH_QuickSorter.hxx".}
proc perform*[T; N: static[cint]](this: var BVH_QuickSorter[T, N];
                               theSet: ptr BVH_Set[T, N]; theStart: int; theFinal: int) {.
    importcpp: "Perform", header: "BVH_QuickSorter.hxx".}
