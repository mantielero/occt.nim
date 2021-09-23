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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real, Extrema_POnSurf

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_GenLocateExtPS* {.importcpp: "Extrema_GenLocateExtPS",
                           header: "Extrema_GenLocateExtPS.hxx", bycopy.} = object ## !
                                                                              ## Constructor.
    ##  State.
    ##  Result.


proc constructExtrema_GenLocateExtPS*(theS: Adaptor3d_Surface;
                                     theTolU: Standard_Real = PConfusion();
                                     theTolV: Standard_Real = PConfusion()): Extrema_GenLocateExtPS {.
    constructor, importcpp: "Extrema_GenLocateExtPS(@)",
    header: "Extrema_GenLocateExtPS.hxx".}
proc Perform*(this: var Extrema_GenLocateExtPS; theP: gp_Pnt; theU0: Standard_Real;
             theV0: Standard_Real;
             isDistanceCriteria: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "Extrema_GenLocateExtPS.hxx".}
proc IsDone*(this: Extrema_GenLocateExtPS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_GenLocateExtPS.hxx".}
proc SquareDistance*(this: Extrema_GenLocateExtPS): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtPS.hxx".}
proc Point*(this: Extrema_GenLocateExtPS): Extrema_POnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_GenLocateExtPS.hxx".}