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
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaExtSS* {.importcpp: "Extrema_ExtSS", header: "Extrema_ExtSS.hxx", bycopy.} = object


proc constructExtremaExtSS*(): ExtremaExtSS {.constructor,
    importcpp: "Extrema_ExtSS(@)", header: "Extrema_ExtSS.hxx".}
proc constructExtremaExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface; tolS1: float;
                           tolS2: float): ExtremaExtSS {.constructor,
    importcpp: "Extrema_ExtSS(@)", header: "Extrema_ExtSS.hxx".}
proc constructExtremaExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface; uinf1: float;
                           usup1: float; vinf1: float; vsup1: float; uinf2: float;
                           usup2: float; vinf2: float; vsup2: float; tolS1: float;
                           tolS2: float): ExtremaExtSS {.constructor,
    importcpp: "Extrema_ExtSS(@)", header: "Extrema_ExtSS.hxx".}
proc initialize*(this: var ExtremaExtSS; s2: Adaptor3dSurface; uinf2: float;
                usup2: float; vinf2: float; vsup2: float; tolS1: float) {.
    importcpp: "Initialize", header: "Extrema_ExtSS.hxx".}
proc perform*(this: var ExtremaExtSS; s1: Adaptor3dSurface; uinf1: float; usup1: float;
             vinf1: float; vsup1: float; tolS1: float) {.importcpp: "Perform",
    header: "Extrema_ExtSS.hxx".}
proc isDone*(this: ExtremaExtSS): bool {.noSideEffect, importcpp: "IsDone",
                                     header: "Extrema_ExtSS.hxx".}
proc isParallel*(this: ExtremaExtSS): bool {.noSideEffect, importcpp: "IsParallel",
    header: "Extrema_ExtSS.hxx".}
proc nbExt*(this: ExtremaExtSS): int {.noSideEffect, importcpp: "NbExt",
                                   header: "Extrema_ExtSS.hxx".}
proc squareDistance*(this: ExtremaExtSS; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtSS.hxx".}
proc points*(this: ExtremaExtSS; n: int; p1: var ExtremaPOnSurf; p2: var ExtremaPOnSurf) {.
    noSideEffect, importcpp: "Points", header: "Extrema_ExtSS.hxx".}
