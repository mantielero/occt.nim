import extrema_types
import ../tkg3d/adaptor3d/adaptor3d_types
import ../extrema/extrema_genlocateextps
##  Created on: 1996-01-25
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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"

proc newExtrema_GenLocateExtCS*(): Extrema_GenLocateExtCS {.cdecl, constructor,
    importcpp: "Extrema_GenLocateExtCS(@)", header: "Extrema_GenLocateExtCS.hxx".}
proc newExtrema_GenLocateExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface; T: cfloat;
                               U: cfloat; V: cfloat; Tol1: cfloat; Tol2: cfloat): Extrema_GenLocateExtCS {.
    cdecl, constructor, importcpp: "Extrema_GenLocateExtCS(@)",
    header: "Extrema_GenLocateExtCS.hxx".}
proc Perform*(this: var Extrema_GenLocateExtCS; C: Adaptor3d_Curve;
             S: Adaptor3d_Surface; T: cfloat; U: cfloat; V: cfloat; Tol1: cfloat;
             Tol2: cfloat) {.cdecl, importcpp: "Perform",
                           header: "Extrema_GenLocateExtCS.hxx".}
proc IsDone*(this: Extrema_GenLocateExtCS): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_GenLocateExtCS.hxx".}
proc SquareDistance*(this: Extrema_GenLocateExtCS): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtCS.hxx".}
proc PointOnCurve*(this: Extrema_GenLocateExtCS): Extrema_POnCurv {.noSideEffect,
    cdecl, importcpp: "PointOnCurve", header: "Extrema_GenLocateExtCS.hxx".}
proc PointOnSurface*(this: Extrema_GenLocateExtCS): Extrema_POnSurf {.noSideEffect,
    cdecl, importcpp: "PointOnSurface", header: "Extrema_GenLocateExtCS.hxx".}