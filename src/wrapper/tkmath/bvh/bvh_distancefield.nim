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

  BVH_DistanceFieldBVH_VecNt*[T; N] = object

proc newBVH_DistanceField*[T; N: static[cint]](theMaximumSize: cint;
    theComputeSign: bool): BVH_DistanceField[T, N] {.cdecl, constructor,
    importcpp: "BVH_DistanceField<\'*0,\'*1>(@)", dynlib: tkmath.}
proc destroyBVH_DistanceField*[T; N: static[cint]](
    this: var BVH_DistanceField[T, N]) {.cdecl, importcpp: "#.~BVH_DistanceField()",
                                     dynlib: tkmath.}
proc build*[T; N: static[cint]](this: var BVH_DistanceField[T, N];
                             theGeometry: var BVH_Geometry[T, N]): bool {.cdecl,
    importcpp: "Build", dynlib: tkmath.}
proc isParallel*[T; N: static[cint]](this: BVH_DistanceField[T, N]): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", dynlib: tkmath.}
proc setParallel*[T; N: static[cint]](this: var BVH_DistanceField[T, N];
                                   isParallel: bool) {.cdecl,
    importcpp: "SetParallel", dynlib: tkmath.}
proc packedData*[T; N: static[cint]](this: BVH_DistanceField[T, N]): ptr T {.
    noSideEffect, cdecl, importcpp: "PackedData", dynlib: tkmath.}
proc voxel*[T; N: static[cint]](this: var BVH_DistanceField[T, N]; theX: cint;
                             theY: cint; theZ: cint): var T {.cdecl,
    importcpp: "Voxel", dynlib: tkmath.}
proc voxel*[T; N: static[cint]](this: BVH_DistanceField[T, N]; theX: cint; theY: cint;
                             theZ: cint): T {.noSideEffect, cdecl,
    importcpp: "Voxel", dynlib: tkmath.}
proc dimensionX*[T; N: static[cint]](this: BVH_DistanceField[T, N]): cint {.
    noSideEffect, cdecl, importcpp: "DimensionX", dynlib: tkmath.}
proc dimensionY*[T; N: static[cint]](this: BVH_DistanceField[T, N]): cint {.
    noSideEffect, cdecl, importcpp: "DimensionY", dynlib: tkmath.}
proc dimensionZ*[T; N: static[cint]](this: BVH_DistanceField[T, N]): cint {.
    noSideEffect, cdecl, importcpp: "DimensionZ", dynlib: tkmath.}
proc voxelSize*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "VoxelSize", dynlib: tkmath.}
proc cornerMin*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "CornerMin", dynlib: tkmath.}
proc cornerMax*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "CornerMax", dynlib: tkmath.}