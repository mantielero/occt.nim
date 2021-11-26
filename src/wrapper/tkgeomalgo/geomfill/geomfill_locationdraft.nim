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

discard "forward decl of GeomFill_DraftTrihedron"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_LocationDraft"
type
  HandleGeomFillLocationDraft* = Handle[GeomFillLocationDraft]
  GeomFillLocationDraft* {.importcpp: "GeomFill_LocationDraft",
                          header: "GeomFill_LocationDraft.hxx", bycopy.} = object of GeomFillLocationLaw


proc newGeomFillLocationDraft*(direction: Dir; angle: cfloat): GeomFillLocationDraft {.
    cdecl, constructor, importcpp: "GeomFill_LocationDraft(@)", dynlib: tkgeomalgo.}
proc setStopSurf*(this: var GeomFillLocationDraft; surf: Handle[Adaptor3dHSurface]) {.
    cdecl, importcpp: "SetStopSurf", dynlib: tkgeomalgo.}
proc setAngle*(this: var GeomFillLocationDraft; angle: cfloat) {.cdecl,
    importcpp: "SetAngle", dynlib: tkgeomalgo.}
proc setCurve*(this: var GeomFillLocationDraft; c: Handle[Adaptor3dHCurve]) {.cdecl,
    importcpp: "SetCurve", dynlib: tkgeomalgo.}
proc getCurve*(this: GeomFillLocationDraft): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "GetCurve", dynlib: tkgeomalgo.}
proc setTrsf*(this: var GeomFillLocationDraft; transfo: Mat) {.cdecl,
    importcpp: "SetTrsf", dynlib: tkgeomalgo.}
proc copy*(this: GeomFillLocationDraft): Handle[GeomFillLocationLaw] {.noSideEffect,
    cdecl, importcpp: "Copy", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillLocationDraft; param: cfloat; m: var Mat; v: var Vec): bool {.
    cdecl, importcpp: "D0", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillLocationDraft; param: cfloat; m: var Mat; v: var Vec;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillLocationDraft; param: cfloat; m: var Mat; v: var Vec;
        dm: var Mat; dv: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillLocationDraft; param: cfloat; m: var Mat; v: var Vec;
        dm: var Mat; dv: var Vec; d2m: var Mat; d2v: var Vec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D2",
    dynlib: tkgeomalgo.}
proc hasFirstRestriction*(this: GeomFillLocationDraft): bool {.noSideEffect, cdecl,
    importcpp: "HasFirstRestriction", dynlib: tkgeomalgo.}
proc hasLastRestriction*(this: GeomFillLocationDraft): bool {.noSideEffect, cdecl,
    importcpp: "HasLastRestriction", dynlib: tkgeomalgo.}
proc traceNumber*(this: GeomFillLocationDraft): cint {.noSideEffect, cdecl,
    importcpp: "TraceNumber", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillLocationDraft; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillLocationDraft; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillLocationDraft; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getInterval*(this: GeomFillLocationDraft; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", dynlib: tkgeomalgo.}
proc getDomain*(this: GeomFillLocationDraft; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", dynlib: tkgeomalgo.}
proc resolution*(this: GeomFillLocationDraft; index: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkgeomalgo.}
proc getMaximalNorm*(this: var GeomFillLocationDraft): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", dynlib: tkgeomalgo.}
proc getAverageLaw*(this: var GeomFillLocationDraft; am: var Mat; av: var Vec) {.cdecl,
    importcpp: "GetAverageLaw", dynlib: tkgeomalgo.}
proc isTranslation*(this: GeomFillLocationDraft; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsTranslation", dynlib: tkgeomalgo.}
proc isRotation*(this: GeomFillLocationDraft; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsRotation", dynlib: tkgeomalgo.}
proc rotation*(this: GeomFillLocationDraft; center: var Pnt) {.noSideEffect, cdecl,
    importcpp: "Rotation", dynlib: tkgeomalgo.}
proc isIntersec*(this: GeomFillLocationDraft): bool {.noSideEffect, cdecl,
    importcpp: "IsIntersec", dynlib: tkgeomalgo.}
proc direction*(this: GeomFillLocationDraft): Dir {.noSideEffect, cdecl,
    importcpp: "Direction", dynlib: tkgeomalgo.}