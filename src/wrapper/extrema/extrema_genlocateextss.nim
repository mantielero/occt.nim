import extrema_types
import ../../tkg3d/adaptor3d/adaptor3d_types
##  Created on: 1996-01-22
##  Created by: Laurent PAINNOT
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_Surface"

proc newExtrema_GenLocateExtSS*(): Extrema_GenLocateExtSS {.cdecl, constructor,
    importcpp: "Extrema_GenLocateExtSS(@)", header: "Extrema_GenLocateExtSS.hxx".}
proc newExtrema_GenLocateExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface;
                               U1: cfloat; V1: cfloat; U2: cfloat; V2: cfloat;
                               Tol1: cfloat; Tol2: cfloat): Extrema_GenLocateExtSS {.
    cdecl, constructor, importcpp: "Extrema_GenLocateExtSS(@)",
    header: "Extrema_GenLocateExtSS.hxx".}
proc Perform*(this: var Extrema_GenLocateExtSS; S1: Adaptor3d_Surface;
             S2: Adaptor3d_Surface; U1: cfloat; V1: cfloat; U2: cfloat; V2: cfloat;
             Tol1: cfloat; Tol2: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_GenLocateExtSS.hxx".}
proc IsDone*(this: Extrema_GenLocateExtSS): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_GenLocateExtSS.hxx".}
proc SquareDistance*(this: Extrema_GenLocateExtSS): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtSS.hxx".}
proc PointOnS1*(this: Extrema_GenLocateExtSS): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "PointOnS1", header: "Extrema_GenLocateExtSS.hxx".}
proc PointOnS2*(this: Extrema_GenLocateExtSS): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "PointOnS2", header: "Extrema_GenLocateExtSS.hxx".}