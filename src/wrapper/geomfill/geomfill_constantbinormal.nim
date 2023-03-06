import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import geomfill_types





##  Created on: 1997-12-09
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





proc newGeomFillConstantBiNormal*(biNormal: gp_Dir): GeomFillConstantBiNormal {.cdecl,
    constructor, importcpp: "GeomFill_ConstantBiNormal(@)", header: "GeomFill_ConstantBiNormal.hxx".}
proc copy*(this: GeomFillConstantBiNormal): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "GeomFill_ConstantBiNormal.hxx".}
proc setCurve*(this: var GeomFillConstantBiNormal; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "SetCurve", header: "GeomFill_ConstantBiNormal.hxx".}
proc d0*(this: var GeomFillConstantBiNormal; param: cfloat; tangent: var gp_Vec;
        normal: var gp_Vec; biNormal: var gp_Vec): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_ConstantBiNormal.hxx".}
proc d1*(this: var GeomFillConstantBiNormal; param: cfloat; tangent: var gp_Vec;
        dTangent: var gp_Vec; normal: var gp_Vec; dNormal: var gp_Vec; biNormal: var gp_Vec;
        dBiNormal: var gp_Vec): bool {.cdecl, importcpp: "D1", header: "GeomFill_ConstantBiNormal.hxx".}
proc d2*(this: var GeomFillConstantBiNormal; param: cfloat; tangent: var gp_Vec;
        dTangent: var gp_Vec; d2Tangent: var gp_Vec; normal: var gp_Vec; dNormal: var gp_Vec;
        d2Normal: var gp_Vec; biNormal: var gp_Vec; dBiNormal: var gp_Vec; d2BiNormal: var gp_Vec): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_ConstantBiNormal.hxx".}
proc nbIntervals*(this: GeomFillConstantBiNormal; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "GeomFill_ConstantBiNormal.hxx".}
proc intervals*(this: GeomFillConstantBiNormal; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_ConstantBiNormal.hxx".}
proc getAverageLaw*(this: var GeomFillConstantBiNormal; aTangent: var gp_Vec;
                   aNormal: var gp_Vec; aBiNormal: var gp_Vec) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_ConstantBiNormal.hxx".}
proc isConstant*(this: GeomFillConstantBiNormal): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "GeomFill_ConstantBiNormal.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillConstantBiNormal): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_ConstantBiNormal.hxx".}


