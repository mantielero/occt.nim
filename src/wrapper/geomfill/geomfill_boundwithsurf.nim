import ../gp/gp_types
import ../adaptor3d/adaptor3d_types
import geomfill_types





##  Created on: 1995-10-17
##  Created by: Laurent BOURESCHE
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





proc newGeomFillBoundWithSurf*(curveOnSurf: Adaptor3dCurveOnSurface; tol3d: cfloat;
                              tolang: cfloat): GeomFillBoundWithSurf {.cdecl,
    constructor, importcpp: "GeomFill_BoundWithSurf(@)", header: "GeomFill_BoundWithSurf.hxx".}
proc value*(this: GeomFillBoundWithSurf; u: cfloat): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomFill_BoundWithSurf.hxx".}
proc d1*(this: GeomFillBoundWithSurf; u: cfloat; p: var gp_Pnt; v: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "GeomFill_BoundWithSurf.hxx".}
proc hasNormals*(this: GeomFillBoundWithSurf): bool {.noSideEffect, cdecl,
    importcpp: "HasNormals", header: "GeomFill_BoundWithSurf.hxx".}
proc norm*(this: GeomFillBoundWithSurf; u: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "Norm", header: "GeomFill_BoundWithSurf.hxx".}
proc d1Norm*(this: GeomFillBoundWithSurf; u: cfloat; n: var VecObj; dn: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D1Norm", header: "GeomFill_BoundWithSurf.hxx".}
proc reparametrize*(this: var GeomFillBoundWithSurf; first: cfloat; last: cfloat;
                   hasDF: bool; hasDL: bool; df: cfloat; dl: cfloat; rev: bool) {.cdecl,
    importcpp: "Reparametrize", header: "GeomFill_BoundWithSurf.hxx".}
proc bounds*(this: GeomFillBoundWithSurf; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Bounds", header: "GeomFill_BoundWithSurf.hxx".}
proc isDegenerated*(this: GeomFillBoundWithSurf): bool {.noSideEffect, cdecl,
    importcpp: "IsDegenerated", header: "GeomFill_BoundWithSurf.hxx".}


