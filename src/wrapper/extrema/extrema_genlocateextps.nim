import extrema_types
import ../gp/gp_types
import ../adaptor3d/adaptor3d_types
import ../precision/precision
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

discard "forward decl of PntObj"
discard "forward decl of Adaptor3d_Surface"

proc newExtrema_GenLocateExtPS*(theS: Adaptor3d_Surface;
                               theTolU: cfloat = pConfusion();
                               theTolV: cfloat = pConfusion()): Extrema_GenLocateExtPS {.
    cdecl, constructor, importcpp: "Extrema_GenLocateExtPS(@)",
    header: "Extrema_GenLocateExtPS.hxx".}
proc Perform*(this: var Extrema_GenLocateExtPS; theP: PntObj; theU0: cfloat;
             theV0: cfloat; isDistanceCriteria: bool = false) {.cdecl,
    importcpp: "Perform", header: "Extrema_GenLocateExtPS.hxx".}
proc IsDone*(this: Extrema_GenLocateExtPS): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_GenLocateExtPS.hxx".}
proc SquareDistance*(this: Extrema_GenLocateExtPS): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtPS.hxx".}
proc Point*(this: Extrema_GenLocateExtPS): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_GenLocateExtPS.hxx".}
proc IsMinDist*(theP: PntObj; theS: Adaptor3d_Surface; theU0: cfloat; theV0: cfloat): bool {.
    cdecl, importcpp: "Extrema_GenLocateExtPS::IsMinDist(@)",
    header: "Extrema_GenLocateExtPS.hxx".}