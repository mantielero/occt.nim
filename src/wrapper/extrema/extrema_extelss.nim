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

discard "forward decl of PlnObj"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of Extrema_POnSurf"

proc newExtrema_ExtElSS*(): Extrema_ExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc newExtrema_ExtElSS*(S1: PlnObj; S2: PlnObj): Extrema_ExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc Perform*(this: var Extrema_ExtElSS; S1: PlnObj; S2: PlnObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtrema_ExtElSS*(S1: PlnObj; S2: gp_Sphere): Extrema_ExtElSS {.cdecl,
    constructor, importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc Perform*(this: var Extrema_ExtElSS; S1: PlnObj; S2: gp_Sphere) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtrema_ExtElSS*(S1: gp_Sphere; S2: gp_Sphere): Extrema_ExtElSS {.cdecl,
    constructor, importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc Perform*(this: var Extrema_ExtElSS; S1: gp_Sphere; S2: gp_Sphere) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtrema_ExtElSS*(S1: gp_Sphere; S2: gp_Cylinder): Extrema_ExtElSS {.cdecl,
    constructor, importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc Perform*(this: var Extrema_ExtElSS; S1: gp_Sphere; S2: gp_Cylinder) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtrema_ExtElSS*(S1: gp_Sphere; S2: gp_Cone): Extrema_ExtElSS {.cdecl,
    constructor, importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc Perform*(this: var Extrema_ExtElSS; S1: gp_Sphere; S2: gp_Cone) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtrema_ExtElSS*(S1: gp_Sphere; S2: gp_Torus): Extrema_ExtElSS {.cdecl,
    constructor, importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc Perform*(this: var Extrema_ExtElSS; S1: gp_Sphere; S2: gp_Torus) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc IsDone*(this: Extrema_ExtElSS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_ExtElSS.hxx".}
proc IsParallel*(this: Extrema_ExtElSS): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtElSS.hxx".}
proc NbExt*(this: Extrema_ExtElSS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       header: "Extrema_ExtElSS.hxx".}
proc SquareDistance*(this: Extrema_ExtElSS; N: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtElSS.hxx".}
proc Points*(this: Extrema_ExtElSS; N: cint; P1: var Extrema_POnSurf;
            P2: var Extrema_POnSurf) {.noSideEffect, cdecl, importcpp: "Points",
                                    header: "Extrema_ExtElSS.hxx".}