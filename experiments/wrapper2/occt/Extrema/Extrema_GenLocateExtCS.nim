##  Created on: 1996-01-25
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

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaGenLocateExtCS* {.importcpp: "Extrema_GenLocateExtCS",
                          header: "Extrema_GenLocateExtCS.hxx", bycopy.} = object


proc constructExtremaGenLocateExtCS*(): ExtremaGenLocateExtCS {.constructor,
    importcpp: "Extrema_GenLocateExtCS(@)", header: "Extrema_GenLocateExtCS.hxx".}
proc constructExtremaGenLocateExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface;
                                    t: float; u: float; v: float; tol1: float;
                                    tol2: float): ExtremaGenLocateExtCS {.
    constructor, importcpp: "Extrema_GenLocateExtCS(@)",
    header: "Extrema_GenLocateExtCS.hxx".}
proc perform*(this: var ExtremaGenLocateExtCS; c: Adaptor3dCurve; s: Adaptor3dSurface;
             t: float; u: float; v: float; tol1: float; tol2: float) {.
    importcpp: "Perform", header: "Extrema_GenLocateExtCS.hxx".}
proc isDone*(this: ExtremaGenLocateExtCS): bool {.noSideEffect, importcpp: "IsDone",
    header: "Extrema_GenLocateExtCS.hxx".}
proc squareDistance*(this: ExtremaGenLocateExtCS): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtCS.hxx".}
proc pointOnCurve*(this: ExtremaGenLocateExtCS): ExtremaPOnCurv {.noSideEffect,
    importcpp: "PointOnCurve", header: "Extrema_GenLocateExtCS.hxx".}
proc pointOnSurface*(this: ExtremaGenLocateExtCS): ExtremaPOnSurf {.noSideEffect,
    importcpp: "PointOnSurface", header: "Extrema_GenLocateExtCS.hxx".}
