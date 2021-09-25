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
type
  ExtremaGenExtSS* {.importcpp: "Extrema_GenExtSS", header: "Extrema_GenExtSS.hxx",
                    bycopy.} = object


proc constructExtremaGenExtSS*(): ExtremaGenExtSS {.constructor,
    importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc constructExtremaGenExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface; nbU: int;
                              nbV: int; tol1: float; tol2: float): ExtremaGenExtSS {.
    constructor, importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc constructExtremaGenExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface; nbU: int;
                              nbV: int; u1min: float; u1sup: float; v1min: float;
                              v1sup: float; u2min: float; u2sup: float; v2min: float;
                              v2sup: float; tol1: float; tol2: float): ExtremaGenExtSS {.
    constructor, importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc initialize*(this: var ExtremaGenExtSS; s2: Adaptor3dSurface; nbU: int; nbV: int;
                tol2: float) {.importcpp: "Initialize",
                             header: "Extrema_GenExtSS.hxx".}
proc initialize*(this: var ExtremaGenExtSS; s2: Adaptor3dSurface; nbU: int; nbV: int;
                u2min: float; u2sup: float; v2min: float; v2sup: float; tol2: float) {.
    importcpp: "Initialize", header: "Extrema_GenExtSS.hxx".}
proc perform*(this: var ExtremaGenExtSS; s1: Adaptor3dSurface; tol1: float) {.
    importcpp: "Perform", header: "Extrema_GenExtSS.hxx".}
proc perform*(this: var ExtremaGenExtSS; s1: Adaptor3dSurface; u1min: float;
             u1sup: float; v1min: float; v1sup: float; tol1: float) {.
    importcpp: "Perform", header: "Extrema_GenExtSS.hxx".}
proc isDone*(this: ExtremaGenExtSS): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "Extrema_GenExtSS.hxx".}
proc nbExt*(this: ExtremaGenExtSS): int {.noSideEffect, importcpp: "NbExt",
                                      header: "Extrema_GenExtSS.hxx".}
proc squareDistance*(this: ExtremaGenExtSS; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_GenExtSS.hxx".}
proc pointOnS1*(this: ExtremaGenExtSS; n: int): ExtremaPOnSurf {.noSideEffect,
    importcpp: "PointOnS1", header: "Extrema_GenExtSS.hxx".}
proc pointOnS2*(this: ExtremaGenExtSS; n: int): ExtremaPOnSurf {.noSideEffect,
    importcpp: "PointOnS2", header: "Extrema_GenExtSS.hxx".}
