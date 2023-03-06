import ../tcolgp/tcolgp_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geom/geom_types
import ../geomabs/geomabs_types
import geomfill_types





##  Created on: 1998-07-08
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



proc newGeomFillLocationGuide*(triedre: Handle[GeomFillTrihedronWithGuide]): GeomFillLocationGuide {.
    cdecl, constructor, importcpp: "GeomFill_LocationGuide(@)", header: "GeomFill_LocationGuide.hxx".}
proc set*(this: var GeomFillLocationGuide; section: Handle[GeomFillSectionLaw];
         rotat: bool; sFirst: cfloat; sLast: cfloat; precAngle: cfloat;
         lastAngle: var cfloat) {.cdecl, importcpp: "Set", header: "GeomFill_LocationGuide.hxx".}
proc eraseRotation*(this: var GeomFillLocationGuide) {.cdecl,
    importcpp: "EraseRotation", header: "GeomFill_LocationGuide.hxx".}
proc setCurve*(this: var GeomFillLocationGuide; c: Handle[Adaptor3dHCurve]) {.cdecl,
    importcpp: "SetCurve", header: "GeomFill_LocationGuide.hxx".}
proc getCurve*(this: GeomFillLocationGuide): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "GetCurve", header: "GeomFill_LocationGuide.hxx".}
proc setTrsf*(this: var GeomFillLocationGuide; transfo: MatObj) {.cdecl,
    importcpp: "SetTrsf", header: "GeomFill_LocationGuide.hxx".}
proc copy*(this: GeomFillLocationGuide): Handle[GeomFillLocationLaw] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "GeomFill_LocationGuide.hxx".}
proc d0*(this: var GeomFillLocationGuide; param: cfloat; m: var MatObj; v: var VecObj): bool {.
    cdecl, importcpp: "D0", header: "GeomFill_LocationGuide.hxx".}
proc d0*(this: var GeomFillLocationGuide; param: cfloat; m: var MatObj; v: var VecObj;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_LocationGuide.hxx".}
proc d1*(this: var GeomFillLocationGuide; param: cfloat; m: var MatObj; v: var VecObj;
        dm: var MatObj; dv: var VecObj; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    header: "GeomFill_LocationGuide.hxx".}
proc d2*(this: var GeomFillLocationGuide; param: cfloat; m: var MatObj; v: var VecObj;
        dm: var MatObj; dv: var VecObj; d2m: var MatObj; d2v: var VecObj;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D2",
    header: "GeomFill_LocationGuide.hxx".}
proc hasFirstRestriction*(this: GeomFillLocationGuide): bool {.noSideEffect, cdecl,
    importcpp: "HasFirstRestriction", header: "GeomFill_LocationGuide.hxx".}
proc hasLastRestriction*(this: GeomFillLocationGuide): bool {.noSideEffect, cdecl,
    importcpp: "HasLastRestriction", header: "GeomFill_LocationGuide.hxx".}
proc traceNumber*(this: GeomFillLocationGuide): cint {.noSideEffect, cdecl,
    importcpp: "TraceNumber", header: "GeomFill_LocationGuide.hxx".}
proc errorStatus*(this: GeomFillLocationGuide): GeomFillPipeError {.noSideEffect,
    cdecl, importcpp: "ErrorStatus", header: "GeomFill_LocationGuide.hxx".}
proc nbIntervals*(this: GeomFillLocationGuide; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "GeomFill_LocationGuide.hxx".}
proc intervals*(this: GeomFillLocationGuide; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_LocationGuide.hxx".}
proc setInterval*(this: var GeomFillLocationGuide; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", header: "GeomFill_LocationGuide.hxx".}
proc getInterval*(this: GeomFillLocationGuide; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "GeomFill_LocationGuide.hxx".}
proc getDomain*(this: GeomFillLocationGuide; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", header: "GeomFill_LocationGuide.hxx".}
proc setTolerance*(this: var GeomFillLocationGuide; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerance", header: "GeomFill_LocationGuide.hxx".}
proc resolution*(this: GeomFillLocationGuide; index: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "GeomFill_LocationGuide.hxx".}
proc getMaximalNorm*(this: var GeomFillLocationGuide): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationGuide.hxx".}
proc getAverageLaw*(this: var GeomFillLocationGuide; am: var MatObj; av: var VecObj) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_LocationGuide.hxx".}
proc isTranslation*(this: GeomFillLocationGuide; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsTranslation", header: "GeomFill_LocationGuide.hxx".}
proc isRotation*(this: GeomFillLocationGuide; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsRotation", header: "GeomFill_LocationGuide.hxx".}
proc rotation*(this: GeomFillLocationGuide; center: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "Rotation", header: "GeomFill_LocationGuide.hxx".}
proc section*(this: GeomFillLocationGuide): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Section", header: "GeomFill_LocationGuide.hxx".}
proc guide*(this: GeomFillLocationGuide): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "Guide", header: "GeomFill_LocationGuide.hxx".}
proc setOrigine*(this: var GeomFillLocationGuide; param1: cfloat; param2: cfloat) {.
    cdecl, importcpp: "SetOrigine", header: "GeomFill_LocationGuide.hxx".}
proc computeAutomaticLaw*(this: GeomFillLocationGuide;
                         parAndRad: var Handle[TColgpHArray1OfPnt2d]): GeomFillPipeError {.
    noSideEffect, cdecl, importcpp: "ComputeAutomaticLaw", header: "GeomFill_LocationGuide.hxx".}


