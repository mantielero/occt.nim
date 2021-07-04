##  Created on: 2014-09-06
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
  BVH_Geometry

discard "forward decl of BVH_ParallelDistanceFieldBuilder"
type
  BVH_DistanceField*[T; N: static[cint]] {.importcpp: "BVH_DistanceField<\'0,\'1>",
                                        header: "BVH_DistanceField.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## empty
                                                                                      ## 3D
                                                                                      ## distance
                                                                                      ## field.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## packed
                                                                                      ## voxel
                                                                                      ## data.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Performs
                                                                                      ## building
                                                                                      ## of
                                                                                      ## distance
                                                                                      ## field
                                                                                      ## for
                                                                                      ## the
                                                                                      ## given
                                                                                      ## Z
                                                                                      ## slices.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Array
                                                                                      ## of
                                                                                      ## voxels.
    ## ! Size of single voxel.
    ## ! Minimum corner of voxel grid.
    ## ! Maximum corner of voxel grid.
    ## ! Size of voxel grid in X dimension.
    ## ! Size of voxel grid in Y dimension.
    ## ! Size of voxel grid in Z dimension.
    ## ! Size of voxel grid in maximum dimension.
    ## ! Enables/disables signing of distance field.

  BVH_DistanceFieldBVH_VecNt*[T; N] = Type[T, N]

proc constructBVH_DistanceField*[T; N: static[cint]](
    theMaximumSize: Standard_Integer; theComputeSign: Standard_Boolean): BVH_DistanceField[
    T, N] {.constructor, importcpp: "BVH_DistanceField<\'*0,\'*1>(@)",
          header: "BVH_DistanceField.hxx".}
proc destroyBVH_DistanceField*[T; N: static[cint]](
    this: var BVH_DistanceField[T, N]) {.importcpp: "#.~BVH_DistanceField()",
                                     header: "BVH_DistanceField.hxx".}
proc Build*[T; N: static[cint]](this: var BVH_DistanceField[T, N];
                             theGeometry: var BVH_Geometry[T, N]): Standard_Boolean {.
    importcpp: "Build", header: "BVH_DistanceField.hxx".}
proc IsParallel*[T; N: static[cint]](this: BVH_DistanceField[T, N]): Standard_Boolean {.
    noSideEffect, importcpp: "IsParallel", header: "BVH_DistanceField.hxx".}
proc SetParallel*[T; N: static[cint]](this: var BVH_DistanceField[T, N];
                                   isParallel: Standard_Boolean) {.
    importcpp: "SetParallel", header: "BVH_DistanceField.hxx".}
proc PackedData*[T; N: static[cint]](this: BVH_DistanceField[T, N]): ptr T {.
    noSideEffect, importcpp: "PackedData", header: "BVH_DistanceField.hxx".}
proc Voxel*[T; N: static[cint]](this: var BVH_DistanceField[T, N];
                             theX: Standard_Integer; theY: Standard_Integer;
                             theZ: Standard_Integer): var T {.importcpp: "Voxel",
    header: "BVH_DistanceField.hxx".}
proc Voxel*[T; N: static[cint]](this: BVH_DistanceField[T, N]; theX: Standard_Integer;
                             theY: Standard_Integer; theZ: Standard_Integer): T {.
    noSideEffect, importcpp: "Voxel", header: "BVH_DistanceField.hxx".}
proc DimensionX*[T; N: static[cint]](this: BVH_DistanceField[T, N]): Standard_Integer {.
    noSideEffect, importcpp: "DimensionX", header: "BVH_DistanceField.hxx".}
proc DimensionY*[T; N: static[cint]](this: BVH_DistanceField[T, N]): Standard_Integer {.
    noSideEffect, importcpp: "DimensionY", header: "BVH_DistanceField.hxx".}
proc DimensionZ*[T; N: static[cint]](this: BVH_DistanceField[T, N]): Standard_Integer {.
    noSideEffect, importcpp: "DimensionZ", header: "BVH_DistanceField.hxx".}
proc VoxelSize*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, importcpp: "VoxelSize", header: "BVH_DistanceField.hxx".}
proc CornerMin*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, importcpp: "CornerMin", header: "BVH_DistanceField.hxx".}
proc CornerMax*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, importcpp: "CornerMax", header: "BVH_DistanceField.hxx".}