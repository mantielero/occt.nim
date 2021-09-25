##  Created on: 1994-01-04
##  Created by: Christophe MARION
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Extrema_POnCurv2d"
type
  ExtremaExtElC2d* {.importcpp: "Extrema_ExtElC2d", header: "Extrema_ExtElC2d.hxx",
                    bycopy.} = object


proc constructExtremaExtElC2d*(): ExtremaExtElC2d {.constructor,
    importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Lin2d; c2: Lin2d; angTol: float): ExtremaExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Lin2d; c2: Circ2d; tol: float): ExtremaExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Lin2d; c2: Elips2d): ExtremaExtElC2d {.constructor,
    importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Lin2d; c2: Hypr2d): ExtremaExtElC2d {.constructor,
    importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Lin2d; c2: Parab2d): ExtremaExtElC2d {.constructor,
    importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Circ2d; c2: Circ2d): ExtremaExtElC2d {.constructor,
    importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Circ2d; c2: Elips2d): ExtremaExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Circ2d; c2: Hypr2d): ExtremaExtElC2d {.constructor,
    importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtremaExtElC2d*(c1: Circ2d; c2: Parab2d): ExtremaExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc isDone*(this: ExtremaExtElC2d): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "Extrema_ExtElC2d.hxx".}
proc isParallel*(this: ExtremaExtElC2d): bool {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtElC2d.hxx".}
proc nbExt*(this: ExtremaExtElC2d): int {.noSideEffect, importcpp: "NbExt",
                                      header: "Extrema_ExtElC2d.hxx".}
proc squareDistance*(this: ExtremaExtElC2d; n: int = 1): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtElC2d.hxx".}
proc points*(this: ExtremaExtElC2d; n: int; p1: var ExtremaPOnCurv2d;
            p2: var ExtremaPOnCurv2d) {.noSideEffect, importcpp: "Points",
                                     header: "Extrema_ExtElC2d.hxx".}
