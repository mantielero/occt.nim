import extrema_types
import ../../tkmath/gp/gp_types
import ../../tkg2d/adaptor2d/adaptor2d_types

##  Created on: 1994-07-06
##  Created by: Laurent PAINNOT
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of Extrema_ExtElC2d"
discard "forward decl of Extrema_ECC2d"

proc newExtrema_ExtCC2d*(): Extrema_ExtCC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtCC2d(@)", header: "Extrema_ExtCC2d.hxx".}
proc newExtrema_ExtCC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
                        TolC1: cfloat = 1.0e-10; TolC2: cfloat = 1.0e-10): Extrema_ExtCC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtCC2d(@)",
    header: "Extrema_ExtCC2d.hxx".}
proc newExtrema_ExtCC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d; U1: cfloat;
                        U2: cfloat; V1: cfloat; V2: cfloat; TolC1: cfloat = 1.0e-10;
                        TolC2: cfloat = 1.0e-10): Extrema_ExtCC2d {.cdecl,
    constructor, importcpp: "Extrema_ExtCC2d(@)", header: "Extrema_ExtCC2d.hxx".}
proc Initialize*(this: var Extrema_ExtCC2d; C2: Adaptor2d_Curve2d; V1: cfloat;
                V2: cfloat; TolC1: cfloat = 1.0e-10; TolC2: cfloat = 1.0e-10) {.cdecl,
    importcpp: "Initialize", header: "Extrema_ExtCC2d.hxx".}
proc Perform*(this: var Extrema_ExtCC2d; C1: Adaptor2d_Curve2d; U1: cfloat; U2: cfloat) {.
    cdecl, importcpp: "Perform", header: "Extrema_ExtCC2d.hxx".}
proc IsDone*(this: Extrema_ExtCC2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_ExtCC2d.hxx".}
proc NbExt*(this: Extrema_ExtCC2d): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       header: "Extrema_ExtCC2d.hxx".}
proc IsParallel*(this: Extrema_ExtCC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtCC2d.hxx".}
proc SquareDistance*(this: Extrema_ExtCC2d; N: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtCC2d.hxx".}
proc Points*(this: Extrema_ExtCC2d; N: cint; P1: var Extrema_POnCurv2d;
            P2: var Extrema_POnCurv2d) {.noSideEffect, cdecl, importcpp: "Points",
                                      header: "Extrema_ExtCC2d.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ExtCC2d; dist11: var cfloat;
                            distP12: var cfloat; distP21: var cfloat;
                            distP22: var cfloat; P11: var gp_Pnt2d; P12: var gp_Pnt2d;
                            P21: var gp_Pnt2d; P22: var gp_Pnt2d) {.noSideEffect,
    cdecl, importcpp: "TrimmedSquareDistances", header: "Extrema_ExtCC2d.hxx".}
proc SetSingleSolutionFlag*(this: var Extrema_ExtCC2d; theSingleSolutionFlag: bool) {.
    cdecl, importcpp: "SetSingleSolutionFlag", header: "Extrema_ExtCC2d.hxx".}
proc GetSingleSolutionFlag*(this: Extrema_ExtCC2d): bool {.noSideEffect, cdecl,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ExtCC2d.hxx".}