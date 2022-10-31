import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types
import geomfill_types



##  Created on: 1998-04-14
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



proc newGeomFillDraftTrihedron*(biNormal: VecObj; angle: cfloat): GeomFillDraftTrihedron {.
    cdecl, constructor, importcpp: "GeomFill_DraftTrihedron(@)", header: "GeomFill_DraftTrihedron.hxx".}
proc setAngle*(this: var GeomFillDraftTrihedron; angle: cfloat) {.cdecl,
    importcpp: "SetAngle", header: "GeomFill_DraftTrihedron.hxx".}
proc copy*(this: GeomFillDraftTrihedron): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "GeomFill_DraftTrihedron.hxx".}
proc d0*(this: var GeomFillDraftTrihedron; param: cfloat; tangent: var VecObj;
        normal: var VecObj; biNormal: var VecObj): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_DraftTrihedron.hxx".}
proc d1*(this: var GeomFillDraftTrihedron; param: cfloat; tangent: var VecObj;
        dTangent: var VecObj; normal: var VecObj; dNormal: var VecObj; biNormal: var VecObj;
        dBiNormal: var VecObj): bool {.cdecl, importcpp: "D1", header: "GeomFill_DraftTrihedron.hxx".}
proc d2*(this: var GeomFillDraftTrihedron; param: cfloat; tangent: var VecObj;
        dTangent: var VecObj; d2Tangent: var VecObj; normal: var VecObj; dNormal: var VecObj;
        d2Normal: var VecObj; biNormal: var VecObj; dBiNormal: var VecObj; d2BiNormal: var VecObj): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_DraftTrihedron.hxx".}
proc nbIntervals*(this: GeomFillDraftTrihedron; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "GeomFill_DraftTrihedron.hxx".}
proc intervals*(this: GeomFillDraftTrihedron; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_DraftTrihedron.hxx".}
proc getAverageLaw*(this: var GeomFillDraftTrihedron; aTangent: var VecObj;
                   aNormal: var VecObj; aBiNormal: var VecObj) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_DraftTrihedron.hxx".}
proc isConstant*(this: GeomFillDraftTrihedron): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "GeomFill_DraftTrihedron.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillDraftTrihedron): bool {.noSideEffect, cdecl,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_DraftTrihedron.hxx".}

