import extrema_types
import ../gp/gp_types

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

proc newExtrema_ExtElCS*(): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Lin; S: gp_Pln): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Lin; S: gp_Pln) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Lin; S: gp_Cylinder): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Lin; S: gp_Cylinder) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Lin; S: gp_Cone): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Lin; S: gp_Cone) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Lin; S: gp_Sphere): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Lin; S: gp_Sphere) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Lin; S: gp_Torus): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Lin; S: gp_Torus) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Circ; S: gp_Pln): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Circ; S: gp_Pln) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Circ; S: gp_Cylinder): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Circ; S: gp_Cylinder) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Circ; S: gp_Cone): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Circ; S: gp_Cone) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Circ; S: gp_Sphere): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Circ; S: gp_Sphere) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Circ; S: gp_Torus): Extrema_ExtElCS {.cdecl,
    constructor, importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Circ; S: gp_Torus) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElCS.hxx".}
proc newExtrema_ExtElCS*(C: gp_Hypr; S: gp_Pln): Extrema_ExtElCS {.cdecl, constructor,
    importcpp: "Extrema_ExtElCS(@)", header: "Extrema_ExtElCS.hxx".}
proc Perform*(this: var Extrema_ExtElCS; C: gp_Hypr; S: gp_Pln) {.cdecl,
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