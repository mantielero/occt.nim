##  Created on: 1992-07-22
##  Created by: Laurent PAINNOT
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of gp_Lin"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Hypr"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaExtElCS* {.importcpp: "Extrema_ExtElCS", header: "Extrema_ExtElCS.hxx",
                   bycopy.} = object


proc constructExtremaExtElCS*(): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Lin; s: Pln): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Pln) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Lin; s: Cylinder): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Cylinder) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Lin; s: Cone): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Cone) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Lin; s: Sphere): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Sphere) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Lin; s: Torus): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Lin; s: Torus) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Circ; s: Pln): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Pln) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Circ; s: Cylinder): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Cylinder) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Circ; s: Cone): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Cone) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Circ; s: Sphere): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Sphere) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Circ; s: Torus): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Circ; s: Torus) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc constructExtremaExtElCS*(c: Hypr; s: Pln): ExtremaExtElCS {.constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: Hypr; s: Pln) {.importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc isDone*(this: ExtremaExtElCS): bool {.noSideEffect, importcpp: "IsDone",
                                       header: "Extrema_ExtElCS.hxx".}
proc isParallel*(this: ExtremaExtElCS): bool {.noSideEffect, importcpp: "IsParallel",
    header: "Extrema_ExtElCS.hxx".}
proc nbExt*(this: ExtremaExtElCS): int {.noSideEffect, importcpp: "NbExt",
                                     header: "Extrema_ExtElCS.hxx".}
proc squareDistance*(this: ExtremaExtElCS; n: int = 1): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtElCS.hxx".}
proc points*(this: ExtremaExtElCS; n: int; p1: var ExtremaPOnCurv;
            p2: var ExtremaPOnSurf) {.noSideEffect, importcpp: "Points",
                                   header: "Extrema_ExtElCS.hxx".}
