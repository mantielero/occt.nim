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
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_ExtElC"
discard "forward decl of Extrema_ECC"
type
  ExtremaExtCC* {.importcpp: "Extrema_ExtCC", header: "Extrema_ExtCC.hxx", bycopy.} = object ##
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


proc constructExtremaExtCC*(tolC1: float = 1.0e-10; tolC2: float = 1.0e-10): ExtremaExtCC {.
    constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc constructExtremaExtCC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve;
                           tolC1: float = 1.0e-10; tolC2: float = 1.0e-10): ExtremaExtCC {.
    constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc constructExtremaExtCC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve; u1: float;
                           u2: float; v1: float; v2: float; tolC1: float = 1.0e-10;
                           tolC2: float = 1.0e-10): ExtremaExtCC {.constructor,
    importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc setCurve*(this: var ExtremaExtCC; theRank: int; c: Adaptor3dCurve) {.
    importcpp: "SetCurve", header: "Extrema_ExtCC.hxx".}
proc setCurve*(this: var ExtremaExtCC; theRank: int; c: Adaptor3dCurve; uinf: float;
              usup: float) {.importcpp: "SetCurve", header: "Extrema_ExtCC.hxx".}
proc setRange*(this: var ExtremaExtCC; theRank: int; uinf: float; usup: float) {.
    importcpp: "SetRange", header: "Extrema_ExtCC.hxx".}
proc setTolerance*(this: var ExtremaExtCC; theRank: int; tol: float) {.
    importcpp: "SetTolerance", header: "Extrema_ExtCC.hxx".}
proc perform*(this: var ExtremaExtCC) {.importcpp: "Perform",
                                    header: "Extrema_ExtCC.hxx".}
proc isDone*(this: ExtremaExtCC): bool {.noSideEffect, importcpp: "IsDone",
                                     header: "Extrema_ExtCC.hxx".}
proc nbExt*(this: ExtremaExtCC): int {.noSideEffect, importcpp: "NbExt",
                                   header: "Extrema_ExtCC.hxx".}
proc isParallel*(this: ExtremaExtCC): bool {.noSideEffect, importcpp: "IsParallel",
    header: "Extrema_ExtCC.hxx".}
proc squareDistance*(this: ExtremaExtCC; n: int = 1): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtCC.hxx".}
proc points*(this: ExtremaExtCC; n: int; p1: var ExtremaPOnCurv; p2: var ExtremaPOnCurv) {.
    noSideEffect, importcpp: "Points", header: "Extrema_ExtCC.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtCC; dist11: var float;
                            distP12: var float; distP21: var float;
                            distP22: var float; p11: var Pnt; p12: var Pnt; p21: var Pnt;
                            p22: var Pnt) {.noSideEffect,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ExtCC.hxx".}
proc setSingleSolutionFlag*(this: var ExtremaExtCC; theSingleSolutionFlag: bool) {.
    importcpp: "SetSingleSolutionFlag", header: "Extrema_ExtCC.hxx".}
proc getSingleSolutionFlag*(this: ExtremaExtCC): bool {.noSideEffect,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ExtCC.hxx".}
