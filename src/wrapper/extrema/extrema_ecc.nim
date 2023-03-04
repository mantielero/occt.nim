import extrema_types
import ../tkg3d/adaptor3d/adaptor3d_types

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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"

proc newExtrema_ECC*(): Extrema_ECC {.cdecl, constructor,
                                   importcpp: "Extrema_ECC(@)",
                                   header: "Extrema_ECC.hxx".}
proc newExtrema_ECC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve): Extrema_ECC {.cdecl,
    constructor, importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc newExtrema_ECC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve; Uinf: cfloat;
                    Usup: cfloat; Vinf: cfloat; Vsup: cfloat): Extrema_ECC {.cdecl,
    constructor, importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc SetParams*(this: var Extrema_ECC; C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
               Uinf: cfloat; Usup: cfloat; Vinf: cfloat; Vsup: cfloat) {.cdecl,
    importcpp: "SetParams", header: "Extrema_ECC.hxx".}
proc SetTolerance*(this: var Extrema_ECC; Tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "Extrema_ECC.hxx".}
proc SetSingleSolutionFlag*(this: var Extrema_ECC; theSingleSolutionFlag: bool) {.
    cdecl, importcpp: "SetSingleSolutionFlag", header: "Extrema_ECC.hxx".}
proc GetSingleSolutionFlag*(this: Extrema_ECC): bool {.noSideEffect, cdecl,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ECC.hxx".}
proc Perform*(this: var Extrema_ECC) {.cdecl, importcpp: "Perform",
                                   header: "Extrema_ECC.hxx".}
proc IsDone*(this: Extrema_ECC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                    header: "Extrema_ECC.hxx".}
proc IsParallel*(this: Extrema_ECC): bool {.noSideEffect, cdecl,
                                        importcpp: "IsParallel",
                                        header: "Extrema_ECC.hxx".}
proc NbExt*(this: Extrema_ECC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                   header: "Extrema_ECC.hxx".}
proc SquareDistance*(this: Extrema_ECC; N: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ECC.hxx".}
proc Points*(this: Extrema_ECC; N: cint; P1: var Extrema_POnCurv;
            P2: var Extrema_POnCurv) {.noSideEffect, cdecl, importcpp: "Points",
                                    header: "Extrema_ECC.hxx".}