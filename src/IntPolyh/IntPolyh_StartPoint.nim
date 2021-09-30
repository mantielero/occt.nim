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
proc constructIntPolyhStartPoint*(xx: cfloat; yy: cfloat; zz: cfloat; uu1: cfloat;
                                 vv1: cfloat; uu2: cfloat; vv2: cfloat; t1: cint;
                                 e1: cint; lam1: cfloat; t2: cint; e2: cint;
                                 lam2: cfloat; list: cint): IntPolyhStartPoint {.
    constructor, importcpp: "IntPolyh_StartPoint(@)",
    header: "IntPolyh_StartPoint.hxx".}
proc x*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "X",
                                        header: "IntPolyh_StartPoint.hxx".}
proc y*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "Y",
                                        header: "IntPolyh_StartPoint.hxx".}
proc z*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "Z",
                                        header: "IntPolyh_StartPoint.hxx".}
proc u1*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "U1",
    header: "IntPolyh_StartPoint.hxx".}
proc v1*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "V1",
    header: "IntPolyh_StartPoint.hxx".}
proc u2*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "U2",
    header: "IntPolyh_StartPoint.hxx".}
proc v2*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "V2",
    header: "IntPolyh_StartPoint.hxx".}
proc t1*(this: IntPolyhStartPoint): cint {.noSideEffect, importcpp: "T1",
                                       header: "IntPolyh_StartPoint.hxx".}
proc e1*(this: IntPolyhStartPoint): cint {.noSideEffect, importcpp: "E1",
                                       header: "IntPolyh_StartPoint.hxx".}
proc lambda1*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "Lambda1",
    header: "IntPolyh_StartPoint.hxx".}
proc t2*(this: IntPolyhStartPoint): cint {.noSideEffect, importcpp: "T2",
                                       header: "IntPolyh_StartPoint.hxx".}
proc e2*(this: IntPolyhStartPoint): cint {.noSideEffect, importcpp: "E2",
                                       header: "IntPolyh_StartPoint.hxx".}
proc lambda2*(this: IntPolyhStartPoint): cfloat {.noSideEffect, importcpp: "Lambda2",
    header: "IntPolyh_StartPoint.hxx".}
proc getAngle*(this: IntPolyhStartPoint): cfloat {.noSideEffect,
    importcpp: "GetAngle", header: "IntPolyh_StartPoint.hxx".}
proc chainList*(this: IntPolyhStartPoint): cint {.noSideEffect,
    importcpp: "ChainList", header: "IntPolyh_StartPoint.hxx".}
proc getEdgePoints*(this: IntPolyhStartPoint; triangle: IntPolyhTriangle;
                   firstEdgePoint: var cint; secondEdgePoint: var cint;
                   lastPoint: var cint): cint {.noSideEffect,
    importcpp: "GetEdgePoints", header: "IntPolyh_StartPoint.hxx".}
proc setXYZ*(this: var IntPolyhStartPoint; xx: cfloat; yy: cfloat; zz: cfloat) {.
    importcpp: "SetXYZ", header: "IntPolyh_StartPoint.hxx".}
proc setUV1*(this: var IntPolyhStartPoint; uu1: cfloat; vv1: cfloat) {.
    importcpp: "SetUV1", header: "IntPolyh_StartPoint.hxx".}
proc setUV2*(this: var IntPolyhStartPoint; uu2: cfloat; vv2: cfloat) {.
    importcpp: "SetUV2", header: "IntPolyh_StartPoint.hxx".}
proc setEdge1*(this: var IntPolyhStartPoint; ie1: cint) {.importcpp: "SetEdge1",
    header: "IntPolyh_StartPoint.hxx".}
proc setLambda1*(this: var IntPolyhStartPoint; lam1: cfloat) {.
    importcpp: "SetLambda1", header: "IntPolyh_StartPoint.hxx".}
proc setEdge2*(this: var IntPolyhStartPoint; ie2: cint) {.importcpp: "SetEdge2",
    header: "IntPolyh_StartPoint.hxx".}
proc setLambda2*(this: var IntPolyhStartPoint; lam2: cfloat) {.
    importcpp: "SetLambda2", header: "IntPolyh_StartPoint.hxx".}
proc setCoupleValue*(this: var IntPolyhStartPoint; it1: cint; it2: cint) {.
    importcpp: "SetCoupleValue", header: "IntPolyh_StartPoint.hxx".}
proc setAngle*(this: var IntPolyhStartPoint; ang: cfloat) {.importcpp: "SetAngle",
    header: "IntPolyh_StartPoint.hxx".}
proc setChainList*(this: var IntPolyhStartPoint; chList: cint) {.
    importcpp: "SetChainList", header: "IntPolyh_StartPoint.hxx".}
proc checkSameSP*(this: IntPolyhStartPoint; sp: IntPolyhStartPoint): cint {.
    noSideEffect, importcpp: "CheckSameSP", header: "IntPolyh_StartPoint.hxx".}
proc dump*(this: IntPolyhStartPoint) {.noSideEffect, importcpp: "Dump",
                                    header: "IntPolyh_StartPoint.hxx".}
proc dump*(this: IntPolyhStartPoint; i: cint) {.noSideEffect, importcpp: "Dump",
    header: "IntPolyh_StartPoint.hxx".}

























