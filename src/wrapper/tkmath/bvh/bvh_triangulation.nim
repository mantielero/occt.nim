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
          ##    typename BVH::ArrayType<T, N>::Type Vertices;
          ##
          ##    //! Array of indices of triangle vertices.
          ##    BVH_Array4i Elements;
          ## ! Returns total number of triangles.

  BVH_TriangulationBVH_VecNt*[T; N] = object

proc newBVH_Triangulation*[T; N: static[cint]](): BVH_Triangulation[T, N] {.cdecl,
    constructor, importcpp: "BVH_Triangulation<\'*0,\'*1>(@)", dynlib: tkmath.}
proc newBVH_Triangulation*[T; N: static[cint]](
    theBuilder: Handle[BVH_Builder[T, N]]): BVH_Triangulation[T, N] {.cdecl,
    constructor, importcpp: "BVH_Triangulation<\'*0,\'*1>(@)", dynlib: tkmath.}
proc destroyBVH_Triangulation*[T; N: static[cint]](
    this: var BVH_Triangulation[T, N]) {.cdecl, importcpp: "#.~BVH_Triangulation()",
                                     dynlib: tkmath.}
proc size*[T; N: static[cint]](this: BVH_Triangulation[T, N]): cint {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkmath.}
## using statement

proc box*[T; N: static[cint]](this: BVH_Triangulation[T, N]; theIndex: cint): BVH_Box[T,
    N] {.noSideEffect, cdecl, importcpp: "Box", dynlib: tkmath.}
proc center*[T; N: static[cint]](this: BVH_Triangulation[T, N]; theIndex: cint;
                              theAxis: cint): T {.noSideEffect, cdecl,
    importcpp: "Center", dynlib: tkmath.}
proc swap*[T; N: static[cint]](this: var BVH_Triangulation[T, N]; theIndex1: cint;
                            theIndex2: cint) {.cdecl, importcpp: "Swap",
    dynlib: tkmath.}