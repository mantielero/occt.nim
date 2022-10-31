import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types
import geomfill_types



##  Created on: 1998-06-23
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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





proc newGeomFillGuideTrihedronAC*(guide: Handle[Adaptor3dHCurve]): GeomFillGuideTrihedronAC {.
    cdecl, constructor, importcpp: "GeomFill_GuideTrihedronAC(@)",
    header: "GeomFill_GuideTrihedronAC.hxx".}
proc setCurve*(this: var GeomFillGuideTrihedronAC; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "SetCurve", header: "GeomFill_GuideTrihedronAC.hxx".}
proc copy*(this: GeomFillGuideTrihedronAC): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "GeomFill_GuideTrihedronAC.hxx".}
proc guide*(this: GeomFillGuideTrihedronAC): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "Guide", header: "GeomFill_GuideTrihedronAC.hxx".}
proc d0*(this: var GeomFillGuideTrihedronAC; param: cfloat; tangent: var VecObj;
        normal: var VecObj; biNormal: var VecObj): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_GuideTrihedronAC.hxx".}
proc d1*(this: var GeomFillGuideTrihedronAC; param: cfloat; tangent: var VecObj;
        dTangent: var VecObj; normal: var VecObj; dNormal: var VecObj; biNormal: var VecObj;
        dBiNormal: var VecObj): bool {.cdecl, importcpp: "D1", header: "GeomFill_GuideTrihedronAC.hxx".}
proc d2*(this: var GeomFillGuideTrihedronAC; param: cfloat; tangent: var VecObj;
        dTangent: var VecObj; d2Tangent: var VecObj; normal: var VecObj; dNormal: var VecObj;
        d2Normal: var VecObj; biNormal: var VecObj; dBiNormal: var VecObj; d2BiNormal: var VecObj): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_GuideTrihedronAC.hxx".}
proc nbIntervals*(this: GeomFillGuideTrihedronAC; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "GeomFill_GuideTrihedronAC.hxx".}
proc intervals*(this: GeomFillGuideTrihedronAC; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_GuideTrihedronAC.hxx".}
proc setInterval*(this: var GeomFillGuideTrihedronAC; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", header: "GeomFill_GuideTrihedronAC.hxx".}
proc getAverageLaw*(this: var GeomFillGuideTrihedronAC; aTangent: var VecObj;
                   aNormal: var VecObj; aBiNormal: var VecObj) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_GuideTrihedronAC.hxx".}
proc isConstant*(this: GeomFillGuideTrihedronAC): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "GeomFill_GuideTrihedronAC.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillGuideTrihedronAC): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_GuideTrihedronAC.hxx".}
proc origine*(this: var GeomFillGuideTrihedronAC; orACR1: cfloat; orACR2: cfloat) {.
    cdecl, importcpp: "Origine", header: "GeomFill_GuideTrihedronAC.hxx".}

