import extrema_types

##  Created on: 1996-01-18
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
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"


proc newExtremaGenExtSS*(): ExtremaGenExtSS {.cdecl, constructor,
    importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc newExtremaGenExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface; nbU: cint;
                        nbV: cint; tol1: cfloat; tol2: cfloat): ExtremaGenExtSS {.
    cdecl, constructor, importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc newExtremaGenExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface; nbU: cint;
                        nbV: cint; u1min: cfloat; u1sup: cfloat; v1min: cfloat;
                        v1sup: cfloat; u2min: cfloat; u2sup: cfloat; v2min: cfloat;
                        v2sup: cfloat; tol1: cfloat; tol2: cfloat): ExtremaGenExtSS {.
    cdecl, constructor, importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc initialize*(this: var ExtremaGenExtSS; s2: Adaptor3dSurface; nbU: cint; nbV: cint;
                tol2: cfloat) {.cdecl, importcpp: "Initialize", header: "Extrema_GenExtSS.hxx".}
proc initialize*(this: var ExtremaGenExtSS; s2: Adaptor3dSurface; nbU: cint; nbV: cint;
                u2min: cfloat; u2sup: cfloat; v2min: cfloat; v2sup: cfloat; tol2: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_GenExtSS.hxx".}
proc perform*(this: var ExtremaGenExtSS; s1: Adaptor3dSurface; tol1: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_GenExtSS.hxx".}
proc perform*(this: var ExtremaGenExtSS; s1: Adaptor3dSurface; u1min: cfloat;
             u1sup: cfloat; v1min: cfloat; v1sup: cfloat; tol1: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_GenExtSS.hxx".}
proc isDone*(this: ExtremaGenExtSS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_GenExtSS.hxx".}
proc nbExt*(this: ExtremaGenExtSS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       header: "Extrema_GenExtSS.hxx".}
proc squareDistance*(this: ExtremaGenExtSS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenExtSS.hxx".}
proc pointOnS1*(this: ExtremaGenExtSS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "PointOnS1", header: "Extrema_GenExtSS.hxx".}
proc pointOnS2*(this: ExtremaGenExtSS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "PointOnS2", header: "Extrema_GenExtSS.hxx".}
