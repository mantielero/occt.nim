##  Created on: 1995-07-18
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of Extrema_POnSurfParams"
type
  ExtremaGenExtPS* {.importcpp: "Extrema_GenExtPS", header: "Extrema_GenExtPS.hxx",
                    bycopy.} = object


proc constructExtremaGenExtPS*(): ExtremaGenExtPS {.constructor,
    importcpp: "Extrema_GenExtPS(@)", header: "Extrema_GenExtPS.hxx".}
proc constructExtremaGenExtPS*(p: Pnt; s: Adaptor3dSurface; nbU: cint; nbV: cint;
                              tolU: cfloat; tolV: cfloat;
                              f: ExtremaExtFlag = extremaExtFlagMINMAX;
                              a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaGenExtPS {.
    constructor, importcpp: "Extrema_GenExtPS(@)", header: "Extrema_GenExtPS.hxx".}
proc constructExtremaGenExtPS*(p: Pnt; s: Adaptor3dSurface; nbU: cint; nbV: cint;
                              umin: cfloat; usup: cfloat; vmin: cfloat; vsup: cfloat;
                              tolU: cfloat; tolV: cfloat;
                              f: ExtremaExtFlag = extremaExtFlagMINMAX;
                              a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaGenExtPS {.
    constructor, importcpp: "Extrema_GenExtPS(@)", header: "Extrema_GenExtPS.hxx".}
proc initialize*(this: var ExtremaGenExtPS; s: Adaptor3dSurface; nbU: cint; nbV: cint;
                tolU: cfloat; tolV: cfloat) {.importcpp: "Initialize",
    header: "Extrema_GenExtPS.hxx".}
proc initialize*(this: var ExtremaGenExtPS; s: Adaptor3dSurface; nbU: cint; nbV: cint;
                umin: cfloat; usup: cfloat; vmin: cfloat; vsup: cfloat; tolU: cfloat;
                tolV: cfloat) {.importcpp: "Initialize",
                              header: "Extrema_GenExtPS.hxx".}
proc perform*(this: var ExtremaGenExtPS; p: Pnt) {.importcpp: "Perform",
    header: "Extrema_GenExtPS.hxx".}
proc setFlag*(this: var ExtremaGenExtPS; f: ExtremaExtFlag) {.importcpp: "SetFlag",
    header: "Extrema_GenExtPS.hxx".}
proc setAlgo*(this: var ExtremaGenExtPS; a: ExtremaExtAlgo) {.importcpp: "SetAlgo",
    header: "Extrema_GenExtPS.hxx".}
proc isDone*(this: ExtremaGenExtPS): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "Extrema_GenExtPS.hxx".}
proc nbExt*(this: ExtremaGenExtPS): cint {.noSideEffect, importcpp: "NbExt",
                                       header: "Extrema_GenExtPS.hxx".}
proc squareDistance*(this: ExtremaGenExtPS; n: cint): cfloat {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_GenExtPS.hxx".}
proc point*(this: ExtremaGenExtPS; n: cint): ExtremaPOnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_GenExtPS.hxx".}

























