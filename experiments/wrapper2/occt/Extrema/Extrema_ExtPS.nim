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


proc constructExtremaExtPS*(): ExtremaExtPS {.constructor,
    importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc constructExtremaExtPS*(p: Pnt; s: Adaptor3dSurface; tolU: float; tolV: float;
                           f: ExtremaExtFlag = extremaExtFlagMINMAX;
                           a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaExtPS {.
    constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc constructExtremaExtPS*(p: Pnt; s: Adaptor3dSurface; uinf: float; usup: float;
                           vinf: float; vsup: float; tolU: float; tolV: float;
                           f: ExtremaExtFlag = extremaExtFlagMINMAX;
                           a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaExtPS {.
    constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc initialize*(this: var ExtremaExtPS; s: Adaptor3dSurface; uinf: float; usup: float;
                vinf: float; vsup: float; tolU: float; tolV: float) {.
    importcpp: "Initialize", header: "Extrema_ExtPS.hxx".}
proc perform*(this: var ExtremaExtPS; p: Pnt) {.importcpp: "Perform",
    header: "Extrema_ExtPS.hxx".}
proc isDone*(this: ExtremaExtPS): bool {.noSideEffect, importcpp: "IsDone",
                                     header: "Extrema_ExtPS.hxx".}
proc nbExt*(this: ExtremaExtPS): int {.noSideEffect, importcpp: "NbExt",
                                   header: "Extrema_ExtPS.hxx".}
proc squareDistance*(this: ExtremaExtPS; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_ExtPS.hxx".}
proc point*(this: ExtremaExtPS; n: int): ExtremaPOnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPS.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtPS; dUfVf: var float; dUfVl: var float;
                            dUlVf: var float; dUlVl: var float; pUfVf: var Pnt;
                            pUfVl: var Pnt; pUlVf: var Pnt; pUlVl: var Pnt) {.
    noSideEffect, importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPS.hxx".}
proc setFlag*(this: var ExtremaExtPS; f: ExtremaExtFlag) {.importcpp: "SetFlag",
    header: "Extrema_ExtPS.hxx".}
proc setAlgo*(this: var ExtremaExtPS; a: ExtremaExtAlgo) {.importcpp: "SetAlgo",
    header: "Extrema_ExtPS.hxx".}
