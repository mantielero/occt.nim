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
  BVH_Set, BVH_BinaryTree

## ! A non-template class for using as base for BVH_Builder
## ! (just to have a named base class).

type
  BVH_BuilderTransient* {.importcpp: "BVH_BuilderTransient",
                         header: "BVH_Builder.hxx", bycopy.} = object of Standard_Transient ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## the
                                                                                     ## maximum
                                                                                     ## depth
                                                                                     ## of
                                                                                     ## constructed
                                                                                     ## BVH.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## new
                                                                                     ## abstract
                                                                                     ## BVH
                                                                                     ## builder.
    ## !< Maximum depth of constructed BVH
    ## !< Maximum number of objects per leaf
    ## !< Parallel execution flag.

  BVH_BuilderTransientbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BVH_BuilderTransient::get_type_name(@)",
                              header: "BVH_Builder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BVH_BuilderTransient::get_type_descriptor(@)",
    header: "BVH_Builder.hxx".}
proc DynamicType*(this: BVH_BuilderTransient): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BVH_Builder.hxx".}
proc MaxTreeDepth*(this: BVH_BuilderTransient): Standard_Integer {.noSideEffect,
    importcpp: "MaxTreeDepth", header: "BVH_Builder.hxx".}
proc LeafNodeSize*(this: BVH_BuilderTransient): Standard_Integer {.noSideEffect,
    importcpp: "LeafNodeSize", header: "BVH_Builder.hxx".}
proc IsParallel*(this: BVH_BuilderTransient): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "BVH_Builder.hxx".}
proc SetParallel*(this: var BVH_BuilderTransient; isParallel: Standard_Boolean) {.
    importcpp: "SetParallel", header: "BVH_Builder.hxx".}
## ! Performs construction of BVH tree using bounding
## ! boxes (AABBs) of abstract objects.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_Builder*[T; N: static[cint]] {.importcpp: "BVH_Builder<\'0,\'1>",
                                  header: "BVH_Builder.hxx", bycopy.} = object of BVH_BuilderTransient ##
                                                                                                ## !
                                                                                                ## Builds
                                                                                                ## BVH
                                                                                                ## using
                                                                                                ## specific
                                                                                                ## algorithm.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## new
                                                                                                ## abstract
                                                                                                ## BVH
                                                                                                ## builder.


proc Build*[T; N: static[cint]](this: BVH_Builder[T, N]; theSet: ptr BVH_Set[T, N];
                             theBVH: ptr BVH_Tree[T, N]; theBox: BVH_Box[T, N]) {.
    noSideEffect, importcpp: "Build", header: "BVH_Builder.hxx".}