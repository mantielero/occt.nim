import ../../tkg3d/adaptor3d/adaptor3d_types
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



proc newExtremaECC*(): ExtremaECC {.cdecl, constructor, importcpp: "Extrema_ECC(@)",
                                 header: "Extrema_ECC.hxx".}
proc newExtremaECC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve): ExtremaECC {.cdecl,
    constructor, importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc newExtremaECC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve; uinf: cfloat; usup: cfloat;
                   vinf: cfloat; vsup: cfloat): ExtremaECC {.cdecl, constructor,
    importcpp: "Extrema_ECC(@)", header: "Extrema_ECC.hxx".}
proc setParams*(this: var ExtremaECC; c1: Adaptor3dCurve; c2: Adaptor3dCurve;
               uinf: cfloat; usup: cfloat; vinf: cfloat; vsup: cfloat) {.cdecl,
    importcpp: "SetParams", header: "Extrema_ECC.hxx".}
proc setTolerance*(this: var ExtremaECC; tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "Extrema_ECC.hxx".}
proc setSingleSolutionFlag*(this: var ExtremaECC; theSingleSolutionFlag: bool) {.
    cdecl, importcpp: "SetSingleSolutionFlag", header: "Extrema_ECC.hxx".}
proc getSingleSolutionFlag*(this: ExtremaECC): bool {.noSideEffect, cdecl,
    importcpp: "GetSingleSolutionFlag", header: "Extrema_ECC.hxx".}
proc perform*(this: var ExtremaECC) {.cdecl, importcpp: "Perform", header: "Extrema_ECC.hxx".}
proc isDone*(this: ExtremaECC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                   header: "Extrema_ECC.hxx".}
proc isParallel*(this: ExtremaECC): bool {.noSideEffect, cdecl,
                                       importcpp: "IsParallel", header: "Extrema_ECC.hxx".}
proc nbExt*(this: ExtremaECC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                  header: "Extrema_ECC.hxx".}
proc squareDistance*(this: ExtremaECC; n: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ECC.hxx".}
proc points*(this: ExtremaECC; n: cint; p1: var ExtremaPOnCurv; p2: var ExtremaPOnCurv) {.
    noSideEffect, cdecl, importcpp: "Points", header: "Extrema_ECC.hxx".}

