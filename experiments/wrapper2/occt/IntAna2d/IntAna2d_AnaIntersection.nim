##  Created on: 1991-02-20
##  Created by: Jacques GOUSSARD
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of IntAna2d_Conic"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of IntAna2d_IntPoint"
type
  IntAna2dAnaIntersection* {.importcpp: "IntAna2d_AnaIntersection",
                            header: "IntAna2d_AnaIntersection.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor.
                                                                                 ## IsDone
                                                                                 ## returns
                                                                                 ## False.


proc constructIntAna2dAnaIntersection*(): IntAna2dAnaIntersection {.constructor,
    importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2dAnaIntersection*(l1: Lin2d; l2: Lin2d): IntAna2dAnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2dAnaIntersection*(c1: Circ2d; c2: Circ2d): IntAna2dAnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2dAnaIntersection*(L: Lin2d; c: Circ2d): IntAna2dAnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2dAnaIntersection*(L: Lin2d; c: IntAna2dConic): IntAna2dAnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2dAnaIntersection*(c: Circ2d; co: IntAna2dConic): IntAna2dAnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2dAnaIntersection*(e: Elips2d; c: IntAna2dConic): IntAna2dAnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2dAnaIntersection*(p: Parab2d; c: IntAna2dConic): IntAna2dAnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc constructIntAna2dAnaIntersection*(h: Hypr2d; c: IntAna2dConic): IntAna2dAnaIntersection {.
    constructor, importcpp: "IntAna2d_AnaIntersection(@)",
    header: "IntAna2d_AnaIntersection.hxx".}
proc perform*(this: var IntAna2dAnaIntersection; l1: Lin2d; l2: Lin2d) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc perform*(this: var IntAna2dAnaIntersection; c1: Circ2d; c2: Circ2d) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc perform*(this: var IntAna2dAnaIntersection; L: Lin2d; c: Circ2d) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc perform*(this: var IntAna2dAnaIntersection; L: Lin2d; c: IntAna2dConic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc perform*(this: var IntAna2dAnaIntersection; c: Circ2d; co: IntAna2dConic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc perform*(this: var IntAna2dAnaIntersection; e: Elips2d; c: IntAna2dConic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc perform*(this: var IntAna2dAnaIntersection; p: Parab2d; c: IntAna2dConic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc perform*(this: var IntAna2dAnaIntersection; h: Hypr2d; c: IntAna2dConic) {.
    importcpp: "Perform", header: "IntAna2d_AnaIntersection.hxx".}
proc isDone*(this: IntAna2dAnaIntersection): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntAna2d_AnaIntersection.hxx".}
proc isEmpty*(this: IntAna2dAnaIntersection): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "IntAna2d_AnaIntersection.hxx".}
proc identicalElements*(this: IntAna2dAnaIntersection): bool {.noSideEffect,
    importcpp: "IdenticalElements", header: "IntAna2d_AnaIntersection.hxx".}
proc parallelElements*(this: IntAna2dAnaIntersection): bool {.noSideEffect,
    importcpp: "ParallelElements", header: "IntAna2d_AnaIntersection.hxx".}
proc nbPoints*(this: IntAna2dAnaIntersection): int {.noSideEffect,
    importcpp: "NbPoints", header: "IntAna2d_AnaIntersection.hxx".}
proc point*(this: IntAna2dAnaIntersection; n: int): IntAna2dIntPoint {.noSideEffect,
    importcpp: "Point", header: "IntAna2d_AnaIntersection.hxx".}
