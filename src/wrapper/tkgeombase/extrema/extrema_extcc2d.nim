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


proc newExtremaExtCC2d*(): ExtremaExtCC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtCC2d(@)", dynlib: tkgeombase.}
proc newExtremaExtCC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
                       tolC1: cfloat = 1.0e-10; tolC2: cfloat = 1.0e-10): ExtremaExtCC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtCC2d(@)", dynlib: tkgeombase.}
proc newExtremaExtCC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d; u1: cfloat;
                       u2: cfloat; v1: cfloat; v2: cfloat; tolC1: cfloat = 1.0e-10;
                       tolC2: cfloat = 1.0e-10): ExtremaExtCC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtCC2d(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaExtCC2d; c2: Adaptor2dCurve2d; v1: cfloat; v2: cfloat;
                tolC1: cfloat = 1.0e-10; tolC2: cfloat = 1.0e-10) {.cdecl,
    importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtCC2d; c1: Adaptor2dCurve2d; u1: cfloat; u2: cfloat) {.
    cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtCC2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtCC2d): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      dynlib: tkgeombase.}
proc isParallel*(this: ExtremaExtCC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtCC2d; n: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc points*(this: ExtremaExtCC2d; n: cint; p1: var ExtremaPOnCurv2d;
            p2: var ExtremaPOnCurv2d) {.noSideEffect, cdecl, importcpp: "Points",
                                     dynlib: tkgeombase.}
proc trimmedSquareDistances*(this: ExtremaExtCC2d; dist11: var cfloat;
                            distP12: var cfloat; distP21: var cfloat;
                            distP22: var cfloat; p11: var Pnt2d; p12: var Pnt2d;
                            p21: var Pnt2d; p22: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "TrimmedSquareDistances", dynlib: tkgeombase.}
proc setSingleSolutionFlag*(this: var ExtremaExtCC2d; theSingleSolutionFlag: bool) {.
    cdecl, importcpp: "SetSingleSolutionFlag", dynlib: tkgeombase.}
proc getSingleSolutionFlag*(this: ExtremaExtCC2d): bool {.noSideEffect, cdecl,
    importcpp: "GetSingleSolutionFlag", dynlib: tkgeombase.}