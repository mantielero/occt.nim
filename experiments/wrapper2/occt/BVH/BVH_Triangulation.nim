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

## ! Triangulation as an example of BVH primitive set.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_Triangulation*[T; N: static[cint]] {.importcpp: "BVH_Triangulation<\'0,\'1>",
                                        header: "BVH_Triangulation.hxx", bycopy.} = object of BVH_PrimitiveSet[
      T, N]                    ## ! Creates empty triangulation.
          ## ! Array of vertex coordinates.
          ## ! Returns total number of triangles.
    bvh* {.importc: "BVH".}: Typename
    elements* {.importc: "Elements".}: BVH_Array4i

  BVH_TriangulationBVH_VecNt*[T; N] = Type[T, N]

proc constructBVH_Triangulation*[T; N: static[cint]](): BVH_Triangulation[T, N] {.
    constructor, importcpp: "BVH_Triangulation<\'*0,\'*1>(@)",
    header: "BVH_Triangulation.hxx".}
proc constructBVH_Triangulation*[T; N: static[cint]](
    theBuilder: Handle[BVH_Builder[T, N]]): BVH_Triangulation[T, N] {.constructor,
    importcpp: "BVH_Triangulation<\'*0,\'*1>(@)", header: "BVH_Triangulation.hxx".}
proc destroyBVH_Triangulation*[T; N: static[cint]](
    this: var BVH_Triangulation[T, N]) {.importcpp: "#.~BVH_Triangulation()",
                                     header: "BVH_Triangulation.hxx".}
## !!!Ignored construct:  :: ArrayType < T , N > :: Type Vertices ;
## Error: identifier expected, but got: ::!!!

proc size*[T; N: static[cint]](this: BVH_Triangulation[T, N]): int {.noSideEffect,
    importcpp: "Size", header: "BVH_Triangulation.hxx".}
## using statement

proc box*[T; N: static[cint]](this: BVH_Triangulation[T, N]; theIndex: int): BVH_Box[T, N] {.
    noSideEffect, importcpp: "Box", header: "BVH_Triangulation.hxx".}
proc center*[T; N: static[cint]](this: BVH_Triangulation[T, N]; theIndex: int;
                              theAxis: int): T {.noSideEffect, importcpp: "Center",
    header: "BVH_Triangulation.hxx".}
proc swap*[T; N: static[cint]](this: var BVH_Triangulation[T, N]; theIndex1: int;
                            theIndex2: int) {.importcpp: "Swap",
    header: "BVH_Triangulation.hxx".}
