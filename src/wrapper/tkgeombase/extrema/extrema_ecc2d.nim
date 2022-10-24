import extrema_types

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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"


proc newExtremaECC2d*(): ExtremaECC2d {.cdecl, constructor,
                                     importcpp: "Extrema_ECC2d(@)",
                                     header: "Extrema_ECC2d.hxx".}
proc newExtremaECC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d): ExtremaECC2d {.
    cdecl, constructor, importcpp: "Extrema_ECC2d(@)", header: "Extrema_ECC2d.hxx".}
proc newExtremaECC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d; uinf: cfloat;
                     usup: cfloat; vinf: cfloat; vsup: cfloat): ExtremaECC2d {.cdecl,
    constructor, importcpp: "Extrema_ECC2d(@)", header: "Extrema_ECC2d.hxx".}
proc setParams*(this: var ExtremaECC2d; c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
               uinf: cfloat; usup: cfloat; vinf: cfloat; vsup: cfloat) {.cdecl,
    importcpp: "SetParams", header: "Extrema_ECC2d.hxx".}
proc setTolerance*(this: var ExtremaECC2d; tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "Extrema_ECC2d.hxx".}
proc setSingleSolutionFlag*(this: var ExtremaECC2d; theSingleSolutionFlag: bool) {.
    cdecl, importcpp: "SetSingleSolutionFlag", header: "Extrema_ECC2d.hxx".}
proc getSingleSolutionFlag*(this: ExtremaECC2d): bool {.noSideEffect, cdecl,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ECC2d.hxx".}
proc perform*(this: var ExtremaECC2d) {.cdecl, importcpp: "Perform", header: "Extrema_ECC2d.hxx".}
proc isDone*(this: ExtremaECC2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                     header: "Extrema_ECC2d.hxx".}
proc isParallel*(this: ExtremaECC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ECC2d.hxx".}
proc nbExt*(this: ExtremaECC2d): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                    header: "Extrema_ECC2d.hxx".}
proc squareDistance*(this: ExtremaECC2d; n: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ECC2d.hxx".}
proc points*(this: ExtremaECC2d; n: cint; p1: var ExtremaPOnCurv2d;
            p2: var ExtremaPOnCurv2d) {.noSideEffect, cdecl, importcpp: "Points",
                                     header: "Extrema_ECC2d.hxx".}
