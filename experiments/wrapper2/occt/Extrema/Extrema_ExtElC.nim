##  Created on: 1991-02-21
##  Created by: Isabelle GRIGNON
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

discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Extrema_POnCurv"
type
  ExtremaExtElC* {.importcpp: "Extrema_ExtElC", header: "Extrema_ExtElC.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Computes
                                                                                        ## extrema
                                                                                        ## in
                                                                                        ## case
                                                                                        ## when
                                                                                        ## considered
                                                                                        ## line
                                                                                        ## and
                                                                                        ## circle
                                                                                        ## are
                                                                                        ## in
                                                                                        ## one
                                                                                        ## plane


proc constructExtremaExtElC*(): ExtremaExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtremaExtElC*(c1: Lin; c2: Lin; angTol: float): ExtremaExtElC {.
    constructor, importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtremaExtElC*(c1: Lin; c2: Circ; tol: float): ExtremaExtElC {.
    constructor, importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtremaExtElC*(c1: Lin; c2: Elips): ExtremaExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtremaExtElC*(c1: Lin; c2: Hypr): ExtremaExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtremaExtElC*(c1: Lin; c2: Parab): ExtremaExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtremaExtElC*(c1: Circ; c2: Circ): ExtremaExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc isDone*(this: ExtremaExtElC): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "Extrema_ExtElC.hxx".}
proc isParallel*(this: ExtremaExtElC): bool {.noSideEffect, importcpp: "IsParallel",
    header: "Extrema_ExtElC.hxx".}
proc nbExt*(this: ExtremaExtElC): int {.noSideEffect, importcpp: "NbExt",
                                    header: "Extrema_ExtElC.hxx".}
proc squareDistance*(this: ExtremaExtElC; n: int = 1): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtElC.hxx".}
proc points*(this: ExtremaExtElC; n: int; p1: var ExtremaPOnCurv; p2: var ExtremaPOnCurv) {.
    noSideEffect, importcpp: "Points", header: "Extrema_ExtElC.hxx".}
