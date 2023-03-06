import approx_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../adaptor2d/adaptor2d_types
import ../geom/geom_types
import ../geom2d/geom2d_types





##  Created on: 1995-06-02
##  Created by: Xavier BENVENISTE
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



proc newApproxSameParameter*(c3d: Handle[GeomCurve]; c2d: Handle[Geom2dCurve];
                            s: Handle[GeomSurface]; tol: cfloat): ApproxSameParameter {.
    cdecl, constructor, importcpp: "Approx_SameParameter(@)", header: "Approx_SameParameter.hxx".}
proc newApproxSameParameter*(c3d: Handle[Adaptor3dHCurve];
                            c2d: Handle[Geom2dCurve];
                            s: Handle[Adaptor3dHSurface]; tol: cfloat): ApproxSameParameter {.
    cdecl, constructor, importcpp: "Approx_SameParameter(@)", header: "Approx_SameParameter.hxx".}
proc newApproxSameParameter*(c3d: Handle[Adaptor3dHCurve];
                            c2d: Handle[Adaptor2dHCurve2d];
                            s: Handle[Adaptor3dHSurface]; tol: cfloat): ApproxSameParameter {.
    cdecl, constructor, importcpp: "Approx_SameParameter(@)", header: "Approx_SameParameter.hxx".}
proc isDone*(this: ApproxSameParameter): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Approx_SameParameter.hxx".}
proc tolReached*(this: ApproxSameParameter): cfloat {.noSideEffect, cdecl,
    importcpp: "TolReached", header: "Approx_SameParameter.hxx".}
proc isSameParameter*(this: ApproxSameParameter): bool {.noSideEffect, cdecl,
    importcpp: "IsSameParameter", header: "Approx_SameParameter.hxx".}
proc curve2d*(this: ApproxSameParameter): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Curve2d", header: "Approx_SameParameter.hxx".}


