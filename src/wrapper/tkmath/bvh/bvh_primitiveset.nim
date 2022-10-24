import bvh_types

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

## ! Set of abstract geometric primitives organized with bounding
## ! volume hierarchy (BVH). Unlike an object set, this collection
## ! is designed for storing structural elements of a single object
## ! (such as triangles in the object triangulation). Because there
## ! may be a large number of such elements, the implementations of
## ! this interface should be sufficiently optimized.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension




proc newBVH_PrimitiveSet*[T; N: static[cint]](): BVH_PrimitiveSet[T, N] {.cdecl,
    constructor, importcpp: "BVH_PrimitiveSet<\'*0,\'*1>(@)", header: "BVH_PrimitiveSet.hxx".}
proc newBVH_PrimitiveSet*[T; N: static[cint]](theBuilder: Handle[BVH_Builder[T, N]]): BVH_PrimitiveSet[
    T, N] {.cdecl, constructor, importcpp: "BVH_PrimitiveSet<\'*0,\'*1>(@)",
          header: "BVH_PrimitiveSet.hxx".}
proc destroyBVH_PrimitiveSet*[T; N: static[cint]](this: var BVH_PrimitiveSet[T, N]) {.
    cdecl, importcpp: "#.~BVH_PrimitiveSet()", header: "BVH_PrimitiveSet.hxx".}
proc box*[T; N: static[cint]](this: BVH_PrimitiveSet[T, N]): BVH_Box[T, N] {.
    noSideEffect, cdecl, importcpp: "Box", header: "BVH_PrimitiveSet.hxx".}
proc bvh*[T; N: static[cint]](this: var BVH_PrimitiveSet[T, N]): Handle[BVH_Tree[T, N]] {.
    cdecl, importcpp: "BVH", header: "BVH_PrimitiveSet.hxx".}
proc builder*[T; N: static[cint]](this: BVH_PrimitiveSet[T, N]): Handle[
    BVH_Builder[T, N]] {.noSideEffect, cdecl, importcpp: "Builder", header: "BVH_PrimitiveSet.hxx".}
proc setBuilder*[T; N: static[cint]](this: var BVH_PrimitiveSet[T, N];
                                  theBuilder: Handle[BVH_Builder[T, N]]) {.cdecl,
    importcpp: "SetBuilder", header: "BVH_PrimitiveSet.hxx".}
