import ../../tkg3d/adaptor3d/adaptor3d_types
import extrema_types





##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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



proc newExtremaLocECC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve; u0: cfloat; v0: cfloat;
                      tolU: cfloat; tolV: cfloat): ExtremaLocECC {.cdecl, constructor,
    importcpp: "Extrema_LocECC(@)", header: "Extrema_LocECC.hxx".}
proc isDone*(this: ExtremaLocECC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "Extrema_LocECC.hxx".}
proc squareDistance*(this: ExtremaLocECC): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocECC.hxx".}
proc point*(this: ExtremaLocECC; p1: var ExtremaPOnCurv; p2: var ExtremaPOnCurv) {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_LocECC.hxx".}


