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
type
  ExtremaECC* {.importcpp: "Extrema_ECC", header: "Extrema_ECC.hxx", bycopy.} = object ## !
                                                                               ## Calculates
                                                                               ## all
                                                                               ## the
                                                                               ## distances
                                                                               ## as
                                                                               ## above
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
                                                                               ## !
                                                                               ## for
                                                                               ## C2.
    ##  Default value is false.


proc constructExtremaECC*(): ExtremaECC {.constructor, importcpp: "Extrema_ECC(@)",
                                       header: "Extrema_ECC.hxx".}
proc constructExtremaECC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve): ExtremaECC {.
    constructor, importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc constructExtremaECC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve; uinf: float;
                         usup: float; vinf: float; vsup: float): ExtremaECC {.
    constructor, importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc setParams*(this: var ExtremaECC; c1: Adaptor3dCurve; c2: Adaptor3dCurve;
               uinf: float; usup: float; vinf: float; vsup: float) {.
    importcpp: "SetParams", header: "Extrema_ECC.hxx".}
proc setTolerance*(this: var ExtremaECC; tol: float) {.importcpp: "SetTolerance",
    header: "Extrema_ECC.hxx".}
proc setSingleSolutionFlag*(this: var ExtremaECC; theSingleSolutionFlag: bool) {.
    importcpp: "SetSingleSolutionFlag", header: "Extrema_ECC.hxx".}
proc getSingleSolutionFlag*(this: ExtremaECC): bool {.noSideEffect,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ECC.hxx".}
proc perform*(this: var ExtremaECC) {.importcpp: "Perform", header: "Extrema_ECC.hxx".}
proc isDone*(this: ExtremaECC): bool {.noSideEffect, importcpp: "IsDone",
                                   header: "Extrema_ECC.hxx".}
proc isParallel*(this: ExtremaECC): bool {.noSideEffect, importcpp: "IsParallel",
                                       header: "Extrema_ECC.hxx".}
proc nbExt*(this: ExtremaECC): int {.noSideEffect, importcpp: "NbExt",
                                 header: "Extrema_ECC.hxx".}
proc squareDistance*(this: ExtremaECC; n: int = 1): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ECC.hxx".}
proc points*(this: ExtremaECC; n: int; p1: var ExtremaPOnCurv; p2: var ExtremaPOnCurv) {.
    noSideEffect, importcpp: "Points", header: "Extrema_ECC.hxx".}
