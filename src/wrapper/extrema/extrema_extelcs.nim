import extrema_types
import ../tkmath/gp/gp_types

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

discard "forward decl of LinObj"
discard "forward decl of PlnObj"
discard "forward decl of CylinderObj"
discard "forward decl of ConeObj"
discard "forward decl of SphereObj"
discard "forward decl of TorusObj"
discard "forward decl of CircObj"
discard "forward decl of HyprObj"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"

proc newExtrema_ExtElCS*(): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: LinObj; S: PlnObj): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: LinObj; S: PlnObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: LinObj; S: CylinderObj): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: LinObj; S: CylinderObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: LinObj; S: ConeObj): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: LinObj; S: ConeObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: LinObj; S: SphereObj): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: LinObj; S: SphereObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: LinObj; S: TorusObj): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: LinObj; S: TorusObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: CircObj; S: PlnObj): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: CircObj; S: PlnObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: CircObj; S: CylinderObj): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: CircObj; S: CylinderObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: CircObj; S: ConeObj): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: CircObj; S: ConeObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: CircObj; S: SphereObj): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: CircObj; S: SphereObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: CircObj; S: TorusObj): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: CircObj; S: TorusObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: HyprObj; S: PlnObj): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: HyprObj; S: PlnObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc IsDone*(this: Extrema_ExtElCS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_ExtElCS.hxx".}
proc IsParallel*(this: Extrema_ExtElCS): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtElCS.hxx".}
proc NbExt*(this: Extrema_ExtElCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       header: "Extrema_ExtElCS.hxx".}
proc SquareDistance*(this: Extrema_ExtElCS; N: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtElCS.hxx".}
proc Points*(this: Extrema_ExtElCS; N: cint; P1: var Extrema_POnCurv;
            P2: var Extrema_POnSurf) {.noSideEffect, cdecl, importcpp: "Points",
                                    header: "Extrema_ExtElCS.hxx".}