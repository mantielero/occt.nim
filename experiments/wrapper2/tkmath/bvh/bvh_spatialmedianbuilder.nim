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

## ! Performs building of BVH tree using spatial median split algorithm.

type
  BVH_SpatialMedianBuilder*[T; N: static[cint]] {.
      importcpp: "BVH_SpatialMedianBuilder<\'0,\'1>",
      header: "BVH_SpatialMedianBuilder.hxx", bycopy.} = object of BVH_BinnedBuilder[
      T, N, 2]                  ## ! Creates spatial median split builder.


proc newBVH_SpatialMedianBuilder*[T; N: static[cint]](
    theLeafNodeSize: cint = bVH_ConstantsLeafNodeSizeDefault;
    theMaxTreeDepth: cint = bVH_ConstantsMaxTreeDepth;
    theToUseMainAxis: bool = false): BVH_SpatialMedianBuilder[T, N] {.cdecl,
    constructor, importcpp: "BVH_SpatialMedianBuilder<\'*0,\'*1>(@)",
    dynlib: tkmath.}
proc destroyBVH_SpatialMedianBuilder*[T; N: static[cint]](
    this: var BVH_SpatialMedianBuilder[T, N]) {.cdecl,
    importcpp: "#.~BVH_SpatialMedianBuilder()", dynlib: tkmath.}