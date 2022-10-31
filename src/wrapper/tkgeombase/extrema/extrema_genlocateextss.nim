import ../../tkg3d/adaptor3d/adaptor3d_types
import extrema_types





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



proc newExtremaGenLocateExtSS*(): ExtremaGenLocateExtSS {.cdecl, constructor,
    importcpp: "Extrema_GenLocateExtSS(@)", header: "Extrema_GenLocateExtSS.hxx".}
proc newExtremaGenLocateExtSS*(s1: Adaptor3dSurface; s2: Adaptor3dSurface;
                              u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
                              tol1: cfloat; tol2: cfloat): ExtremaGenLocateExtSS {.
    cdecl, constructor, importcpp: "Extrema_GenLocateExtSS(@)", header: "Extrema_GenLocateExtSS.hxx".}
proc perform*(this: var ExtremaGenLocateExtSS; s1: Adaptor3dSurface;
             s2: Adaptor3dSurface; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tol1: cfloat; tol2: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_GenLocateExtSS.hxx".}
proc isDone*(this: ExtremaGenLocateExtSS): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_GenLocateExtSS.hxx".}
proc squareDistance*(this: ExtremaGenLocateExtSS): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtSS.hxx".}
proc pointOnS1*(this: ExtremaGenLocateExtSS): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "PointOnS1", header: "Extrema_GenLocateExtSS.hxx".}
proc pointOnS2*(this: ExtremaGenLocateExtSS): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "PointOnS2", header: "Extrema_GenLocateExtSS.hxx".}


