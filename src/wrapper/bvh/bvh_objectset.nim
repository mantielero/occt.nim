import bvh_types
import ../standard/standard_types
import ../ncollection/ncollection_types
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

## ! Array of abstract entities (bounded by BVH boxes) to built BVH.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension


  

proc newBVH_ObjectSet*[T; N: static[cint]](): BVH_ObjectSet[T, N] {.cdecl, constructor,
    importcpp: "BVH_ObjectSet<\'*0,\'*1>(@)", header: "BVH_ObjectSet.hxx".}
proc destroyBVH_ObjectSet*[T; N: static[cint]](this: var BVH_ObjectSet[T, N]) {.cdecl,
    importcpp: "#.~BVH_ObjectSet()", header: "BVH_ObjectSet.hxx".}
proc clear*[T; N: static[cint]](this: var BVH_ObjectSet[T, N]) {.cdecl,
    importcpp: "Clear", header: "BVH_ObjectSet.hxx".}
proc objects*[T; N: static[cint]](this: var BVH_ObjectSet[T, N]): var NCollectionVector[Handle[BVH_Object[T, N]]] {.
    cdecl, importcpp: "Objects", header: "BVH_ObjectSet.hxx".}
proc objects*[T; N: static[cint]](this: BVH_ObjectSet[T, N]): NCollectionVector[Handle[BVH_Object[T, N]]] {.
    noSideEffect, cdecl, importcpp: "Objects", header: "BVH_ObjectSet.hxx".}
proc size*[T; N: static[cint]](this: BVH_ObjectSet[T, N]): cint {.noSideEffect, cdecl,
    importcpp: "Size", header: "BVH_ObjectSet.hxx".}
## using statement

proc box*[T; N: static[cint]](this: BVH_ObjectSet[T, N]; theIndex: cint): BVH_Box[T, N] {.
    noSideEffect, cdecl, importcpp: "Box", header: "BVH_ObjectSet.hxx".}
proc center*[T; N: static[cint]](this: BVH_ObjectSet[T, N]; theIndex: cint;
                              theAxis: cint): T {.noSideEffect, cdecl,
    importcpp: "Center", header: "BVH_ObjectSet.hxx".}
proc swap*[T; N: static[cint]](this: var BVH_ObjectSet[T, N]; theIndex1: cint;
                            theIndex2: cint) {.cdecl, importcpp: "Swap",
    header: "BVH_ObjectSet.hxx".}
