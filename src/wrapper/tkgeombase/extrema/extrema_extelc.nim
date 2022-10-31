import ../../tkmath/gp/gp_types
import extrema_types



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



proc newExtremaExtElC*(): ExtremaExtElC {.cdecl, constructor,
                                       importcpp: "Extrema_ExtElC(@)",
                                       header: "Extrema_ExtElC.hxx".}
proc newExtremaExtElC*(c1: LinObj; c2: LinObj; angTol: cfloat): ExtremaExtElC {.cdecl,
    constructor, importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtremaExtElC*(c1: LinObj; c2: CircObj; tol: cfloat): ExtremaExtElC {.cdecl,
    constructor, importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtremaExtElC*(c1: LinObj; c2: ElipsObj): ExtremaExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtremaExtElC*(c1: LinObj; c2: HyprObj): ExtremaExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtremaExtElC*(c1: LinObj; c2: ParabObj): ExtremaExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtremaExtElC*(c1: CircObj; c2: CircObj): ExtremaExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc isDone*(this: ExtremaExtElC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "Extrema_ExtElC.hxx".}
proc isParallel*(this: ExtremaExtElC): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtElC.hxx".}
proc nbExt*(this: ExtremaExtElC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                     header: "Extrema_ExtElC.hxx".}
proc squareDistance*(this: ExtremaExtElC; n: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtElC.hxx".}
proc points*(this: ExtremaExtElC; n: cint; p1: var ExtremaPOnCurv;
            p2: var ExtremaPOnCurv) {.noSideEffect, cdecl, importcpp: "Points",
                                   header: "Extrema_ExtElC.hxx".}

