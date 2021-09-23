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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../math/math_Vector,
  ../TColStd/TColStd_SequenceOfReal, ../Standard/Standard_Address,
  ../TColgp/TColgp_HArray1OfPnt, ../Standard/Standard_Integer

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  Extrema_ECC* {.importcpp: "Extrema_ECC", header: "Extrema_ECC.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Calculates
                                                                                ## all
                                                                                ## the
                                                                                ## distances
                                                                                ## as
                                                                                ## above
                                                                                ##
                                                                                ## !
                                                                                ## between
                                                                                ## Uinf
                                                                                ## and
                                                                                ## Usup
                                                                                ## for
                                                                                ## C1
                                                                                ## and
                                                                                ## between
                                                                                ## Vinf
                                                                                ## and
                                                                                ## Vsup
                                                                                ##
                                                                                ## !
                                                                                ## for
                                                                                ## C2.
    ##  Default value is false.


proc constructExtrema_ECC*(): Extrema_ECC {.constructor,
    importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc constructExtrema_ECC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve): Extrema_ECC {.
    constructor, importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc constructExtrema_ECC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
                          Uinf: Standard_Real; Usup: Standard_Real;
                          Vinf: Standard_Real; Vsup: Standard_Real): Extrema_ECC {.
    constructor, importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc SetParams*(this: var Extrema_ECC; C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
               Uinf: Standard_Real; Usup: Standard_Real; Vinf: Standard_Real;
               Vsup: Standard_Real) {.importcpp: "SetParams",
                                    header: "Extrema_ECC.hxx".}
proc SetTolerance*(this: var Extrema_ECC; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "Extrema_ECC.hxx".}
proc SetSingleSolutionFlag*(this: var Extrema_ECC;
                           theSingleSolutionFlag: Standard_Boolean) {.
    importcpp: "SetSingleSolutionFlag", header: "Extrema_ECC.hxx".}
proc GetSingleSolutionFlag*(this: Extrema_ECC): Standard_Boolean {.noSideEffect,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ECC.hxx".}
proc Perform*(this: var Extrema_ECC) {.importcpp: "Perform", header: "Extrema_ECC.hxx".}
proc IsDone*(this: Extrema_ECC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ECC.hxx".}
proc IsParallel*(this: Extrema_ECC): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ECC.hxx".}
proc NbExt*(this: Extrema_ECC): Standard_Integer {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_ECC.hxx".}
proc SquareDistance*(this: Extrema_ECC; N: Standard_Integer = 1): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ECC.hxx".}
proc Points*(this: Extrema_ECC; N: Standard_Integer; P1: var Extrema_POnCurv;
            P2: var Extrema_POnCurv) {.noSideEffect, importcpp: "Points",
                                    header: "Extrema_ECC.hxx".}