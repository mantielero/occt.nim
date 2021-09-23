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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real, Extrema_POnCurv

discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Extrema_POnCurv"
type
  Extrema_ExtElC* {.importcpp: "Extrema_ExtElC", header: "Extrema_ExtElC.hxx", bycopy.} = object ##
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


proc constructExtrema_ExtElC*(): Extrema_ExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtrema_ExtElC*(C1: gp_Lin; C2: gp_Lin; AngTol: Standard_Real): Extrema_ExtElC {.
    constructor, importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtrema_ExtElC*(C1: gp_Lin; C2: gp_Circ; Tol: Standard_Real): Extrema_ExtElC {.
    constructor, importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtrema_ExtElC*(C1: gp_Lin; C2: gp_Elips): Extrema_ExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtrema_ExtElC*(C1: gp_Lin; C2: gp_Hypr): Extrema_ExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtrema_ExtElC*(C1: gp_Lin; C2: gp_Parab): Extrema_ExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc constructExtrema_ExtElC*(C1: gp_Circ; C2: gp_Circ): Extrema_ExtElC {.constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc IsDone*(this: Extrema_ExtElC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtElC.hxx".}
proc IsParallel*(this: Extrema_ExtElC): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtElC.hxx".}
proc NbExt*(this: Extrema_ExtElC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtElC.hxx".}
proc SquareDistance*(this: Extrema_ExtElC; N: Standard_Integer = 1): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtElC.hxx".}
proc Points*(this: Extrema_ExtElC; N: Standard_Integer; P1: var Extrema_POnCurv;
            P2: var Extrema_POnCurv) {.noSideEffect, importcpp: "Points",
                                    header: "Extrema_ExtElC.hxx".}