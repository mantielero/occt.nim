##  Created on: 1999-04-06
##  Created by: Fabrice SERVANT
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of IntPolyh_Triangle"
type
  IntPolyhStartPoint* {.importcpp: "IntPolyh_StartPoint",
                       header: "IntPolyh_StartPoint.hxx", bycopy.} = object


proc constructIntPolyhStartPoint*(): IntPolyhStartPoint {.constructor,
    importcpp: "IntPolyh_StartPoint(@)", header: "IntPolyh_StartPoint.hxx".}
proc constructIntPolyhStartPoint*(xx: float; yy: float; zz: float; uu1: float;
                                 vv1: float; uu2: float; vv2: float; t1: int; e1: int;
                                 lam1: float; t2: int; e2: int; lam2: float; list: int): IntPolyhStartPoint {.
    constructor, importcpp: "IntPolyh_StartPoint(@)",
    header: "IntPolyh_StartPoint.hxx".}
proc x*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "X",
                                       header: "IntPolyh_StartPoint.hxx".}
proc y*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "Y",
                                       header: "IntPolyh_StartPoint.hxx".}
proc z*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "Z",
                                       header: "IntPolyh_StartPoint.hxx".}
proc u1*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "U1",
                                        header: "IntPolyh_StartPoint.hxx".}
proc v1*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "V1",
                                        header: "IntPolyh_StartPoint.hxx".}
proc u2*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "U2",
                                        header: "IntPolyh_StartPoint.hxx".}
proc v2*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "V2",
                                        header: "IntPolyh_StartPoint.hxx".}
proc t1*(this: IntPolyhStartPoint): int {.noSideEffect, importcpp: "T1",
                                      header: "IntPolyh_StartPoint.hxx".}
proc e1*(this: IntPolyhStartPoint): int {.noSideEffect, importcpp: "E1",
                                      header: "IntPolyh_StartPoint.hxx".}
proc lambda1*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "Lambda1",
    header: "IntPolyh_StartPoint.hxx".}
proc t2*(this: IntPolyhStartPoint): int {.noSideEffect, importcpp: "T2",
                                      header: "IntPolyh_StartPoint.hxx".}
proc e2*(this: IntPolyhStartPoint): int {.noSideEffect, importcpp: "E2",
                                      header: "IntPolyh_StartPoint.hxx".}
proc lambda2*(this: IntPolyhStartPoint): float {.noSideEffect, importcpp: "Lambda2",
    header: "IntPolyh_StartPoint.hxx".}
proc getAngle*(this: IntPolyhStartPoint): float {.noSideEffect,
    importcpp: "GetAngle", header: "IntPolyh_StartPoint.hxx".}
proc chainList*(this: IntPolyhStartPoint): int {.noSideEffect,
    importcpp: "ChainList", header: "IntPolyh_StartPoint.hxx".}
proc getEdgePoints*(this: IntPolyhStartPoint; triangle: IntPolyhTriangle;
                   firstEdgePoint: var int; secondEdgePoint: var int;
                   lastPoint: var int): int {.noSideEffect,
    importcpp: "GetEdgePoints", header: "IntPolyh_StartPoint.hxx".}
proc setXYZ*(this: var IntPolyhStartPoint; xx: float; yy: float; zz: float) {.
    importcpp: "SetXYZ", header: "IntPolyh_StartPoint.hxx".}
proc setUV1*(this: var IntPolyhStartPoint; uu1: float; vv1: float) {.
    importcpp: "SetUV1", header: "IntPolyh_StartPoint.hxx".}
proc setUV2*(this: var IntPolyhStartPoint; uu2: float; vv2: float) {.
    importcpp: "SetUV2", header: "IntPolyh_StartPoint.hxx".}
proc setEdge1*(this: var IntPolyhStartPoint; ie1: int) {.importcpp: "SetEdge1",
    header: "IntPolyh_StartPoint.hxx".}
proc setLambda1*(this: var IntPolyhStartPoint; lam1: float) {.importcpp: "SetLambda1",
    header: "IntPolyh_StartPoint.hxx".}
proc setEdge2*(this: var IntPolyhStartPoint; ie2: int) {.importcpp: "SetEdge2",
    header: "IntPolyh_StartPoint.hxx".}
proc setLambda2*(this: var IntPolyhStartPoint; lam2: float) {.importcpp: "SetLambda2",
    header: "IntPolyh_StartPoint.hxx".}
proc setCoupleValue*(this: var IntPolyhStartPoint; it1: int; it2: int) {.
    importcpp: "SetCoupleValue", header: "IntPolyh_StartPoint.hxx".}
proc setAngle*(this: var IntPolyhStartPoint; ang: float) {.importcpp: "SetAngle",
    header: "IntPolyh_StartPoint.hxx".}
proc setChainList*(this: var IntPolyhStartPoint; chList: int) {.
    importcpp: "SetChainList", header: "IntPolyh_StartPoint.hxx".}
proc checkSameSP*(this: IntPolyhStartPoint; sp: IntPolyhStartPoint): int {.
    noSideEffect, importcpp: "CheckSameSP", header: "IntPolyh_StartPoint.hxx".}
proc dump*(this: IntPolyhStartPoint) {.noSideEffect, importcpp: "Dump",
                                    header: "IntPolyh_StartPoint.hxx".}
proc dump*(this: IntPolyhStartPoint; i: int) {.noSideEffect, importcpp: "Dump",
    header: "IntPolyh_StartPoint.hxx".}
