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
proc constructIntPolyhStartPoint*(xx: StandardReal; yy: StandardReal;
                                 zz: StandardReal; uu1: StandardReal;
                                 vv1: StandardReal; uu2: StandardReal;
                                 vv2: StandardReal; t1: StandardInteger;
                                 e1: StandardInteger; lam1: StandardReal;
                                 t2: StandardInteger; e2: StandardInteger;
                                 lam2: StandardReal; list: StandardInteger): IntPolyhStartPoint {.
    constructor, importcpp: "IntPolyh_StartPoint(@)",
    header: "IntPolyh_StartPoint.hxx".}
proc x*(this: IntPolyhStartPoint): StandardReal {.noSideEffect, importcpp: "X",
    header: "IntPolyh_StartPoint.hxx".}
proc y*(this: IntPolyhStartPoint): StandardReal {.noSideEffect, importcpp: "Y",
    header: "IntPolyh_StartPoint.hxx".}
proc z*(this: IntPolyhStartPoint): StandardReal {.noSideEffect, importcpp: "Z",
    header: "IntPolyh_StartPoint.hxx".}
proc u1*(this: IntPolyhStartPoint): StandardReal {.noSideEffect, importcpp: "U1",
    header: "IntPolyh_StartPoint.hxx".}
proc v1*(this: IntPolyhStartPoint): StandardReal {.noSideEffect, importcpp: "V1",
    header: "IntPolyh_StartPoint.hxx".}
proc u2*(this: IntPolyhStartPoint): StandardReal {.noSideEffect, importcpp: "U2",
    header: "IntPolyh_StartPoint.hxx".}
proc v2*(this: IntPolyhStartPoint): StandardReal {.noSideEffect, importcpp: "V2",
    header: "IntPolyh_StartPoint.hxx".}
proc t1*(this: IntPolyhStartPoint): StandardInteger {.noSideEffect, importcpp: "T1",
    header: "IntPolyh_StartPoint.hxx".}
proc e1*(this: IntPolyhStartPoint): StandardInteger {.noSideEffect, importcpp: "E1",
    header: "IntPolyh_StartPoint.hxx".}
proc lambda1*(this: IntPolyhStartPoint): StandardReal {.noSideEffect,
    importcpp: "Lambda1", header: "IntPolyh_StartPoint.hxx".}
proc t2*(this: IntPolyhStartPoint): StandardInteger {.noSideEffect, importcpp: "T2",
    header: "IntPolyh_StartPoint.hxx".}
proc e2*(this: IntPolyhStartPoint): StandardInteger {.noSideEffect, importcpp: "E2",
    header: "IntPolyh_StartPoint.hxx".}
proc lambda2*(this: IntPolyhStartPoint): StandardReal {.noSideEffect,
    importcpp: "Lambda2", header: "IntPolyh_StartPoint.hxx".}
proc getAngle*(this: IntPolyhStartPoint): StandardReal {.noSideEffect,
    importcpp: "GetAngle", header: "IntPolyh_StartPoint.hxx".}
proc chainList*(this: IntPolyhStartPoint): StandardInteger {.noSideEffect,
    importcpp: "ChainList", header: "IntPolyh_StartPoint.hxx".}
proc getEdgePoints*(this: IntPolyhStartPoint; triangle: IntPolyhTriangle;
                   firstEdgePoint: var StandardInteger;
                   secondEdgePoint: var StandardInteger;
                   lastPoint: var StandardInteger): StandardInteger {.noSideEffect,
    importcpp: "GetEdgePoints", header: "IntPolyh_StartPoint.hxx".}
proc setXYZ*(this: var IntPolyhStartPoint; xx: StandardReal; yy: StandardReal;
            zz: StandardReal) {.importcpp: "SetXYZ",
                              header: "IntPolyh_StartPoint.hxx".}
proc setUV1*(this: var IntPolyhStartPoint; uu1: StandardReal; vv1: StandardReal) {.
    importcpp: "SetUV1", header: "IntPolyh_StartPoint.hxx".}
proc setUV2*(this: var IntPolyhStartPoint; uu2: StandardReal; vv2: StandardReal) {.
    importcpp: "SetUV2", header: "IntPolyh_StartPoint.hxx".}
proc setEdge1*(this: var IntPolyhStartPoint; ie1: StandardInteger) {.
    importcpp: "SetEdge1", header: "IntPolyh_StartPoint.hxx".}
proc setLambda1*(this: var IntPolyhStartPoint; lam1: StandardReal) {.
    importcpp: "SetLambda1", header: "IntPolyh_StartPoint.hxx".}
proc setEdge2*(this: var IntPolyhStartPoint; ie2: StandardInteger) {.
    importcpp: "SetEdge2", header: "IntPolyh_StartPoint.hxx".}
proc setLambda2*(this: var IntPolyhStartPoint; lam2: StandardReal) {.
    importcpp: "SetLambda2", header: "IntPolyh_StartPoint.hxx".}
proc setCoupleValue*(this: var IntPolyhStartPoint; it1: StandardInteger;
                    it2: StandardInteger) {.importcpp: "SetCoupleValue",
    header: "IntPolyh_StartPoint.hxx".}
proc setAngle*(this: var IntPolyhStartPoint; ang: StandardReal) {.
    importcpp: "SetAngle", header: "IntPolyh_StartPoint.hxx".}
proc setChainList*(this: var IntPolyhStartPoint; chList: StandardInteger) {.
    importcpp: "SetChainList", header: "IntPolyh_StartPoint.hxx".}
proc checkSameSP*(this: IntPolyhStartPoint; sp: IntPolyhStartPoint): StandardInteger {.
    noSideEffect, importcpp: "CheckSameSP", header: "IntPolyh_StartPoint.hxx".}
proc dump*(this: IntPolyhStartPoint) {.noSideEffect, importcpp: "Dump",
                                    header: "IntPolyh_StartPoint.hxx".}
proc dump*(this: IntPolyhStartPoint; i: StandardInteger) {.noSideEffect,
    importcpp: "Dump", header: "IntPolyh_StartPoint.hxx".}

