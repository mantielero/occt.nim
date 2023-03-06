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

## ! A non-template class for using as base for BVH_Builder
## ! (just to have a named base class).



proc maxTreeDepth*(this: BVH_BuilderTransient): cint {.noSideEffect, cdecl,
    importcpp: "MaxTreeDepth", header: "BVH_Builder.hxx".}
proc leafNodeSize*(this: BVH_BuilderTransient): cint {.noSideEffect, cdecl,
    importcpp: "LeafNodeSize", header: "BVH_Builder.hxx".}
proc isParallel*(this: BVH_BuilderTransient): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "BVH_Builder.hxx".}
proc setParallel*(this: var BVH_BuilderTransient; isParallel: bool) {.cdecl,
    importcpp: "SetParallel", header: "BVH_Builder.hxx".}
## ! Performs construction of BVH tree using bounding
## ! boxes (AABBs) of abstract objects.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension



proc build*[T; N: static[cint]](this: BVH_Builder[T, N]; theSet: ptr BVH_Set[T, N];
                             theBVH: ptr BVH_Tree[T, N]; theBox: BVH_Box[T, N]) {.
    noSideEffect, cdecl, importcpp: "Build", header: "BVH_Builder.hxx".}
