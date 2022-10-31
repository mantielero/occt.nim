import ../../tkmath/gp/gp_types
import extrema_types





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



proc newExtremaExtElCS*(): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: LinObj; s: PlnObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: LinObj; s: PlnObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: LinObj; s: CylinderObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: LinObj; s: CylinderObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: LinObj; s: ConeObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: LinObj; s: ConeObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: LinObj; s: SphereObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: LinObj; s: SphereObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: LinObj; s: TorusObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: LinObj; s: TorusObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: CircObj; s: PlnObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: CircObj; s: PlnObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: CircObj; s: CylinderObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: CircObj; s: CylinderObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: CircObj; s: ConeObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: CircObj; s: ConeObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: CircObj; s: SphereObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: CircObj; s: SphereObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: CircObj; s: TorusObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: CircObj; s: TorusObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc newExtremaExtElCS*(c: HyprObj; s: PlnObj): ExtremaExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc perform*(this: var ExtremaExtElCS; c: HyprObj; s: PlnObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElCS.hxx".}
proc isDone*(this: ExtremaExtElCS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "Extrema_ExtElCS.hxx".}
proc isParallel*(this: ExtremaExtElCS): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtElCS.hxx".}
proc nbExt*(this: ExtremaExtElCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      header: "Extrema_ExtElCS.hxx".}
proc squareDistance*(this: ExtremaExtElCS; n: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtElCS.hxx".}
proc points*(this: ExtremaExtElCS; n: cint; p1: var ExtremaPOnCurv;
            p2: var ExtremaPOnSurf) {.noSideEffect, cdecl, importcpp: "Points",
                                   header: "Extrema_ExtElCS.hxx".}


