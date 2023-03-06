import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import geomfill_types





##  Created on: 1997-12-19
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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





proc newGeomFillCorrectedFrenet*(): GeomFillCorrectedFrenet {.cdecl, constructor,
    importcpp: "GeomFill_CorrectedFrenet(@)", header: "GeomFill_CorrectedFrenet.hxx".}
proc newGeomFillCorrectedFrenet*(forEvaluation: bool): GeomFillCorrectedFrenet {.
    cdecl, constructor, importcpp: "GeomFill_CorrectedFrenet(@)", header: "GeomFill_CorrectedFrenet.hxx".}
proc copy*(this: GeomFillCorrectedFrenet): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "GeomFill_CorrectedFrenet.hxx".}
proc setCurve*(this: var GeomFillCorrectedFrenet; c: Handle[Adaptor3dHCurve]) {.cdecl,
    importcpp: "SetCurve", header: "GeomFill_CorrectedFrenet.hxx".}
proc setInterval*(this: var GeomFillCorrectedFrenet; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", header: "GeomFill_CorrectedFrenet.hxx".}
proc d0*(this: var GeomFillCorrectedFrenet; param: cfloat; tangent: var gp_Vec;
        normal: var gp_Vec; biNormal: var gp_Vec): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc d1*(this: var GeomFillCorrectedFrenet; param: cfloat; tangent: var gp_Vec;
        dTangent: var gp_Vec; normal: var gp_Vec; dNormal: var gp_Vec; biNormal: var gp_Vec;
        dBiNormal: var gp_Vec): bool {.cdecl, importcpp: "D1", header: "GeomFill_CorrectedFrenet.hxx".}
proc d2*(this: var GeomFillCorrectedFrenet; param: cfloat; tangent: var gp_Vec;
        dTangent: var gp_Vec; d2Tangent: var gp_Vec; normal: var gp_Vec; dNormal: var gp_Vec;
        d2Normal: var gp_Vec; biNormal: var gp_Vec; dBiNormal: var gp_Vec; d2BiNormal: var gp_Vec): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_CorrectedFrenet.hxx".}
proc nbIntervals*(this: GeomFillCorrectedFrenet; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "GeomFill_CorrectedFrenet.hxx".}
proc intervals*(this: GeomFillCorrectedFrenet; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_CorrectedFrenet.hxx".}
proc evaluateBestMode*(this: var GeomFillCorrectedFrenet): GeomFillTrihedron {.cdecl,
    importcpp: "EvaluateBestMode", header: "GeomFill_CorrectedFrenet.hxx".}
proc getAverageLaw*(this: var GeomFillCorrectedFrenet; aTangent: var gp_Vec;
                   aNormal: var gp_Vec; aBiNormal: var gp_Vec) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_CorrectedFrenet.hxx".}
proc isConstant*(this: GeomFillCorrectedFrenet): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "GeomFill_CorrectedFrenet.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillCorrectedFrenet): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_CorrectedFrenet.hxx".}


