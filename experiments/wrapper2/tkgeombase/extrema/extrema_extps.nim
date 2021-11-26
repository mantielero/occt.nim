##  Created on: 1994-02-01
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

discard "forward decl of Extrema_ExtPExtS"
discard "forward decl of Extrema_ExtPRevS"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaExtPS* {.importcpp: "Extrema_ExtPS", header: "Extrema_ExtPS.hxx", bycopy.} = object


proc newExtremaExtPS*(): ExtremaExtPS {.cdecl, constructor,
                                     importcpp: "Extrema_ExtPS(@)",
                                     dynlib: tkgeombase.}
proc newExtremaExtPS*(p: Pnt; s: Adaptor3dSurface; tolU: cfloat; tolV: cfloat;
                     f: ExtremaExtFlag = extremaExtFlagMINMAX;
                     a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaExtPS {.cdecl,
    constructor, importcpp: "Extrema_ExtPS(@)", dynlib: tkgeombase.}
proc newExtremaExtPS*(p: Pnt; s: Adaptor3dSurface; uinf: cfloat; usup: cfloat;
                     vinf: cfloat; vsup: cfloat; tolU: cfloat; tolV: cfloat;
                     f: ExtremaExtFlag = extremaExtFlagMINMAX;
                     a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaExtPS {.cdecl,
    constructor, importcpp: "Extrema_ExtPS(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaExtPS; s: Adaptor3dSurface; uinf: cfloat;
                usup: cfloat; vinf: cfloat; vsup: cfloat; tolU: cfloat; tolV: cfloat) {.
    cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPS; p: Pnt) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtPS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                     dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtPS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                    dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtPS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc point*(this: ExtremaExtPS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}
proc trimmedSquareDistances*(this: ExtremaExtPS; dUfVf: var cfloat; dUfVl: var cfloat;
                            dUlVf: var cfloat; dUlVl: var cfloat; pUfVf: var Pnt;
                            pUfVl: var Pnt; pUlVf: var Pnt; pUlVl: var Pnt) {.
    noSideEffect, cdecl, importcpp: "TrimmedSquareDistances", dynlib: tkgeombase.}
proc setFlag*(this: var ExtremaExtPS; f: ExtremaExtFlag) {.cdecl, importcpp: "SetFlag",
    dynlib: tkgeombase.}
proc setAlgo*(this: var ExtremaExtPS; a: ExtremaExtAlgo) {.cdecl, importcpp: "SetAlgo",
    dynlib: tkgeombase.}