import bvh_types

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

## ! Pair of Morton code and primitive ID.





proc newBVH_RadixSorter*[T; N: static[cint]](theBox: BVH_Box[T, N]): BVH_RadixSorter[
    T, N] {.cdecl, constructor, importcpp: "BVH_RadixSorter<\'*0,\'*1>(@)",
          header: "BVH_RadixSorter.hxx".}
proc perform*[T; N: static[cint]](this: var BVH_RadixSorter[T, N];
                               theSet: ptr BVH_Set[T, N]) {.cdecl,
    importcpp: "Perform", header: "BVH_RadixSorter.hxx".}
proc perform*[T; N: static[cint]](this: var BVH_RadixSorter[T, N];
                               theSet: ptr BVH_Set[T, N]; theStart: cint;
                               theFinal: cint) {.cdecl, importcpp: "Perform",
    header: "BVH_RadixSorter.hxx".}
proc encodedLinks*[T; N: static[cint]](this: BVH_RadixSorter[T, N]): NCollectionArray1[
    BVH_EncodedLink] {.noSideEffect, cdecl, importcpp: "EncodedLinks", header: "BVH_RadixSorter.hxx".}
##  Radix sort STL predicate for 32-bit integer.



proc newBitPredicate*(theDigit: cint): BitPredicate {.cdecl, constructor,
    importcpp: "BVH::BitPredicate(@)", header: "BVH_RadixSorter.hxx".}
proc `()`*(this: BitPredicate; theLink: BVH_EncodedLink): bool {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "BVH_RadixSorter.hxx".}
## ! STL compare tool used in binary search algorithm.



proc newBitComparator*(theDigit: cint): BitComparator {.cdecl, constructor,
    importcpp: "BVH::BitComparator(@)", header: "BVH_RadixSorter.hxx".}
proc `()`*(this: var BitComparator; theLink1: BVH_EncodedLink; a3: BVH_EncodedLink): bool {.
    cdecl, importcpp: "#(@)", header: "BVH_RadixSorter.hxx".}
  ## theLink2
## ! Tool object for sorting link array using radix sort algorithm.



