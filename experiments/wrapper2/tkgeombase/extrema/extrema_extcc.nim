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


proc newExtremaExtCC*(tolC1: cfloat = 1.0e-10; tolC2: cfloat = 1.0e-10): ExtremaExtCC {.
    cdecl, constructor, importcpp: "Extrema_ExtCC(@)", dynlib: tkgeombase.}
proc newExtremaExtCC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve;
                     tolC1: cfloat = 1.0e-10; tolC2: cfloat = 1.0e-10): ExtremaExtCC {.
    cdecl, constructor, importcpp: "Extrema_ExtCC(@)", dynlib: tkgeombase.}
proc newExtremaExtCC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve; u1: cfloat; u2: cfloat;
                     v1: cfloat; v2: cfloat; tolC1: cfloat = 1.0e-10;
                     tolC2: cfloat = 1.0e-10): ExtremaExtCC {.cdecl, constructor,
    importcpp: "Extrema_ExtCC(@)", dynlib: tkgeombase.}
proc setCurve*(this: var ExtremaExtCC; theRank: cint; c: Adaptor3dCurve) {.cdecl,
    importcpp: "SetCurve", dynlib: tkgeombase.}
proc setCurve*(this: var ExtremaExtCC; theRank: cint; c: Adaptor3dCurve; uinf: cfloat;
              usup: cfloat) {.cdecl, importcpp: "SetCurve", dynlib: tkgeombase.}
proc setRange*(this: var ExtremaExtCC; theRank: cint; uinf: cfloat; usup: cfloat) {.cdecl,
    importcpp: "SetRange", dynlib: tkgeombase.}
proc setTolerance*(this: var ExtremaExtCC; theRank: cint; tol: cfloat) {.cdecl,
    importcpp: "SetTolerance", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtCC) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtCC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                     dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtCC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                    dynlib: tkgeombase.}
proc isParallel*(this: ExtremaExtCC): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtCC; n: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc points*(this: ExtremaExtCC; n: cint; p1: var ExtremaPOnCurv; p2: var ExtremaPOnCurv) {.
    noSideEffect, cdecl, importcpp: "Points", dynlib: tkgeombase.}
proc trimmedSquareDistances*(this: ExtremaExtCC; dist11: var cfloat;
                            distP12: var cfloat; distP21: var cfloat;
                            distP22: var cfloat; p11: var Pnt; p12: var Pnt;
                            p21: var Pnt; p22: var Pnt) {.noSideEffect, cdecl,
    importcpp: "TrimmedSquareDistances", dynlib: tkgeombase.}
proc setSingleSolutionFlag*(this: var ExtremaExtCC; theSingleSolutionFlag: bool) {.
    cdecl, importcpp: "SetSingleSolutionFlag", dynlib: tkgeombase.}
proc getSingleSolutionFlag*(this: ExtremaExtCC): bool {.noSideEffect, cdecl,
    importcpp: "GetSingleSolutionFlag", dynlib: tkgeombase.}