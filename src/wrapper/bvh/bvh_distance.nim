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

## ! Abstract class for computation of the min distance between some
## ! Object and elements of BVH tree.
## ! To use this class it is required to define two methods:
## ! - *RejectNode* to compute distance from the object to bounding box
## ! - *Accept* to compute distance from the object to the element of tree
## !
## ! \tparam NumType Numeric data type
## ! \tparam Dimension Vector dimension
## ! \tparam ObjectType Type of the object to which the distance is required
## ! \tparam BVHSetType Type of the set on which BVH is built



proc newBVH_Distance*[NumType; Dimension: static[cint]; ObjectType; BVHSetType](): BVH_Distance[
    NumType, Dimension, ObjectType, BVHSetType] {.cdecl, constructor,
    importcpp: "BVH_Distance<\'*0,\'*1,\'*2,\'*3>(@)", header: "BVH_Distance.hxx".}
proc setObject*[NumType; Dimension: static[cint]; ObjectType; BVHSetType](
    this: var BVH_Distance[NumType, Dimension, ObjectType, BVHSetType];
    theObject: ObjectType) {.cdecl, importcpp: "SetObject", header: "BVH_Distance.hxx".}
proc computeDistance*[NumType; Dimension: static[cint]; ObjectType; BVHSetType](
    this: var BVH_Distance[NumType, Dimension, ObjectType, BVHSetType]): NumType {.
    cdecl, importcpp: "ComputeDistance", header: "BVH_Distance.hxx".}
proc isDone*[NumType; Dimension: static[cint]; ObjectType; BVHSetType](
    this: BVH_Distance[NumType, Dimension, ObjectType, BVHSetType]): bool {.
    noSideEffect, cdecl, importcpp: "IsDone", header: "BVH_Distance.hxx".}
proc distance*[NumType; Dimension: static[cint]; ObjectType; BVHSetType](
    this: BVH_Distance[NumType, Dimension, ObjectType, BVHSetType]): NumType {.
    noSideEffect, cdecl, importcpp: "Distance", header: "BVH_Distance.hxx".}
proc isMetricBetter*[NumType; Dimension: static[cint]; ObjectType; BVHSetType](
    this: BVH_Distance[NumType, Dimension, ObjectType, BVHSetType]; theLeft: NumType;
    theRight: NumType): bool {.noSideEffect, cdecl, importcpp: "IsMetricBetter",
                            header: "BVH_Distance.hxx".}
proc rejectMetric*[NumType; Dimension: static[cint]; ObjectType; BVHSetType](
    this: BVH_Distance[NumType, Dimension, ObjectType, BVHSetType];
    theMetric: NumType): bool {.noSideEffect, cdecl, importcpp: "RejectMetric",
                             header: "BVH_Distance.hxx".}
proc stop*[NumType; Dimension: static[cint]; ObjectType; BVHSetType](
    this: BVH_Distance[NumType, Dimension, ObjectType, BVHSetType]): bool {.
    noSideEffect, cdecl, importcpp: "Stop", header: "BVH_Distance.hxx".}
