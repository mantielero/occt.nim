import bvh_types

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


proc newBVH_DistanceField*[T; N: static[cint]](theMaximumSize: cint;
    theComputeSign: bool): BVH_DistanceField[T, N] {.cdecl, constructor,
    importcpp: "BVH_DistanceField<\'*0,\'*1>(@)", header: "BVH_DistanceField.hxx".}
proc destroyBVH_DistanceField*[T; N: static[cint]](
    this: var BVH_DistanceField[T, N]) {.cdecl, importcpp: "#.~BVH_DistanceField()",
                                     header: "BVH_DistanceField.hxx".}
proc build*[T; N: static[cint]](this: var BVH_DistanceField[T, N];
                             theGeometry: var BVH_Geometry[T, N]): bool {.cdecl,
    importcpp: "Build", header: "BVH_DistanceField.hxx".}
proc isParallel*[T; N: static[cint]](this: BVH_DistanceField[T, N]): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", header: "BVH_DistanceField.hxx".}
proc setParallel*[T; N: static[cint]](this: var BVH_DistanceField[T, N];
                                   isParallel: bool) {.cdecl,
    importcpp: "SetParallel", header: "BVH_DistanceField.hxx".}
proc packedData*[T; N: static[cint]](this: BVH_DistanceField[T, N]): ptr T {.
    noSideEffect, cdecl, importcpp: "PackedData", header: "BVH_DistanceField.hxx".}
proc voxel*[T; N: static[cint]](this: var BVH_DistanceField[T, N]; theX: cint;
                             theY: cint; theZ: cint): var T {.cdecl,
    importcpp: "Voxel", header: "BVH_DistanceField.hxx".}
proc voxel*[T; N: static[cint]](this: BVH_DistanceField[T, N]; theX: cint; theY: cint;
                             theZ: cint): T {.noSideEffect, cdecl,
    importcpp: "Voxel", header: "BVH_DistanceField.hxx".}
proc dimensionX*[T; N: static[cint]](this: BVH_DistanceField[T, N]): cint {.
    noSideEffect, cdecl, importcpp: "DimensionX", header: "BVH_DistanceField.hxx".}
proc dimensionY*[T; N: static[cint]](this: BVH_DistanceField[T, N]): cint {.
    noSideEffect, cdecl, importcpp: "DimensionY", header: "BVH_DistanceField.hxx".}
proc dimensionZ*[T; N: static[cint]](this: BVH_DistanceField[T, N]): cint {.
    noSideEffect, cdecl, importcpp: "DimensionZ", header: "BVH_DistanceField.hxx".}
proc voxelSize*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "VoxelSize", header: "BVH_DistanceField.hxx".}
proc cornerMin*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "CornerMin", header: "BVH_DistanceField.hxx".}
proc cornerMax*[T; N: static[cint]](this: BVH_DistanceField[T, N]): BVH_DistanceFieldBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "CornerMax", header: "BVH_DistanceField.hxx".}
