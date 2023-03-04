import extrema_types
import ../tkmath/gp/gp_types
import ../tkg3d/adaptor3d/adaptor3d_types
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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_ExtElC"

proc newExtrema_ExtCC*(TolC1: cfloat = 1.0e-10; TolC2: cfloat = 1.0e-10): Extrema_ExtCC {.
    cdecl, constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc newExtrema_ExtCC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
                      TolC1: cfloat = 1.0e-10; TolC2: cfloat = 1.0e-10): Extrema_ExtCC {.
    cdecl, constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc newExtrema_ExtCC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve; U1: cfloat;
                      U2: cfloat; V1: cfloat; V2: cfloat; TolC1: cfloat = 1.0e-10;
                      TolC2: cfloat = 1.0e-10): Extrema_ExtCC {.cdecl, constructor,
    importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc Initialize*(this: var Extrema_ExtCC; C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
                TolC1: cfloat = 1.0e-10; TolC2: cfloat = 1.0e-10) {.cdecl,
    importcpp: "Initialize", header: "Extrema_ExtCC.hxx".}
proc Initialize*(this: var Extrema_ExtCC; C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
                U1: cfloat; U2: cfloat; V1: cfloat; V2: cfloat; TolC1: cfloat = 1.0e-10;
                TolC2: cfloat = 1.0e-10) {.cdecl, importcpp: "Initialize",
                                       header: "Extrema_ExtCC.hxx".}
proc SetCurve*(this: var Extrema_ExtCC; theRank: cint; C: Adaptor3d_Curve) {.cdecl,
    importcpp: "SetCurve", header: "Extrema_ExtCC.hxx".}
proc SetCurve*(this: var Extrema_ExtCC; theRank: cint; C: Adaptor3d_Curve; Uinf: cfloat;
              Usup: cfloat) {.cdecl, importcpp: "SetCurve",
                            header: "Extrema_ExtCC.hxx".}
proc SetRange*(this: var Extrema_ExtCC; theRank: cint; Uinf: cfloat; Usup: cfloat) {.
    cdecl, importcpp: "SetRange", header: "Extrema_ExtCC.hxx".}
proc SetTolerance*(this: var Extrema_ExtCC; theRank: cint; Tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "Extrema_ExtCC.hxx".}
proc Perform*(this: var Extrema_ExtCC) {.cdecl, importcpp: "Perform",
                                     header: "Extrema_ExtCC.hxx".}
proc IsDone*(this: Extrema_ExtCC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "Extrema_ExtCC.hxx".}
proc NbExt*(this: Extrema_ExtCC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                     header: "Extrema_ExtCC.hxx".}
proc IsParallel*(this: Extrema_ExtCC): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtCC.hxx".}
proc SquareDistance*(this: Extrema_ExtCC; N: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtCC.hxx".}
proc Points*(this: Extrema_ExtCC; N: cint; P1: var Extrema_POnCurv;
            P2: var Extrema_POnCurv) {.noSideEffect, cdecl, importcpp: "Points",
                                    header: "Extrema_ExtCC.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ExtCC; dist11: var cfloat;
                            distP12: var cfloat; distP21: var cfloat;
                            distP22: var cfloat; P11: var gp_Pnt; P12: var gp_Pnt;
                            P21: var gp_Pnt; P22: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ExtCC.hxx".}
proc SetSingleSolutionFlag*(this: var Extrema_ExtCC; theSingleSolutionFlag: bool) {.
    cdecl, importcpp: "SetSingleSolutionFlag", header: "Extrema_ExtCC.hxx".}
proc GetSingleSolutionFlag*(this: Extrema_ExtCC): bool {.noSideEffect, cdecl,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ExtCC.hxx".}
## !!!Ignored construct:  private :  disallow copies Extrema_ExtCC ( Extrema_ExtCC & ) Standard_DELETE ;
## Error: expected ';'!!!

## !!!Ignored construct:  Extrema_ExtCC & operator = ( Extrema_ExtCC & ) Standard_DELETE ;
## Error: expected ';'!!!
