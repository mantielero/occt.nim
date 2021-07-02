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


proc constructExtremaGenExtCS*(): ExtremaGenExtCS {.constructor,
    importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc constructExtremaGenExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface;
                              nbT: StandardInteger; nbU: StandardInteger;
                              nbV: StandardInteger; tol1: StandardReal;
                              tol2: StandardReal): ExtremaGenExtCS {.constructor,
    importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc constructExtremaGenExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface;
                              nbT: StandardInteger; nbU: StandardInteger;
                              nbV: StandardInteger; tmin: StandardReal;
                              tsup: StandardReal; umin: StandardReal;
                              usup: StandardReal; vmin: StandardReal;
                              vsup: StandardReal; tol1: StandardReal;
                              tol2: StandardReal): ExtremaGenExtCS {.constructor,
    importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc initialize*(this: var ExtremaGenExtCS; s: Adaptor3dSurface; nbU: StandardInteger;
                nbV: StandardInteger; tol2: StandardReal) {.importcpp: "Initialize",
    header: "Extrema_GenExtCS.hxx".}
proc initialize*(this: var ExtremaGenExtCS; s: Adaptor3dSurface; nbU: StandardInteger;
                nbV: StandardInteger; umin: StandardReal; usup: StandardReal;
                vmin: StandardReal; vsup: StandardReal; tol2: StandardReal) {.
    importcpp: "Initialize", header: "Extrema_GenExtCS.hxx".}
proc perform*(this: var ExtremaGenExtCS; c: Adaptor3dCurve; nbT: StandardInteger;
             tol1: StandardReal) {.importcpp: "Perform",
                                 header: "Extrema_GenExtCS.hxx".}
proc perform*(this: var ExtremaGenExtCS; c: Adaptor3dCurve; nbT: StandardInteger;
             tmin: StandardReal; tsup: StandardReal; tol1: StandardReal) {.
    importcpp: "Perform", header: "Extrema_GenExtCS.hxx".}
proc isDone*(this: ExtremaGenExtCS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_GenExtCS.hxx".}
proc nbExt*(this: ExtremaGenExtCS): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_GenExtCS.hxx".}
proc squareDistance*(this: ExtremaGenExtCS; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_GenExtCS.hxx".}
proc pointOnCurve*(this: ExtremaGenExtCS; n: StandardInteger): ExtremaPOnCurv {.
    noSideEffect, importcpp: "PointOnCurve", header: "Extrema_GenExtCS.hxx".}
proc pointOnSurface*(this: ExtremaGenExtCS; n: StandardInteger): ExtremaPOnSurf {.
    noSideEffect, importcpp: "PointOnSurface", header: "Extrema_GenExtCS.hxx".}

