##  Created on: 1991-02-21
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Extrema_POnCurv"
type
  ExtremaExtPElC* {.importcpp: "Extrema_ExtPElC", header: "Extrema_ExtPElC.hxx",
                   bycopy.} = object


proc newExtremaExtPElC*(): ExtremaExtPElC {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC(@)", dynlib: tkgeombase.}
proc newExtremaExtPElC*(p: Pnt; c: Lin; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC; p: Pnt; c: Lin; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElC*(p: Pnt; c: Circ; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC; p: Pnt; c: Circ; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElC*(p: Pnt; c: Elips; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC; p: Pnt; c: Elips; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElC*(p: Pnt; c: Hypr; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC; p: Pnt; c: Hypr; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElC*(p: Pnt; c: Parab; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC; p: Pnt; c: Parab; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtPElC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtPElC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtPElC; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc isMin*(this: ExtremaExtPElC; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", dynlib: tkgeombase.}
proc point*(this: ExtremaExtPElC; n: cint): ExtremaPOnCurv {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}