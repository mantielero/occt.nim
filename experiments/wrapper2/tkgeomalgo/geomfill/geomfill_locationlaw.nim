##  Created on: 1997-11-20
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

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_LocationLaw"
type
  HandleGeomFillLocationLaw* = Handle[GeomFillLocationLaw]

## ! To define location  law in Sweeping location is --
## ! defined   by an  Matrix  M and  an Vector  V,  and
## ! transform an point P in MP+V.

type
  GeomFillLocationLaw* {.importcpp: "GeomFill_LocationLaw",
                        header: "GeomFill_LocationLaw.hxx", bycopy.} = object of StandardTransient


proc setCurve*(this: var GeomFillLocationLaw; c: Handle[Adaptor3dHCurve]) {.cdecl,
    importcpp: "SetCurve", dynlib: tkgeomalgo.}
proc getCurve*(this: GeomFillLocationLaw): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "GetCurve", dynlib: tkgeomalgo.}
proc setTrsf*(this: var GeomFillLocationLaw; transfo: Mat) {.cdecl,
    importcpp: "SetTrsf", dynlib: tkgeomalgo.}
proc copy*(this: GeomFillLocationLaw): Handle[GeomFillLocationLaw] {.noSideEffect,
    cdecl, importcpp: "Copy", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillLocationLaw; param: cfloat; m: var Mat; v: var Vec): bool {.cdecl,
    importcpp: "D0", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillLocationLaw; param: cfloat; m: var Mat; v: var Vec;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillLocationLaw; param: cfloat; m: var Mat; v: var Vec; dm: var Mat;
        dv: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillLocationLaw; param: cfloat; m: var Mat; v: var Vec; dm: var Mat;
        dv: var Vec; d2m: var Mat; d2v: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d): bool {.
    cdecl, importcpp: "D2", dynlib: tkgeomalgo.}
proc nb2dCurves*(this: GeomFillLocationLaw): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", dynlib: tkgeomalgo.}
proc hasFirstRestriction*(this: GeomFillLocationLaw): bool {.noSideEffect, cdecl,
    importcpp: "HasFirstRestriction", dynlib: tkgeomalgo.}
proc hasLastRestriction*(this: GeomFillLocationLaw): bool {.noSideEffect, cdecl,
    importcpp: "HasLastRestriction", dynlib: tkgeomalgo.}
proc traceNumber*(this: GeomFillLocationLaw): cint {.noSideEffect, cdecl,
    importcpp: "TraceNumber", dynlib: tkgeomalgo.}
proc errorStatus*(this: GeomFillLocationLaw): GeomFillPipeError {.noSideEffect,
    cdecl, importcpp: "ErrorStatus", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillLocationLaw; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillLocationLaw; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillLocationLaw; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getInterval*(this: GeomFillLocationLaw; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", dynlib: tkgeomalgo.}
proc getDomain*(this: GeomFillLocationLaw; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", dynlib: tkgeomalgo.}
proc resolution*(this: GeomFillLocationLaw; index: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 dynlib: tkgeomalgo.}
proc setTolerance*(this: var GeomFillLocationLaw; tol3d: cfloat; tol2d: cfloat) {.cdecl,
    importcpp: "SetTolerance", dynlib: tkgeomalgo.}
proc getMaximalNorm*(this: var GeomFillLocationLaw): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", dynlib: tkgeomalgo.}
proc getAverageLaw*(this: var GeomFillLocationLaw; am: var Mat; av: var Vec) {.cdecl,
    importcpp: "GetAverageLaw", dynlib: tkgeomalgo.}
proc isTranslation*(this: GeomFillLocationLaw; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsTranslation", dynlib: tkgeomalgo.}
proc isRotation*(this: GeomFillLocationLaw; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsRotation", dynlib: tkgeomalgo.}
proc rotation*(this: GeomFillLocationLaw; center: var Pnt) {.noSideEffect, cdecl,
    importcpp: "Rotation", dynlib: tkgeomalgo.}