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
  ../TColgp/TColgp_HArray1OfPnt2d, ../Standard/Standard_Integer

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Extrema_ECC2d* {.importcpp: "Extrema_ECC2d", header: "Extrema_ECC2d.hxx", bycopy.} = object ##
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


proc constructExtrema_ECC2d*(): Extrema_ECC2d {.constructor,
    importcpp: "Extrema_ECC2d(@)", header: "Extrema_ECC2d.hxx".}
proc constructExtrema_ECC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d): Extrema_ECC2d {.
    constructor, importcpp: "Extrema_ECC2d(@)", header: "Extrema_ECC2d.hxx".}
proc constructExtrema_ECC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
                            Uinf: Standard_Real; Usup: Standard_Real;
                            Vinf: Standard_Real; Vsup: Standard_Real): Extrema_ECC2d {.
    constructor, importcpp: "Extrema_ECC2d(@)", header: "Extrema_ECC2d.hxx".}
proc SetParams*(this: var Extrema_ECC2d; C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
               Uinf: Standard_Real; Usup: Standard_Real; Vinf: Standard_Real;
               Vsup: Standard_Real) {.importcpp: "SetParams",
                                    header: "Extrema_ECC2d.hxx".}
proc SetTolerance*(this: var Extrema_ECC2d; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "Extrema_ECC2d.hxx".}
proc SetSingleSolutionFlag*(this: var Extrema_ECC2d;
                           theSingleSolutionFlag: Standard_Boolean) {.
    importcpp: "SetSingleSolutionFlag", header: "Extrema_ECC2d.hxx".}
proc GetSingleSolutionFlag*(this: Extrema_ECC2d): Standard_Boolean {.noSideEffect,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ECC2d.hxx".}
proc Perform*(this: var Extrema_ECC2d) {.importcpp: "Perform",
                                     header: "Extrema_ECC2d.hxx".}
proc IsDone*(this: Extrema_ECC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ECC2d.hxx".}
proc IsParallel*(this: Extrema_ECC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ECC2d.hxx".}
proc NbExt*(this: Extrema_ECC2d): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ECC2d.hxx".}
proc SquareDistance*(this: Extrema_ECC2d; N: Standard_Integer = 1): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ECC2d.hxx".}
proc Points*(this: Extrema_ECC2d; N: Standard_Integer; P1: var Extrema_POnCurv2d;
            P2: var Extrema_POnCurv2d) {.noSideEffect, importcpp: "Points",
                                      header: "Extrema_ECC2d.hxx".}