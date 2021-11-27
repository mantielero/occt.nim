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

## ! Defines a set of static methods operating with points and bounding boxes.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_Tools*[T; N: static[cint]] {.importcpp: "BVH_Tools<\'0,\'1>",
                                header: "BVH_Tools.hxx", bycopy.} = object ## ! @name public types
                                                                      ## ! @name Box-Box Square distance
                                                                      ## ! Computes Square distance between Axis aligned bounding boxes
                                                                      ## ! @name Point-Box Square distance
                                                                      ## ! Computes square distance between point and bounding box
                                                                      ## ! @name Point-Box projection
                                                                      ## ! Computes projection of point on bounding box
                                                                      ## ! @name
                                                                      ## Point-Triangle Square distance
                                                                      ## ! Computes square distance between point and triangle
                                                                      ## ! @name Ray-Box
                                                                      ## Intersection
                                                                      ## ! Computes hit time of ray-box
                                                                      ## intersection

  BVH_ToolsBVH_VecNt*[T; N] = object

proc boxBoxSquareDistance*[T; N: static[cint]](theBox1: BVH_Box[T, N];
    theBox2: BVH_Box[T, N]): T {.cdecl,
                             importcpp: "BVH_Tools::BoxBoxSquareDistance(@)",
                             dynlib: tkmath.}
proc boxBoxSquareDistance*[T; N: static[cint]](theCMin1: BVH_ToolsBVH_VecNt;
    theCMax1: BVH_ToolsBVH_VecNt; theCMin2: BVH_ToolsBVH_VecNt;
    theCMax2: BVH_ToolsBVH_VecNt): T {.cdecl, importcpp: "BVH_Tools::BoxBoxSquareDistance(@)",
                                    dynlib: tkmath.}
proc pointBoxSquareDistance*[T; N: static[cint]](thePoint: BVH_ToolsBVH_VecNt;
    theBox: BVH_Box[T, N]): T {.cdecl,
                            importcpp: "BVH_Tools::PointBoxSquareDistance(@)",
                            dynlib: tkmath.}
proc pointBoxSquareDistance*[T; N: static[cint]](thePoint: BVH_ToolsBVH_VecNt;
    theCMin: BVH_ToolsBVH_VecNt; theCMax: BVH_ToolsBVH_VecNt): T {.cdecl,
    importcpp: "BVH_Tools::PointBoxSquareDistance(@)", dynlib: tkmath.}
proc pointBoxProjection*[T; N: static[cint]](thePoint: BVH_ToolsBVH_VecNt;
    theBox: BVH_Box[T, N]): BVH_ToolsBVH_VecNt {.cdecl,
    importcpp: "BVH_Tools::PointBoxProjection(@)", dynlib: tkmath.}
proc pointBoxProjection*[T; N: static[cint]](thePoint: BVH_ToolsBVH_VecNt;
    theCMin: BVH_ToolsBVH_VecNt; theCMax: BVH_ToolsBVH_VecNt): BVH_ToolsBVH_VecNt {.
    cdecl, importcpp: "BVH_Tools::PointBoxProjection(@)", dynlib: tkmath.}
proc pointTriangleSquareDistance*[T; N: static[cint]](thePoint: BVH_ToolsBVH_VecNt;
    theNode0: BVH_ToolsBVH_VecNt; theNode1: BVH_ToolsBVH_VecNt;
    theNode2: BVH_ToolsBVH_VecNt): T {.cdecl, importcpp: "BVH_Tools::PointTriangleSquareDistance(@)",
                                    dynlib: tkmath.}
proc rayBoxIntersection*[T; N: static[cint]](theRay: BVH_Ray[T, N];
    theBox: BVH_Box[T, N]; theTimeEnter: var T; theTimeLeave: var T): bool {.cdecl,
    importcpp: "BVH_Tools::RayBoxIntersection(@)", dynlib: tkmath.}
proc rayBoxIntersection*[T; N: static[cint]](theRay: BVH_Ray[T, N];
    theBoxCMin: BVH_ToolsBVH_VecNt; theBoxCMax: BVH_ToolsBVH_VecNt;
    theTimeEnter: var T; theTimeLeave: var T): bool {.cdecl,
    importcpp: "BVH_Tools::RayBoxIntersection(@)", dynlib: tkmath.}
proc rayBoxIntersection*[T; N: static[cint]](theRayOrigin: BVH_ToolsBVH_VecNt;
    theRayDirection: BVH_ToolsBVH_VecNt; theBox: BVH_Box[T, N]; theTimeEnter: var T;
    theTimeLeave: var T): bool {.cdecl,
                             importcpp: "BVH_Tools::RayBoxIntersection(@)",
                             dynlib: tkmath.}
proc rayBoxIntersection*[T; N: static[cint]](theRayOrigin: BVH_ToolsBVH_VecNt;
    theRayDirection: BVH_ToolsBVH_VecNt; theBoxCMin: BVH_ToolsBVH_VecNt;
    theBoxCMax: BVH_ToolsBVH_VecNt; theTimeEnter: var T; theTimeLeave: var T): bool {.
    cdecl, importcpp: "BVH_Tools::RayBoxIntersection(@)", dynlib: tkmath.}