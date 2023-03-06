import extrema_types
import ../adaptor2d/adaptor2d_types

##  Created on: 1991-02-26
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of Pnt2dObj"
discard "forward decl of Vec2dObj"


proc newExtrema_ECC2d*(): Extrema_ECC2d {.cdecl, constructor,
                                       importcpp: "Extrema_ECC2d(@)",
                                       header: "Extrema_ECC2d.hxx".}
proc newExtrema_ECC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d): Extrema_ECC2d {.
    cdecl, constructor, importcpp: "Extrema_ECC2d(@)", header: "Extrema_ECC2d.hxx".}
proc newExtrema_ECC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d; Uinf: cfloat;
                      Usup: cfloat; Vinf: cfloat; Vsup: cfloat): Extrema_ECC2d {.cdecl,
    constructor, importcpp: "Extrema_ECC2d(@)", header: "Extrema_ECC2d.hxx".}
proc SetParams*(this: var Extrema_ECC2d; C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
               Uinf: cfloat; Usup: cfloat; Vinf: cfloat; Vsup: cfloat) {.cdecl,
    importcpp: "SetParams", header: "Extrema_ECC2d.hxx".}
proc SetTolerance*(this: var Extrema_ECC2d; Tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "Extrema_ECC2d.hxx".}
proc SetSingleSolutionFlag*(this: var Extrema_ECC2d; theSingleSolutionFlag: bool) {.
    cdecl, importcpp: "SetSingleSolutionFlag", header: "Extrema_ECC2d.hxx".}
proc GetSingleSolutionFlag*(this: Extrema_ECC2d): bool {.noSideEffect, cdecl,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ECC2d.hxx".}
proc Perform*(this: var Extrema_ECC2d) {.cdecl, importcpp: "Perform",
                                     header: "Extrema_ECC2d.hxx".}
proc IsDone*(this: Extrema_ECC2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "Extrema_ECC2d.hxx".}
proc IsParallel*(this: Extrema_ECC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ECC2d.hxx".}
proc NbExt*(this: Extrema_ECC2d): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                     header: "Extrema_ECC2d.hxx".}
proc SquareDistance*(this: Extrema_ECC2d; N: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ECC2d.hxx".}
proc Points*(this: Extrema_ECC2d; N: cint; P1: var Extrema_POnCurv2d;
            P2: var Extrema_POnCurv2d) {.noSideEffect, cdecl, importcpp: "Points",
                                      header: "Extrema_ECC2d.hxx".}