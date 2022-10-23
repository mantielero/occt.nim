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
                                     header: "Extrema_ExtPS.hxx".}
proc newExtremaExtPS*(p: PntObj; s: Adaptor3dSurface; tolU: cfloat; tolV: cfloat;
                     f: ExtremaExtFlag = extremaExtFlagMINMAX;
                     a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaExtPS {.cdecl,
    constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc newExtremaExtPS*(p: PntObj; s: Adaptor3dSurface; uinf: cfloat; usup: cfloat;
                     vinf: cfloat; vsup: cfloat; tolU: cfloat; tolV: cfloat;
                     f: ExtremaExtFlag = extremaExtFlagMINMAX;
                     a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaExtPS {.cdecl,
    constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc initialize*(this: var ExtremaExtPS; s: Adaptor3dSurface; uinf: cfloat;
                usup: cfloat; vinf: cfloat; vsup: cfloat; tolU: cfloat; tolV: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_ExtPS.hxx".}
proc perform*(this: var ExtremaExtPS; p: PntObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtPS.hxx".}
proc isDone*(this: ExtremaExtPS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                     header: "Extrema_ExtPS.hxx".}
proc nbExt*(this: ExtremaExtPS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                    header: "Extrema_ExtPS.hxx".}
proc squareDistance*(this: ExtremaExtPS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPS.hxx".}
proc point*(this: ExtremaExtPS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPS.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtPS; dUfVf: var cfloat; dUfVl: var cfloat;
                            dUlVf: var cfloat; dUlVl: var cfloat; pUfVf: var PntObj;
                            pUfVl: var PntObj; pUlVf: var PntObj; pUlVl: var PntObj) {.
    noSideEffect, cdecl, importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPS.hxx".}
proc setFlag*(this: var ExtremaExtPS; f: ExtremaExtFlag) {.cdecl, importcpp: "SetFlag",
    header: "Extrema_ExtPS.hxx".}
proc setAlgo*(this: var ExtremaExtPS; a: ExtremaExtAlgo) {.cdecl, importcpp: "SetAlgo",
    header: "Extrema_ExtPS.hxx".}