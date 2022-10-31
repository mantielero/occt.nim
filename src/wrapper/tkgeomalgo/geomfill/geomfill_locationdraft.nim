import ../../tkmath/tcolgp/tcolgp_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types
import geomfill_types



##  Created on: 1998-04-21
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



proc newGeomFillLocationDraft*(direction: DirObj; angle: cfloat): GeomFillLocationDraft {.
    cdecl, constructor, importcpp: "GeomFill_LocationDraft(@)", header: "GeomFill_LocationDraft.hxx".}
proc setStopSurf*(this: var GeomFillLocationDraft; surf: Handle[Adaptor3dHSurface]) {.
    cdecl, importcpp: "SetStopSurf", header: "GeomFill_LocationDraft.hxx".}
proc setAngle*(this: var GeomFillLocationDraft; angle: cfloat) {.cdecl,
    importcpp: "SetAngle", header: "GeomFill_LocationDraft.hxx".}
proc setCurve*(this: var GeomFillLocationDraft; c: Handle[Adaptor3dHCurve]) {.cdecl,
    importcpp: "SetCurve", header: "GeomFill_LocationDraft.hxx".}
proc getCurve*(this: GeomFillLocationDraft): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "GetCurve", header: "GeomFill_LocationDraft.hxx".}
proc setTrsf*(this: var GeomFillLocationDraft; transfo: MatObj) {.cdecl,
    importcpp: "SetTrsf", header: "GeomFill_LocationDraft.hxx".}
proc copy*(this: GeomFillLocationDraft): Handle[GeomFillLocationLaw] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "GeomFill_LocationDraft.hxx".}
proc d0*(this: var GeomFillLocationDraft; param: cfloat; m: var MatObj; v: var VecObj): bool {.
    cdecl, importcpp: "D0", header: "GeomFill_LocationDraft.hxx".}
proc d0*(this: var GeomFillLocationDraft; param: cfloat; m: var MatObj; v: var VecObj;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_LocationDraft.hxx".}
proc d1*(this: var GeomFillLocationDraft; param: cfloat; m: var MatObj; v: var VecObj;
        dm: var MatObj; dv: var VecObj; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    header: "GeomFill_LocationDraft.hxx".}
proc d2*(this: var GeomFillLocationDraft; param: cfloat; m: var MatObj; v: var VecObj;
        dm: var MatObj; dv: var VecObj; d2m: var MatObj; d2v: var VecObj;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D2",
    header: "GeomFill_LocationDraft.hxx".}
proc hasFirstRestriction*(this: GeomFillLocationDraft): bool {.noSideEffect, cdecl,
    importcpp: "HasFirstRestriction", header: "GeomFill_LocationDraft.hxx".}
proc hasLastRestriction*(this: GeomFillLocationDraft): bool {.noSideEffect, cdecl,
    importcpp: "HasLastRestriction", header: "GeomFill_LocationDraft.hxx".}
proc traceNumber*(this: GeomFillLocationDraft): cint {.noSideEffect, cdecl,
    importcpp: "TraceNumber", header: "GeomFill_LocationDraft.hxx".}
proc nbIntervals*(this: GeomFillLocationDraft; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "GeomFill_LocationDraft.hxx".}
proc intervals*(this: GeomFillLocationDraft; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_LocationDraft.hxx".}
proc setInterval*(this: var GeomFillLocationDraft; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", header: "GeomFill_LocationDraft.hxx".}
proc getInterval*(this: GeomFillLocationDraft; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "GeomFill_LocationDraft.hxx".}
proc getDomain*(this: GeomFillLocationDraft; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", header: "GeomFill_LocationDraft.hxx".}
proc resolution*(this: GeomFillLocationDraft; index: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "GeomFill_LocationDraft.hxx".}
proc getMaximalNorm*(this: var GeomFillLocationDraft): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationDraft.hxx".}
proc getAverageLaw*(this: var GeomFillLocationDraft; am: var MatObj; av: var VecObj) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_LocationDraft.hxx".}
proc isTranslation*(this: GeomFillLocationDraft; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsTranslation", header: "GeomFill_LocationDraft.hxx".}
proc isRotation*(this: GeomFillLocationDraft; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsRotation", header: "GeomFill_LocationDraft.hxx".}
proc rotation*(this: GeomFillLocationDraft; center: var PntObj) {.noSideEffect, cdecl,
    importcpp: "Rotation", header: "GeomFill_LocationDraft.hxx".}
proc isIntersec*(this: GeomFillLocationDraft): bool {.noSideEffect, cdecl,
    importcpp: "IsIntersec", header: "GeomFill_LocationDraft.hxx".}
proc direction*(this: GeomFillLocationDraft): DirObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "GeomFill_LocationDraft.hxx".}

