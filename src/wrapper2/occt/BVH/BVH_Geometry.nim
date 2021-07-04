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
  BVH_ObjectSet, BVH_Builder, BVH_BinnedBuilder

## ! BVH geometry as a set of abstract geometric objects
## ! organized with bounding volume hierarchy (BVH).
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_Geometry*[T; N: static[cint]] {.importcpp: "BVH_Geometry<\'0,\'1>",
                                   header: "BVH_Geometry.hxx", bycopy.} = object of BVH_ObjectSet[
      T, N] ## ! Creates uninitialized BVH geometry.
          ## ! Returns TRUE if geometry state should be updated.
          ## ! Updates internal geometry state.
    ## !< Is geometry state outdated?
    ## !< Constructed hight-level BVH
    ## !< Builder for hight-level BVH
    ## !< Cached bounding box of geometric objects


proc constructBVH_Geometry*[T; N: static[cint]](): BVH_Geometry[T, N] {.constructor,
    importcpp: "BVH_Geometry<\'*0,\'*1>(@)", header: "BVH_Geometry.hxx".}
proc constructBVH_Geometry*[T; N: static[cint]](
    theBuilder: handle[BVH_Builder[T, N]]): BVH_Geometry[T, N] {.constructor,
    importcpp: "BVH_Geometry<\'*0,\'*1>(@)", header: "BVH_Geometry.hxx".}
proc destroyBVH_Geometry*[T; N: static[cint]](this: var BVH_Geometry[T, N]) {.
    importcpp: "#.~BVH_Geometry()", header: "BVH_Geometry.hxx".}
proc IsDirty*[T; N: static[cint]](this: BVH_Geometry[T, N]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDirty", header: "BVH_Geometry.hxx".}
proc MarkDirty*[T; N: static[cint]](this: var BVH_Geometry[T, N]) {.
    importcpp: "MarkDirty", header: "BVH_Geometry.hxx".}
## using statement

proc Box*[T; N: static[cint]](this: BVH_Geometry[T, N]): BVH_Box[T, N] {.noSideEffect,
    importcpp: "Box", header: "BVH_Geometry.hxx".}
proc BVH*[T; N: static[cint]](this: var BVH_Geometry[T, N]): handle[BVH_Tree[T, N]] {.
    importcpp: "BVH", header: "BVH_Geometry.hxx".}
proc Builder*[T; N: static[cint]](this: BVH_Geometry[T, N]): handle[BVH_Builder[T, N]] {.
    noSideEffect, importcpp: "Builder", header: "BVH_Geometry.hxx".}
proc SetBuilder*[T; N: static[cint]](this: var BVH_Geometry[T, N];
                                  theBuilder: handle[BVH_Builder[T, N]]) {.
    importcpp: "SetBuilder", header: "BVH_Geometry.hxx".}