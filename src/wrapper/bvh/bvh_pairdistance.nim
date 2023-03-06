import bvh_types

##  Created by: Eugeny MALTCHIKOV
##  Created on: 2019-04-17
##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Abstract class for computation of the min distance between
## ! elements of two BVH trees.
## ! To use this class it is required to define only the method
## ! *Accept* to compute the distance between elements of the trees.
## !
## ! \tparam NumType Numeric data type
## ! \tparam Dimension Vector dimension
## ! \tparam BVHSetType Type of the set on which BVH is built



proc newBVH_PairDistance*[NumType; Dimension: static[cint]; BVHSetType](): BVH_PairDistance[
    NumType, Dimension, BVHSetType] {.cdecl, constructor, importcpp: "BVH_PairDistance<\'*0,\'*1,\'*2>(@)",
                                   header: "BVH_PairDistance.hxx".}
proc computeDistance*[NumType; Dimension: static[cint]; BVHSetType](
    this: var BVH_PairDistance[NumType, Dimension, BVHSetType]): NumType {.cdecl,
    importcpp: "ComputeDistance", header: "BVH_PairDistance.hxx".}
proc isDone*[NumType; Dimension: static[cint]; BVHSetType](
    this: BVH_PairDistance[NumType, Dimension, BVHSetType]): bool {.noSideEffect,
    cdecl, importcpp: "IsDone", header: "BVH_PairDistance.hxx".}
proc distance*[NumType; Dimension: static[cint]; BVHSetType](
    this: BVH_PairDistance[NumType, Dimension, BVHSetType]): NumType {.noSideEffect,
    cdecl, importcpp: "Distance", header: "BVH_PairDistance.hxx".}
proc isMetricBetter*[NumType; Dimension: static[cint]; BVHSetType](
    this: BVH_PairDistance[NumType, Dimension, BVHSetType]; theLeft: NumType;
    theRight: NumType): bool {.noSideEffect, cdecl, importcpp: "IsMetricBetter",
                            header: "BVH_PairDistance.hxx".}
proc rejectNode*[NumType; Dimension: static[cint]; BVHSetType](
    this: BVH_PairDistance[NumType, Dimension, BVHSetType];
    theCornerMin1: BVH_PairDistanceBVH_VecNt;
    theCornerMax1: BVH_PairDistanceBVH_VecNt;
    theCornerMin2: BVH_PairDistanceBVH_VecNt;
    theCornerMax2: BVH_PairDistanceBVH_VecNt; theMetric: var NumType): bool {.
    noSideEffect, cdecl, importcpp: "RejectNode", header: "BVH_PairDistance.hxx".}
proc rejectMetric*[NumType; Dimension: static[cint]; BVHSetType](
    this: BVH_PairDistance[NumType, Dimension, BVHSetType]; theMetric: NumType): bool {.
    noSideEffect, cdecl, importcpp: "RejectMetric", header: "BVH_PairDistance.hxx".}
proc stop*[NumType; Dimension: static[cint]; BVHSetType](
    this: BVH_PairDistance[NumType, Dimension, BVHSetType]): bool {.noSideEffect,
    cdecl, importcpp: "Stop", header: "BVH_PairDistance.hxx".}
