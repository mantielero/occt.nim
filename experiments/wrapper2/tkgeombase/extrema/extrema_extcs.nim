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
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of gp_Pnt"
type
  ExtremaExtCS* {.importcpp: "Extrema_ExtCS", header: "Extrema_ExtCS.hxx", bycopy.} = object


proc newExtremaExtCS*(): ExtremaExtCS {.cdecl, constructor,
                                     importcpp: "Extrema_ExtCS(@)",
                                     dynlib: tkgeombase.}
proc newExtremaExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface; tolC: cfloat;
                     tolS: cfloat): ExtremaExtCS {.cdecl, constructor,
    importcpp: "Extrema_ExtCS(@)", dynlib: tkgeombase.}
proc newExtremaExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface; uCinf: cfloat;
                     uCsup: cfloat; uinf: cfloat; usup: cfloat; vinf: cfloat;
                     vsup: cfloat; tolC: cfloat; tolS: cfloat): ExtremaExtCS {.cdecl,
    constructor, importcpp: "Extrema_ExtCS(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaExtCS; s: Adaptor3dSurface; uinf: cfloat;
                usup: cfloat; vinf: cfloat; vsup: cfloat; tolC: cfloat; tolS: cfloat) {.
    cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtCS; c: Adaptor3dCurve; uinf: cfloat; usup: cfloat) {.
    cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtCS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                     dynlib: tkgeombase.}
proc isParallel*(this: ExtremaExtCS): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                    dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtCS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc points*(this: ExtremaExtCS; n: cint; p1: var ExtremaPOnCurv; p2: var ExtremaPOnSurf) {.
    noSideEffect, cdecl, importcpp: "Points", dynlib: tkgeombase.}