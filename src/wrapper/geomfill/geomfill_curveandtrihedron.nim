import ../tcolgp/tcolgp_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import geomfill_types





##  Created on: 1997-12-02
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





proc newGeomFillCurveAndTrihedron*(trihedron: Handle[GeomFillTrihedronLaw]): GeomFillCurveAndTrihedron {.
    cdecl, constructor, importcpp: "GeomFill_CurveAndTrihedron(@)",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc setCurve*(this: var GeomFillCurveAndTrihedron; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "SetCurve", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getCurve*(this: GeomFillCurveAndTrihedron): Handle[Adaptor3dHCurve] {.
    noSideEffect, cdecl, importcpp: "GetCurve", header: "GeomFill_CurveAndTrihedron.hxx".}
proc setTrsf*(this: var GeomFillCurveAndTrihedron; transfo: gp_Mat) {.cdecl,
    importcpp: "SetTrsf", header: "GeomFill_CurveAndTrihedron.hxx".}
proc copy*(this: GeomFillCurveAndTrihedron): Handle[GeomFillLocationLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "GeomFill_CurveAndTrihedron.hxx".}
proc d0*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var gp_Mat; v: var gp_Vec): bool {.
    cdecl, importcpp: "D0", header: "GeomFill_CurveAndTrihedron.hxx".}
proc d0*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var gp_Mat; v: var gp_Vec;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc d1*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var gp_Mat; v: var gp_Vec;
        dm: var gp_Mat; dv: var gp_Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc d2*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var gp_Mat; v: var gp_Vec;
        dm: var gp_Mat; dv: var gp_Vec; d2m: var gp_Mat; d2v: var gp_Vec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D2",
    header: "GeomFill_CurveAndTrihedron.hxx".}
proc nbIntervals*(this: GeomFillCurveAndTrihedron; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "GeomFill_CurveAndTrihedron.hxx".}
proc intervals*(this: GeomFillCurveAndTrihedron; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "GeomFill_CurveAndTrihedron.hxx".}
proc setInterval*(this: var GeomFillCurveAndTrihedron; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getInterval*(this: GeomFillCurveAndTrihedron; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getDomain*(this: GeomFillCurveAndTrihedron; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getMaximalNorm*(this: var GeomFillCurveAndTrihedron): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", header: "GeomFill_CurveAndTrihedron.hxx".}
proc getAverageLaw*(this: var GeomFillCurveAndTrihedron; am: var gp_Mat; av: var gp_Vec) {.
    cdecl, importcpp: "GetAverageLaw", header: "GeomFill_CurveAndTrihedron.hxx".}
proc isTranslation*(this: GeomFillCurveAndTrihedron; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsTranslation", header: "GeomFill_CurveAndTrihedron.hxx".}
proc isRotation*(this: GeomFillCurveAndTrihedron; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsRotation", header: "GeomFill_CurveAndTrihedron.hxx".}
proc rotation*(this: GeomFillCurveAndTrihedron; center: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "Rotation", header: "GeomFill_CurveAndTrihedron.hxx".}


