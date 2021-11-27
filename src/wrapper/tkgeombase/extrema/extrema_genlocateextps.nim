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

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaGenLocateExtPS* {.importcpp: "Extrema_GenLocateExtPS",
                          header: "Extrema_GenLocateExtPS.hxx", bycopy.} = object ## !
                                                                             ## Constructor.
    ##  State.
    ##  Result.


proc newExtremaGenLocateExtPS*(theS: Adaptor3dSurface;
                              theTolU: cfloat = pConfusion();
                              theTolV: cfloat = pConfusion()): ExtremaGenLocateExtPS {.
    cdecl, constructor, importcpp: "Extrema_GenLocateExtPS(@)", header: "Extrema_GenLocateExtPS.hxx".}
proc perform*(this: var ExtremaGenLocateExtPS; theP: Pnt; theU0: cfloat; theV0: cfloat;
             isDistanceCriteria: bool = false) {.cdecl, importcpp: "Perform",
    header: "Extrema_GenLocateExtPS.hxx".}
proc isDone*(this: ExtremaGenLocateExtPS): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_GenLocateExtPS.hxx".}
proc squareDistance*(this: ExtremaGenLocateExtPS): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtPS.hxx".}
proc point*(this: ExtremaGenLocateExtPS): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_GenLocateExtPS.hxx".}