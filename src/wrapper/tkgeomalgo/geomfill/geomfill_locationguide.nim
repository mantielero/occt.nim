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

discard "forward decl of GeomFill_TrihedronWithGuide"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_LocationGuide"
type
  HandleGeomFillLocationGuide* = Handle[GeomFillLocationGuide]
  GeomFillLocationGuide* {.importcpp: "GeomFill_LocationGuide",
                          header: "GeomFill_LocationGuide.hxx", bycopy.} = object of GeomFillLocationLaw


proc newGeomFillLocationGuide*(triedre: Handle[GeomFillTrihedronWithGuide]): GeomFillLocationGuide {.
    cdecl, constructor, importcpp: "GeomFill_LocationGuide(@)", dynlib: tkgeomalgo.}
proc set*(this: var GeomFillLocationGuide; section: Handle[GeomFillSectionLaw];
         rotat: bool; sFirst: cfloat; sLast: cfloat; precAngle: cfloat;
         lastAngle: var cfloat) {.cdecl, importcpp: "Set", dynlib: tkgeomalgo.}
proc eraseRotation*(this: var GeomFillLocationGuide) {.cdecl,
    importcpp: "EraseRotation", dynlib: tkgeomalgo.}
proc setCurve*(this: var GeomFillLocationGuide; c: Handle[Adaptor3dHCurve]) {.cdecl,
    importcpp: "SetCurve", dynlib: tkgeomalgo.}
proc getCurve*(this: GeomFillLocationGuide): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "GetCurve", dynlib: tkgeomalgo.}
proc setTrsf*(this: var GeomFillLocationGuide; transfo: Mat) {.cdecl,
    importcpp: "SetTrsf", dynlib: tkgeomalgo.}
proc copy*(this: GeomFillLocationGuide): Handle[GeomFillLocationLaw] {.noSideEffect,
    cdecl, importcpp: "Copy", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillLocationGuide; param: cfloat; m: var Mat; v: var Vec): bool {.
    cdecl, importcpp: "D0", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillLocationGuide; param: cfloat; m: var Mat; v: var Vec;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillLocationGuide; param: cfloat; m: var Mat; v: var Vec;
        dm: var Mat; dv: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillLocationGuide; param: cfloat; m: var Mat; v: var Vec;
        dm: var Mat; dv: var Vec; d2m: var Mat; d2v: var Vec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D2",
    dynlib: tkgeomalgo.}
proc hasFirstRestriction*(this: GeomFillLocationGuide): bool {.noSideEffect, cdecl,
    importcpp: "HasFirstRestriction", dynlib: tkgeomalgo.}
proc hasLastRestriction*(this: GeomFillLocationGuide): bool {.noSideEffect, cdecl,
    importcpp: "HasLastRestriction", dynlib: tkgeomalgo.}
proc traceNumber*(this: GeomFillLocationGuide): cint {.noSideEffect, cdecl,
    importcpp: "TraceNumber", dynlib: tkgeomalgo.}
proc errorStatus*(this: GeomFillLocationGuide): GeomFillPipeError {.noSideEffect,
    cdecl, importcpp: "ErrorStatus", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillLocationGuide; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillLocationGuide; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillLocationGuide; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getInterval*(this: GeomFillLocationGuide; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", dynlib: tkgeomalgo.}
proc getDomain*(this: GeomFillLocationGuide; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", dynlib: tkgeomalgo.}
proc setTolerance*(this: var GeomFillLocationGuide; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerance", dynlib: tkgeomalgo.}
proc resolution*(this: GeomFillLocationGuide; index: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkgeomalgo.}
proc getMaximalNorm*(this: var GeomFillLocationGuide): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", dynlib: tkgeomalgo.}
proc getAverageLaw*(this: var GeomFillLocationGuide; am: var Mat; av: var Vec) {.cdecl,
    importcpp: "GetAverageLaw", dynlib: tkgeomalgo.}
proc isTranslation*(this: GeomFillLocationGuide; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsTranslation", dynlib: tkgeomalgo.}
proc isRotation*(this: GeomFillLocationGuide; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsRotation", dynlib: tkgeomalgo.}
proc rotation*(this: GeomFillLocationGuide; center: var Pnt) {.noSideEffect, cdecl,
    importcpp: "Rotation", dynlib: tkgeomalgo.}
proc section*(this: GeomFillLocationGuide): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Section", dynlib: tkgeomalgo.}
proc guide*(this: GeomFillLocationGuide): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "Guide", dynlib: tkgeomalgo.}
proc setOrigine*(this: var GeomFillLocationGuide; param1: cfloat; param2: cfloat) {.
    cdecl, importcpp: "SetOrigine", dynlib: tkgeomalgo.}
proc computeAutomaticLaw*(this: GeomFillLocationGuide;
                         parAndRad: var Handle[TColgpHArray1OfPnt2d]): GeomFillPipeError {.
    noSideEffect, cdecl, importcpp: "ComputeAutomaticLaw", dynlib: tkgeomalgo.}