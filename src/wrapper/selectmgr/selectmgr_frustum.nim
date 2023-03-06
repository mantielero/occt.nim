import ../../tkernel/standard/standard_types
import selectmgr_types





##  Created on: 2015-03-16
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

## ! This is an internal class containing representation of rectangular selecting frustum, created in case
## ! of point and box selection, and algorithms for overlap detection between selecting
## ! frustum and sensitive entities. The principle of frustum calculation:
## ! - for point selection: on a near view frustum plane rectangular neighborhood of
## !                        user-picked point is created according to the pixel tolerance
## !                        given and then this rectangle is projected onto far view frustum
## !                        plane. This rectangles define the parallel bases of selecting frustum;
## ! - for box selection: box points are projected onto near and far view frustum planes.
## !                      These 2 projected rectangles define parallel bases of selecting frustum.
## ! Overlap detection tests are implemented according to the terms of separating axis
## ! theorem (SAT).
## ! Vertex order:
## ! - for triangular frustum: V0_Near, V1_Near, V2_Near,
## !                           V0_Far, V1_Far, V2_Far;
## ! - for rectangular frustum: LeftTopNear, LeftTopFar,
## !                            LeftBottomNear,LeftBottomFar,
## !                            RightTopNear, RightTopFar,
## !                            RightBottomNear, RightBottomFar.
## ! Plane order in array:
## ! - for triangular frustum: V0V1, V1V2, V0V2, Near, Far;
## ! - for rectangular frustum: Top, Bottom, Left, Right, Near, Far.
## ! Uncollinear edge directions order:
## ! - for rectangular frustum: Horizontal, Vertical,
## !                            LeftLower, RightLower,
## !                            LeftUpper, RightUpper;
## ! - for triangular frustum: V0_Near - V0_Far, V1_Near - V1_Far, V2_Near - V2_Far,
## !                           V1_Near - V0_Near, V2_Near - V1_Near, V2_Near - V0_Near.



proc newSelectMgrFrustum*[N: static[cint]](): SelectMgrFrustum[N] {.cdecl,
    constructor, importcpp: "SelectMgr_Frustum<\'*0>(@)", header: "SelectMgr_Frustum.hxx".}
proc dumpJson*[N: static[cint]](this: SelectMgrFrustum[N];
                              theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "SelectMgr_Frustum.hxx".}


