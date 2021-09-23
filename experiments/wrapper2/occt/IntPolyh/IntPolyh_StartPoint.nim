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

import
  ../Standard/Standard

discard "forward decl of IntPolyh_Triangle"
type
  IntPolyh_StartPoint* {.importcpp: "IntPolyh_StartPoint",
                        header: "IntPolyh_StartPoint.hxx", bycopy.} = object


proc constructIntPolyh_StartPoint*(): IntPolyh_StartPoint {.constructor,
    importcpp: "IntPolyh_StartPoint(@)", header: "IntPolyh_StartPoint.hxx".}
proc constructIntPolyh_StartPoint*(xx: Standard_Real; yy: Standard_Real;
                                  zz: Standard_Real; uu1: Standard_Real;
                                  vv1: Standard_Real; uu2: Standard_Real;
                                  vv2: Standard_Real; T1: Standard_Integer;
                                  E1: Standard_Integer; LAM1: Standard_Real;
                                  T2: Standard_Integer; E2: Standard_Integer;
                                  LAM2: Standard_Real; List: Standard_Integer): IntPolyh_StartPoint {.
    constructor, importcpp: "IntPolyh_StartPoint(@)",
    header: "IntPolyh_StartPoint.hxx".}
proc X*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect, importcpp: "X",
    header: "IntPolyh_StartPoint.hxx".}
proc Y*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect, importcpp: "Y",
    header: "IntPolyh_StartPoint.hxx".}
proc Z*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect, importcpp: "Z",
    header: "IntPolyh_StartPoint.hxx".}
proc U1*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect, importcpp: "U1",
    header: "IntPolyh_StartPoint.hxx".}
proc V1*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect, importcpp: "V1",
    header: "IntPolyh_StartPoint.hxx".}
proc U2*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect, importcpp: "U2",
    header: "IntPolyh_StartPoint.hxx".}
proc V2*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect, importcpp: "V2",
    header: "IntPolyh_StartPoint.hxx".}
proc T1*(this: IntPolyh_StartPoint): Standard_Integer {.noSideEffect,
    importcpp: "T1", header: "IntPolyh_StartPoint.hxx".}
proc E1*(this: IntPolyh_StartPoint): Standard_Integer {.noSideEffect,
    importcpp: "E1", header: "IntPolyh_StartPoint.hxx".}
proc Lambda1*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect,
    importcpp: "Lambda1", header: "IntPolyh_StartPoint.hxx".}
proc T2*(this: IntPolyh_StartPoint): Standard_Integer {.noSideEffect,
    importcpp: "T2", header: "IntPolyh_StartPoint.hxx".}
proc E2*(this: IntPolyh_StartPoint): Standard_Integer {.noSideEffect,
    importcpp: "E2", header: "IntPolyh_StartPoint.hxx".}
proc Lambda2*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect,
    importcpp: "Lambda2", header: "IntPolyh_StartPoint.hxx".}
proc GetAngle*(this: IntPolyh_StartPoint): Standard_Real {.noSideEffect,
    importcpp: "GetAngle", header: "IntPolyh_StartPoint.hxx".}
proc ChainList*(this: IntPolyh_StartPoint): Standard_Integer {.noSideEffect,
    importcpp: "ChainList", header: "IntPolyh_StartPoint.hxx".}
proc GetEdgePoints*(this: IntPolyh_StartPoint; Triangle: IntPolyh_Triangle;
                   FirstEdgePoint: var Standard_Integer;
                   SecondEdgePoint: var Standard_Integer;
                   LastPoint: var Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetEdgePoints", header: "IntPolyh_StartPoint.hxx".}
proc SetXYZ*(this: var IntPolyh_StartPoint; XX: Standard_Real; YY: Standard_Real;
            ZZ: Standard_Real) {.importcpp: "SetXYZ",
                               header: "IntPolyh_StartPoint.hxx".}
proc SetUV1*(this: var IntPolyh_StartPoint; UU1: Standard_Real; VV1: Standard_Real) {.
    importcpp: "SetUV1", header: "IntPolyh_StartPoint.hxx".}
proc SetUV2*(this: var IntPolyh_StartPoint; UU2: Standard_Real; VV2: Standard_Real) {.
    importcpp: "SetUV2", header: "IntPolyh_StartPoint.hxx".}
proc SetEdge1*(this: var IntPolyh_StartPoint; IE1: Standard_Integer) {.
    importcpp: "SetEdge1", header: "IntPolyh_StartPoint.hxx".}
proc SetLambda1*(this: var IntPolyh_StartPoint; LAM1: Standard_Real) {.
    importcpp: "SetLambda1", header: "IntPolyh_StartPoint.hxx".}
proc SetEdge2*(this: var IntPolyh_StartPoint; IE2: Standard_Integer) {.
    importcpp: "SetEdge2", header: "IntPolyh_StartPoint.hxx".}
proc SetLambda2*(this: var IntPolyh_StartPoint; LAM2: Standard_Real) {.
    importcpp: "SetLambda2", header: "IntPolyh_StartPoint.hxx".}
proc SetCoupleValue*(this: var IntPolyh_StartPoint; IT1: Standard_Integer;
                    IT2: Standard_Integer) {.importcpp: "SetCoupleValue",
    header: "IntPolyh_StartPoint.hxx".}
proc SetAngle*(this: var IntPolyh_StartPoint; ang: Standard_Real) {.
    importcpp: "SetAngle", header: "IntPolyh_StartPoint.hxx".}
proc SetChainList*(this: var IntPolyh_StartPoint; ChList: Standard_Integer) {.
    importcpp: "SetChainList", header: "IntPolyh_StartPoint.hxx".}
proc CheckSameSP*(this: IntPolyh_StartPoint; SP: IntPolyh_StartPoint): Standard_Integer {.
    noSideEffect, importcpp: "CheckSameSP", header: "IntPolyh_StartPoint.hxx".}
proc Dump*(this: IntPolyh_StartPoint) {.noSideEffect, importcpp: "Dump",
                                     header: "IntPolyh_StartPoint.hxx".}
proc Dump*(this: IntPolyh_StartPoint; i: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "IntPolyh_StartPoint.hxx".}