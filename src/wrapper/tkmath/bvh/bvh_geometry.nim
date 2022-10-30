import bvh_types
import ../../tkernel/standard/standard_types
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

## ! BVH geometry as a set of abstract geometric objects
## ! organized with bounding volume hierarchy (BVH).
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension



proc newBVH_Geometry*[T; N: static[cint]](): BVH_Geometry[T, N] {.cdecl, constructor,
    importcpp: "BVH_Geometry<\'*0,\'*1>(@)", header: "BVH_Geometry.hxx".}
proc newBVH_Geometry*[T; N: static[cint]](theBuilder: Handle[BVH_Builder[T, N]]): BVH_Geometry[
    T, N] {.cdecl, constructor, importcpp: "BVH_Geometry<\'*0,\'*1>(@)",
          header: "BVH_Geometry.hxx".}
proc destroyBVH_Geometry*[T; N: static[cint]](this: var BVH_Geometry[T, N]) {.cdecl,
    importcpp: "#.~BVH_Geometry()", header: "BVH_Geometry.hxx".}
proc isDirty*[T; N: static[cint]](this: BVH_Geometry[T, N]): bool {.noSideEffect, cdecl,
    importcpp: "IsDirty", header: "BVH_Geometry.hxx".}
proc markDirty*[T; N: static[cint]](this: var BVH_Geometry[T, N]) {.cdecl,
    importcpp: "MarkDirty", header: "BVH_Geometry.hxx".}
## using statement

proc box*[T; N: static[cint]](this: BVH_Geometry[T, N]): BVH_Box[T, N] {.noSideEffect,
    cdecl, importcpp: "Box", header: "BVH_Geometry.hxx".}
proc bvh*[T; N: static[cint]](this: var BVH_Geometry[T, N]): Handle[BVH_Tree[T, N]] {.
    cdecl, importcpp: "BVH", header: "BVH_Geometry.hxx".}
proc builder*[T; N: static[cint]](this: BVH_Geometry[T, N]): Handle[BVH_Builder[T, N]] {.
    noSideEffect, cdecl, importcpp: "Builder", header: "BVH_Geometry.hxx".}
proc setBuilder*[T; N: static[cint]](this: var BVH_Geometry[T, N];
                                  theBuilder: Handle[BVH_Builder[T, N]]) {.cdecl,
    importcpp: "SetBuilder", header: "BVH_Geometry.hxx".}
