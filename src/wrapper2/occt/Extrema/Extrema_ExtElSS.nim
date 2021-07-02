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
proc constructExtremaExtElSS*(s1: GpPln; s2: GpPln): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: GpPln; s2: GpPln) {.importcpp: "Perform",
    header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: GpPln; s2: GpSphere): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: GpPln; s2: GpSphere) {.importcpp: "Perform",
    header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: GpSphere; s2: GpSphere): ExtremaExtElSS {.
    constructor, importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: GpSphere; s2: GpSphere) {.
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: GpSphere; s2: GpCylinder): ExtremaExtElSS {.
    constructor, importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: GpSphere; s2: GpCylinder) {.
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: GpSphere; s2: GpCone): ExtremaExtElSS {.constructor,
    importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: GpSphere; s2: GpCone) {.
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc constructExtremaExtElSS*(s1: GpSphere; s2: GpTorus): ExtremaExtElSS {.
    constructor, importcpp: "Extrema_ExtElSS(@)", header: "Extrema_ExtElSS.hxx".}
proc perform*(this: var ExtremaExtElSS; s1: GpSphere; s2: GpTorus) {.
    importcpp: "Perform", header: "Extrema_ExtElSS.hxx".}
proc isDone*(this: ExtremaExtElSS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtElSS.hxx".}
proc isParallel*(this: ExtremaExtElSS): StandardBoolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtElSS.hxx".}
proc nbExt*(this: ExtremaExtElSS): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtElSS.hxx".}
proc squareDistance*(this: ExtremaExtElSS; n: StandardInteger = 1): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtElSS.hxx".}
proc points*(this: ExtremaExtElSS; n: StandardInteger; p1: var ExtremaPOnSurf;
            p2: var ExtremaPOnSurf) {.noSideEffect, importcpp: "Points",
                                   header: "Extrema_ExtElSS.hxx".}

