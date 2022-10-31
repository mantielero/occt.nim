import ../../tkg3d/adaptor3d/adaptor3d_types
import extrema_types



##  Created on: 1994-07-06
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



proc newExtremaLocateExtCC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve; u0: cfloat;
                           v0: cfloat): ExtremaLocateExtCC {.cdecl, constructor,
    importcpp: "Extrema_LocateExtCC(@)", header: "Extrema_LocateExtCC.hxx".}
proc isDone*(this: ExtremaLocateExtCC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_LocateExtCC.hxx".}
proc squareDistance*(this: ExtremaLocateExtCC): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocateExtCC.hxx".}
proc point*(this: ExtremaLocateExtCC; p1: var ExtremaPOnCurv; p2: var ExtremaPOnCurv) {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_LocateExtCC.hxx".}

