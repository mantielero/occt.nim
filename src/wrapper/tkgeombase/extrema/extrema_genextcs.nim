##  Created on: 1996-01-23
##  Created by: Laurent PAINNOT
##  Copyright (c) 1996-1999 Matra Datavision
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
type
  ExtremaGenExtCS* {.importcpp: "Extrema_GenExtCS", header: "Extrema_GenExtCS.hxx",
                    bycopy.} = object


proc newExtremaGenExtCS*(): ExtremaGenExtCS {.cdecl, constructor,
    importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc newExtremaGenExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface; nbT: cint; nbU: cint;
                        nbV: cint; tol1: cfloat; tol2: cfloat): ExtremaGenExtCS {.
    cdecl, constructor, importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc newExtremaGenExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface; nbT: cint; nbU: cint;
                        nbV: cint; tmin: cfloat; tsup: cfloat; umin: cfloat;
                        usup: cfloat; vmin: cfloat; vsup: cfloat; tol1: cfloat;
                        tol2: cfloat): ExtremaGenExtCS {.cdecl, constructor,
    importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc initialize*(this: var ExtremaGenExtCS; s: Adaptor3dSurface; nbU: cint; nbV: cint;
                tol2: cfloat) {.cdecl, importcpp: "Initialize", header: "Extrema_GenExtCS.hxx".}
proc initialize*(this: var ExtremaGenExtCS; s: Adaptor3dSurface; nbU: cint; nbV: cint;
                umin: cfloat; usup: cfloat; vmin: cfloat; vsup: cfloat; tol2: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_GenExtCS.hxx".}
proc perform*(this: var ExtremaGenExtCS; c: Adaptor3dCurve; nbT: cint; tol1: cfloat) {.
    cdecl, importcpp: "Perform", header: "Extrema_GenExtCS.hxx".}
proc perform*(this: var ExtremaGenExtCS; c: Adaptor3dCurve; nbT: cint; tmin: cfloat;
             tsup: cfloat; tol1: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_GenExtCS.hxx".}
proc isDone*(this: ExtremaGenExtCS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_GenExtCS.hxx".}
proc nbExt*(this: ExtremaGenExtCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       header: "Extrema_GenExtCS.hxx".}
proc squareDistance*(this: ExtremaGenExtCS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenExtCS.hxx".}
proc pointOnCurve*(this: ExtremaGenExtCS; n: cint): ExtremaPOnCurv {.noSideEffect,
    cdecl, importcpp: "PointOnCurve", header: "Extrema_GenExtCS.hxx".}
proc pointOnSurface*(this: ExtremaGenExtCS; n: cint): ExtremaPOnSurf {.noSideEffect,
    cdecl, importcpp: "PointOnSurface", header: "Extrema_GenExtCS.hxx".}