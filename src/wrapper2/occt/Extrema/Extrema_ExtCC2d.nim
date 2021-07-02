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
discard "forward decl of gp_Pnt2d"
discard "forward decl of Extrema_ExtElC2d"
discard "forward decl of Extrema_ECC2d"
type
  ExtremaExtCC2d* {.importcpp: "Extrema_ExtCC2d", header: "Extrema_ExtCC2d.hxx",
                   bycopy.} = object
    ##  Default value is false.


proc constructExtremaExtCC2d*(): ExtremaExtCC2d {.constructor,
    importcpp: "Extrema_ExtCC2d(@)", header: "Extrema_ExtCC2d.hxx".}
proc constructExtremaExtCC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
                             tolC1: StandardReal = 1.0e-10;
                             tolC2: StandardReal = 1.0e-10): ExtremaExtCC2d {.
    constructor, importcpp: "Extrema_ExtCC2d(@)", header: "Extrema_ExtCC2d.hxx".}
proc constructExtremaExtCC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
                             u1: StandardReal; u2: StandardReal; v1: StandardReal;
                             v2: StandardReal; tolC1: StandardReal = 1.0e-10;
                             tolC2: StandardReal = 1.0e-10): ExtremaExtCC2d {.
    constructor, importcpp: "Extrema_ExtCC2d(@)", header: "Extrema_ExtCC2d.hxx".}
proc initialize*(this: var ExtremaExtCC2d; c2: Adaptor2dCurve2d; v1: StandardReal;
                v2: StandardReal; tolC1: StandardReal = 1.0e-10;
                tolC2: StandardReal = 1.0e-10) {.importcpp: "Initialize",
    header: "Extrema_ExtCC2d.hxx".}
proc perform*(this: var ExtremaExtCC2d; c1: Adaptor2dCurve2d; u1: StandardReal;
             u2: StandardReal) {.importcpp: "Perform", header: "Extrema_ExtCC2d.hxx".}
proc isDone*(this: ExtremaExtCC2d): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtCC2d.hxx".}
proc nbExt*(this: ExtremaExtCC2d): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtCC2d.hxx".}
proc isParallel*(this: ExtremaExtCC2d): StandardBoolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtCC2d.hxx".}
proc squareDistance*(this: ExtremaExtCC2d; n: StandardInteger = 1): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtCC2d.hxx".}
proc points*(this: ExtremaExtCC2d; n: StandardInteger; p1: var ExtremaPOnCurv2d;
            p2: var ExtremaPOnCurv2d) {.noSideEffect, importcpp: "Points",
                                     header: "Extrema_ExtCC2d.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtCC2d; dist11: var StandardReal;
                            distP12: var StandardReal; distP21: var StandardReal;
                            distP22: var StandardReal; p11: var GpPnt2d;
                            p12: var GpPnt2d; p21: var GpPnt2d; p22: var GpPnt2d) {.
    noSideEffect, importcpp: "TrimmedSquareDistances",
    header: "Extrema_ExtCC2d.hxx".}
proc setSingleSolutionFlag*(this: var ExtremaExtCC2d;
                           theSingleSolutionFlag: StandardBoolean) {.
    importcpp: "SetSingleSolutionFlag", header: "Extrema_ExtCC2d.hxx".}
proc getSingleSolutionFlag*(this: ExtremaExtCC2d): StandardBoolean {.noSideEffect,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ExtCC2d.hxx".}

