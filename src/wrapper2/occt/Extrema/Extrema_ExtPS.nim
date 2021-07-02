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
proc constructExtremaExtPS*(p: GpPnt; s: Adaptor3dSurface; tolU: StandardReal;
                           tolV: StandardReal;
                           f: ExtremaExtFlag = extremaExtFlagMINMAX;
                           a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaExtPS {.
    constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc constructExtremaExtPS*(p: GpPnt; s: Adaptor3dSurface; uinf: StandardReal;
                           usup: StandardReal; vinf: StandardReal;
                           vsup: StandardReal; tolU: StandardReal;
                           tolV: StandardReal;
                           f: ExtremaExtFlag = extremaExtFlagMINMAX;
                           a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaExtPS {.
    constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc initialize*(this: var ExtremaExtPS; s: Adaptor3dSurface; uinf: StandardReal;
                usup: StandardReal; vinf: StandardReal; vsup: StandardReal;
                tolU: StandardReal; tolV: StandardReal) {.importcpp: "Initialize",
    header: "Extrema_ExtPS.hxx".}
proc perform*(this: var ExtremaExtPS; p: GpPnt) {.importcpp: "Perform",
    header: "Extrema_ExtPS.hxx".}
proc isDone*(this: ExtremaExtPS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPS.hxx".}
proc nbExt*(this: ExtremaExtPS): StandardInteger {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_ExtPS.hxx".}
proc squareDistance*(this: ExtremaExtPS; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPS.hxx".}
proc point*(this: ExtremaExtPS; n: StandardInteger): ExtremaPOnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPS.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtPS; dUfVf: var StandardReal;
                            dUfVl: var StandardReal; dUlVf: var StandardReal;
                            dUlVl: var StandardReal; pUfVf: var GpPnt;
                            pUfVl: var GpPnt; pUlVf: var GpPnt; pUlVl: var GpPnt) {.
    noSideEffect, importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPS.hxx".}
proc setFlag*(this: var ExtremaExtPS; f: ExtremaExtFlag) {.importcpp: "SetFlag",
    header: "Extrema_ExtPS.hxx".}
proc setAlgo*(this: var ExtremaExtPS; a: ExtremaExtAlgo) {.importcpp: "SetAlgo",
    header: "Extrema_ExtPS.hxx".}

