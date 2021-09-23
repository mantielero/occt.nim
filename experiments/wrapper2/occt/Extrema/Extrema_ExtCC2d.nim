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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  Extrema_SequenceOfPOnCurv2d, ../TColStd/TColStd_SequenceOfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../gp/gp_Pnt2d

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Extrema_ExtElC2d"
discard "forward decl of Extrema_ECC2d"
type
  Extrema_ExtCC2d* {.importcpp: "Extrema_ExtCC2d", header: "Extrema_ExtCC2d.hxx",
                    bycopy.} = object
    ##  Default value is false.


proc constructExtrema_ExtCC2d*(): Extrema_ExtCC2d {.constructor,
    importcpp: "Extrema_ExtCC2d(@)", header: "Extrema_ExtCC2d.hxx".}
proc constructExtrema_ExtCC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
                              TolC1: Standard_Real = 1.0e-10;
                              TolC2: Standard_Real = 1.0e-10): Extrema_ExtCC2d {.
    constructor, importcpp: "Extrema_ExtCC2d(@)", header: "Extrema_ExtCC2d.hxx".}
proc constructExtrema_ExtCC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
                              U1: Standard_Real; U2: Standard_Real;
                              V1: Standard_Real; V2: Standard_Real;
                              TolC1: Standard_Real = 1.0e-10;
                              TolC2: Standard_Real = 1.0e-10): Extrema_ExtCC2d {.
    constructor, importcpp: "Extrema_ExtCC2d(@)", header: "Extrema_ExtCC2d.hxx".}
proc Initialize*(this: var Extrema_ExtCC2d; C2: Adaptor2d_Curve2d; V1: Standard_Real;
                V2: Standard_Real; TolC1: Standard_Real = 1.0e-10;
                TolC2: Standard_Real = 1.0e-10) {.importcpp: "Initialize",
    header: "Extrema_ExtCC2d.hxx".}
proc Perform*(this: var Extrema_ExtCC2d; C1: Adaptor2d_Curve2d; U1: Standard_Real;
             U2: Standard_Real) {.importcpp: "Perform",
                                header: "Extrema_ExtCC2d.hxx".}
proc IsDone*(this: Extrema_ExtCC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtCC2d.hxx".}
proc NbExt*(this: Extrema_ExtCC2d): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtCC2d.hxx".}
proc IsParallel*(this: Extrema_ExtCC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtCC2d.hxx".}
proc SquareDistance*(this: Extrema_ExtCC2d; N: Standard_Integer = 1): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtCC2d.hxx".}
proc Points*(this: Extrema_ExtCC2d; N: Standard_Integer; P1: var Extrema_POnCurv2d;
            P2: var Extrema_POnCurv2d) {.noSideEffect, importcpp: "Points",
                                      header: "Extrema_ExtCC2d.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ExtCC2d; dist11: var Standard_Real;
                            distP12: var Standard_Real; distP21: var Standard_Real;
                            distP22: var Standard_Real; P11: var gp_Pnt2d;
                            P12: var gp_Pnt2d; P21: var gp_Pnt2d; P22: var gp_Pnt2d) {.
    noSideEffect, importcpp: "TrimmedSquareDistances",
    header: "Extrema_ExtCC2d.hxx".}
proc SetSingleSolutionFlag*(this: var Extrema_ExtCC2d;
                           theSingleSolutionFlag: Standard_Boolean) {.
    importcpp: "SetSingleSolutionFlag", header: "Extrema_ExtCC2d.hxx".}
proc GetSingleSolutionFlag*(this: Extrema_ExtCC2d): Standard_Boolean {.noSideEffect,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ExtCC2d.hxx".}