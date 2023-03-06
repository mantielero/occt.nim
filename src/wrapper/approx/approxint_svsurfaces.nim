import ../../tkmath/gp/gp_types
import approx_types
import ../../tkgeomalgo/intsurf/intsurf_types





##  Created on: 1993-03-17
##  Created by: Laurent BUCHARD
##  Copyright (c) 1993-1999 Matra Datavision
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



proc compute*(this: var ApproxIntSvSurfaces; u1: var cfloat; v1: var cfloat;
             u2: var cfloat; v2: var cfloat; pt: var PntObj; tg: var VecObj; tguv1: var Vec2dObj;
             tguv2: var Vec2dObj): bool {.cdecl, importcpp: "Compute", header: "ApproxInt_SvSurfaces.hxx".}
proc pnt*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
         p: var PntObj) {.cdecl, importcpp: "Pnt", header: "ApproxInt_SvSurfaces.hxx".}
proc seekPoint*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat;
               v2: cfloat; point: var IntSurfPntOn2S): bool {.cdecl,
    importcpp: "SeekPoint", header: "ApproxInt_SvSurfaces.hxx".}
proc tangency*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat;
              v2: cfloat; tg: var VecObj): bool {.cdecl, importcpp: "Tangency",
    header: "ApproxInt_SvSurfaces.hxx".}
proc tangencyOnSurf1*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat;
                     v2: cfloat; tg: var Vec2dObj): bool {.cdecl,
    importcpp: "TangencyOnSurf1", header: "ApproxInt_SvSurfaces.hxx".}
proc tangencyOnSurf2*(this: var ApproxIntSvSurfaces; u1: cfloat; v1: cfloat; u2: cfloat;
                     v2: cfloat; tg: var Vec2dObj): bool {.cdecl,
    importcpp: "TangencyOnSurf2", header: "ApproxInt_SvSurfaces.hxx".}
proc destroyApproxIntSvSurfaces*(this: var ApproxIntSvSurfaces) {.cdecl,
    importcpp: "#.~ApproxInt_SvSurfaces()", header: "ApproxInt_SvSurfaces.hxx".}


