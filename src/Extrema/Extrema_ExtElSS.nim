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
type
  ExtremaExtElSS* {.importcpp: "Extrema_ExtElSS", header: "Extrema_ExtElSS.hxx",
                   bycopy.} = object


proc constructExtremaExtElSS*(): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: Pln; s2: Pln): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: Pln; s2: Pln) {.importcpp: "Perform",
    header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: Pln; s2: Sphere): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: Pln; s2: Sphere) {.importcpp: "Perform",
    header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: Sphere; s2: Sphere): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: Sphere; s2: Sphere) {.importcpp: "Perform",
    header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: Sphere; s2: Cylinder): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: Sphere; s2: Cylinder) {.
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: Sphere; s2: Cone): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: Sphere; s2: Cone) {.importcpp: "Perform",
    header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: Sphere; s2: Torus): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: Sphere; s2: Torus) {.importcpp: "Perform",
    header: "Extrema_ExtElSS.hxx".}
proc isDone*(this: ExtremaExtElSS): bool {.noSideEffect, importcpp: "IsDone",
                                       header: "Extrema_ExtElSS.hxx".}
proc isParallel*(this: ExtremaExtElSS): bool {.noSideEffect, importcpp: "IsParallel",
    header: "Extrema_ExtElSS.hxx".}
proc nbExt*(this: ExtremaExtElSS): cint {.noSideEffect, importcpp: "NbExt",
                                      header: "Extrema_ExtElSS.hxx".}
proc squareDistance*(this: ExtremaExtElSS; n: cint = 1): cfloat {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtElSS.hxx".}
proc points*(this: ExtremaExtElSS; n: cint; p1: var ExtremaPOnSurf;
            p2: var ExtremaPOnSurf) {.noSideEffect, importcpp: "Points",
                                   header: "Extrema_ExtElSS.hxx".}

























