##  Created on: 1994-01-04
##  Created by: Christophe MARION
##  Copyright (c) 1994-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real, Extrema_POnCurv2d

discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Extrema_POnCurv2d"
type
  Extrema_ExtElC2d* {.importcpp: "Extrema_ExtElC2d",
                     header: "Extrema_ExtElC2d.hxx", bycopy.} = object


proc constructExtrema_ExtElC2d*(): Extrema_ExtElC2d {.constructor,
    importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Lin2d; C2: gp_Lin2d; AngTol: Standard_Real): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Lin2d; C2: gp_Circ2d; Tol: Standard_Real): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Lin2d; C2: gp_Elips2d): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Lin2d; C2: gp_Hypr2d): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Lin2d; C2: gp_Parab2d): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Circ2d; C2: gp_Circ2d): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Circ2d; C2: gp_Elips2d): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Circ2d; C2: gp_Hypr2d): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc constructExtrema_ExtElC2d*(C1: gp_Circ2d; C2: gp_Parab2d): Extrema_ExtElC2d {.
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc IsDone*(this: Extrema_ExtElC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtElC2d.hxx".}
proc IsParallel*(this: Extrema_ExtElC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtElC2d.hxx".}
proc NbExt*(this: Extrema_ExtElC2d): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtElC2d.hxx".}
proc SquareDistance*(this: Extrema_ExtElC2d; N: Standard_Integer = 1): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtElC2d.hxx".}
proc Points*(this: Extrema_ExtElC2d; N: Standard_Integer; P1: var Extrema_POnCurv2d;
            P2: var Extrema_POnCurv2d) {.noSideEffect, importcpp: "Points",
                                      header: "Extrema_ExtElC2d.hxx".}