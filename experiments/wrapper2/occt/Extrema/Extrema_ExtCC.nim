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
  ../Standard/Standard_Handle, Extrema_ECC, ../Standard/Standard_Boolean,
  Extrema_SequenceOfPOnCurv, ../TColStd/TColStd_SequenceOfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../gp/gp_Pnt

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_ExtElC"
discard "forward decl of Extrema_ECC"
type
  Extrema_ExtCC* {.importcpp: "Extrema_ExtCC", header: "Extrema_ExtCC.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Prepares
                                                                                      ## the
                                                                                      ## extrema
                                                                                      ## result(s)
                                                                                      ## for
                                                                                      ## analytical
                                                                                      ## cases
                                                                                      ## (line,
                                                                                      ## circle,
                                                                                      ## ellipsis
                                                                                      ## etc.)
    ##  Default value is false.


proc constructExtrema_ExtCC*(TolC1: Standard_Real = 1.0e-10;
                            TolC2: Standard_Real = 1.0e-10): Extrema_ExtCC {.
    constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc constructExtrema_ExtCC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
                            TolC1: Standard_Real = 1.0e-10;
                            TolC2: Standard_Real = 1.0e-10): Extrema_ExtCC {.
    constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc constructExtrema_ExtCC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
                            U1: Standard_Real; U2: Standard_Real; V1: Standard_Real;
                            V2: Standard_Real; TolC1: Standard_Real = 1.0e-10;
                            TolC2: Standard_Real = 1.0e-10): Extrema_ExtCC {.
    constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc SetCurve*(this: var Extrema_ExtCC; theRank: Standard_Integer; C: Adaptor3d_Curve) {.
    importcpp: "SetCurve", header: "Extrema_ExtCC.hxx".}
proc SetCurve*(this: var Extrema_ExtCC; theRank: Standard_Integer; C: Adaptor3d_Curve;
              Uinf: Standard_Real; Usup: Standard_Real) {.importcpp: "SetCurve",
    header: "Extrema_ExtCC.hxx".}
proc SetRange*(this: var Extrema_ExtCC; theRank: Standard_Integer;
              Uinf: Standard_Real; Usup: Standard_Real) {.importcpp: "SetRange",
    header: "Extrema_ExtCC.hxx".}
proc SetTolerance*(this: var Extrema_ExtCC; theRank: Standard_Integer;
                  Tol: Standard_Real) {.importcpp: "SetTolerance",
                                      header: "Extrema_ExtCC.hxx".}
proc Perform*(this: var Extrema_ExtCC) {.importcpp: "Perform",
                                     header: "Extrema_ExtCC.hxx".}
proc IsDone*(this: Extrema_ExtCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtCC.hxx".}
proc NbExt*(this: Extrema_ExtCC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtCC.hxx".}
proc IsParallel*(this: Extrema_ExtCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtCC.hxx".}
proc SquareDistance*(this: Extrema_ExtCC; N: Standard_Integer = 1): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtCC.hxx".}
proc Points*(this: Extrema_ExtCC; N: Standard_Integer; P1: var Extrema_POnCurv;
            P2: var Extrema_POnCurv) {.noSideEffect, importcpp: "Points",
                                    header: "Extrema_ExtCC.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ExtCC; dist11: var Standard_Real;
                            distP12: var Standard_Real; distP21: var Standard_Real;
                            distP22: var Standard_Real; P11: var gp_Pnt;
                            P12: var gp_Pnt; P21: var gp_Pnt; P22: var gp_Pnt) {.
    noSideEffect, importcpp: "TrimmedSquareDistances", header: "Extrema_ExtCC.hxx".}
proc SetSingleSolutionFlag*(this: var Extrema_ExtCC;
                           theSingleSolutionFlag: Standard_Boolean) {.
    importcpp: "SetSingleSolutionFlag", header: "Extrema_ExtCC.hxx".}
proc GetSingleSolutionFlag*(this: Extrema_ExtCC): Standard_Boolean {.noSideEffect,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ExtCC.hxx".}