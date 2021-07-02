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


proc constructExtremaGenLocateExtPS*(theS: Adaptor3dSurface;
                                    theTolU: StandardReal = pConfusion();
                                    theTolV: StandardReal = pConfusion()): ExtremaGenLocateExtPS {.
    constructor, importcpp: "Extrema_GenLocateExtPS(@)",
    header: "Extrema_GenLocateExtPS.hxx".}
proc perform*(this: var ExtremaGenLocateExtPS; theP: GpPnt; theU0: StandardReal;
             theV0: StandardReal;
             isDistanceCriteria: StandardBoolean = standardFalse) {.
    importcpp: "Perform", header: "Extrema_GenLocateExtPS.hxx".}
proc isDone*(this: ExtremaGenLocateExtPS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_GenLocateExtPS.hxx".}
proc squareDistance*(this: ExtremaGenLocateExtPS): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtPS.hxx".}
proc point*(this: ExtremaGenLocateExtPS): ExtremaPOnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_GenLocateExtPS.hxx".}

