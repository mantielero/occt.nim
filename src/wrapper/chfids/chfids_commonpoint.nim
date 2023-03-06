import ../gp/gp_types
import ../topabs/topabs_types
import ../topods/topods_types
import chfids_types





##  Created on: 1993-11-29
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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



proc newChFiDS_CommonPoint*(): ChFiDS_CommonPoint {.cdecl, constructor,
    importcpp: "ChFiDS_CommonPoint(@)", header: "ChFiDS_CommonPoint.hxx".}
proc reset*(this: var ChFiDS_CommonPoint) {.cdecl, importcpp: "Reset", header: "ChFiDS_CommonPoint.hxx".}
proc setVertex*(this: var ChFiDS_CommonPoint; theVertex: TopoDS_Vertex) {.cdecl,
    importcpp: "SetVertex", header: "ChFiDS_CommonPoint.hxx".}
proc setArc*(this: var ChFiDS_CommonPoint; tol: cfloat; a: TopoDS_Edge; param: cfloat;
            tArc: TopAbsOrientation) {.cdecl, importcpp: "SetArc", header: "ChFiDS_CommonPoint.hxx".}
proc setParameter*(this: var ChFiDS_CommonPoint; param: cfloat) {.cdecl,
    importcpp: "SetParameter", header: "ChFiDS_CommonPoint.hxx".}
proc setPoint*(this: var ChFiDS_CommonPoint; thePoint: gp_Pnt) {.cdecl,
    importcpp: "SetPoint", header: "ChFiDS_CommonPoint.hxx".}
proc setVector*(this: var ChFiDS_CommonPoint; theVector: VecObj) {.cdecl,
    importcpp: "SetVector", header: "ChFiDS_CommonPoint.hxx".}
proc setTolerance*(this: var ChFiDS_CommonPoint; tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "ChFiDS_CommonPoint.hxx".}
proc tolerance*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "ChFiDS_CommonPoint.hxx".}
proc isVertex*(this: ChFiDS_CommonPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsVertex", header: "ChFiDS_CommonPoint.hxx".}
proc vertex*(this: ChFiDS_CommonPoint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex", header: "ChFiDS_CommonPoint.hxx".}
proc isOnArc*(this: ChFiDS_CommonPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsOnArc", header: "ChFiDS_CommonPoint.hxx".}
proc arc*(this: ChFiDS_CommonPoint): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Arc", header: "ChFiDS_CommonPoint.hxx".}
proc transitionOnArc*(this: ChFiDS_CommonPoint): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "TransitionOnArc", header: "ChFiDS_CommonPoint.hxx".}
proc parameterOnArc*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnArc", header: "ChFiDS_CommonPoint.hxx".}
proc parameter*(this: ChFiDS_CommonPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "ChFiDS_CommonPoint.hxx".}
proc point*(this: ChFiDS_CommonPoint): gp_Pnt {.noSideEffect, cdecl, importcpp: "Point",
    header: "ChFiDS_CommonPoint.hxx".}
proc hasVector*(this: ChFiDS_CommonPoint): bool {.noSideEffect, cdecl,
    importcpp: "HasVector", header: "ChFiDS_CommonPoint.hxx".}
proc vector*(this: ChFiDS_CommonPoint): VecObj {.noSideEffect, cdecl,
    importcpp: "Vector", header: "ChFiDS_CommonPoint.hxx".}


