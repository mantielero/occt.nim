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

discard "forward decl of gp_Pln"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of Extrema_POnSurf"


proc newExtremaExtElSS*(): ExtremaExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc newExtremaExtElSS*(s1: PlnObj; s2: PlnObj): ExtremaExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: PlnObj; s2: PlnObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtElSS.hxx".}
proc newExtremaExtElSS*(s1: PlnObj; s2: SphereObj): ExtremaExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: PlnObj; s2: SphereObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtremaExtElSS*(s1: SphereObj; s2: SphereObj): ExtremaExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: SphereObj; s2: SphereObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtremaExtElSS*(s1: SphereObj; s2: CylinderObj): ExtremaExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: SphereObj; s2: CylinderObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtremaExtElSS*(s1: SphereObj; s2: ConeObj): ExtremaExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: SphereObj; s2: ConeObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc newExtremaExtElSS*(s1: SphereObj; s2: TorusObj): ExtremaExtElSS {.cdecl, constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: SphereObj; s2: TorusObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc isDone*(this: ExtremaExtElSS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "Extrema_ExtElSS.hxx".}
proc isParallel*(this: ExtremaExtElSS): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtElSS.hxx".}
proc nbExt*(this: ExtremaExtElSS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      header: "Extrema_ExtElSS.hxx".}
proc squareDistance*(this: ExtremaExtElSS; n: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtElSS.hxx".}
proc points*(this: ExtremaExtElSS; n: cint; p1: var ExtremaPOnSurf;
            p2: var ExtremaPOnSurf) {.noSideEffect, cdecl, importcpp: "Points",
                                   header: "Extrema_ExtElSS.hxx".}
