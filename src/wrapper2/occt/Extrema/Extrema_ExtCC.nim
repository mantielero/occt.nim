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


proc constructExtremaExtCC*(tolC1: StandardReal = 1.0e-10;
                           tolC2: StandardReal = 1.0e-10): ExtremaExtCC {.
    constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc constructExtremaExtCC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve;
                           tolC1: StandardReal = 1.0e-10;
                           tolC2: StandardReal = 1.0e-10): ExtremaExtCC {.
    constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc constructExtremaExtCC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve; u1: StandardReal;
                           u2: StandardReal; v1: StandardReal; v2: StandardReal;
                           tolC1: StandardReal = 1.0e-10;
                           tolC2: StandardReal = 1.0e-10): ExtremaExtCC {.
    constructor, importcpp: "Extrema_ExtCC(@)", header: "Extrema_ExtCC.hxx".}
proc setCurve*(this: var ExtremaExtCC; theRank: StandardInteger; c: Adaptor3dCurve) {.
    importcpp: "SetCurve", header: "Extrema_ExtCC.hxx".}
proc setCurve*(this: var ExtremaExtCC; theRank: StandardInteger; c: Adaptor3dCurve;
              uinf: StandardReal; usup: StandardReal) {.importcpp: "SetCurve",
    header: "Extrema_ExtCC.hxx".}
proc setRange*(this: var ExtremaExtCC; theRank: StandardInteger; uinf: StandardReal;
              usup: StandardReal) {.importcpp: "SetRange",
                                  header: "Extrema_ExtCC.hxx".}
proc setTolerance*(this: var ExtremaExtCC; theRank: StandardInteger; tol: StandardReal) {.
    importcpp: "SetTolerance", header: "Extrema_ExtCC.hxx".}
proc perform*(this: var ExtremaExtCC) {.importcpp: "Perform",
                                    header: "Extrema_ExtCC.hxx".}
proc isDone*(this: ExtremaExtCC): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtCC.hxx".}
proc nbExt*(this: ExtremaExtCC): StandardInteger {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_ExtCC.hxx".}
proc isParallel*(this: ExtremaExtCC): StandardBoolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtCC.hxx".}
proc squareDistance*(this: ExtremaExtCC; n: StandardInteger = 1): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtCC.hxx".}
proc points*(this: ExtremaExtCC; n: StandardInteger; p1: var ExtremaPOnCurv;
            p2: var ExtremaPOnCurv) {.noSideEffect, importcpp: "Points",
                                   header: "Extrema_ExtCC.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtCC; dist11: var StandardReal;
                            distP12: var StandardReal; distP21: var StandardReal;
                            distP22: var StandardReal; p11: var GpPnt; p12: var GpPnt;
                            p21: var GpPnt; p22: var GpPnt) {.noSideEffect,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ExtCC.hxx".}
proc setSingleSolutionFlag*(this: var ExtremaExtCC;
                           theSingleSolutionFlag: StandardBoolean) {.
    importcpp: "SetSingleSolutionFlag", header: "Extrema_ExtCC.hxx".}
proc getSingleSolutionFlag*(this: ExtremaExtCC): StandardBoolean {.noSideEffect,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ExtCC.hxx".}

