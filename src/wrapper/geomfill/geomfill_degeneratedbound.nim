import ../gp/gp_types
import geomfill_types





##  Created on: 1995-12-05
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





proc newGeomFillDegeneratedBound*(point: PntObj; first: cfloat; last: cfloat;
                                 tol3d: cfloat; tolang: cfloat): GeomFillDegeneratedBound {.
    cdecl, constructor, importcpp: "GeomFill_DegeneratedBound(@)",
    header: "GeomFill_DegeneratedBound.hxx".}
proc value*(this: GeomFillDegeneratedBound; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomFill_DegeneratedBound.hxx".}
proc d1*(this: GeomFillDegeneratedBound; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "GeomFill_DegeneratedBound.hxx".}
proc reparametrize*(this: var GeomFillDegeneratedBound; first: cfloat; last: cfloat;
                   hasDF: bool; hasDL: bool; df: cfloat; dl: cfloat; rev: bool) {.cdecl,
    importcpp: "Reparametrize", header: "GeomFill_DegeneratedBound.hxx".}
proc bounds*(this: GeomFillDegeneratedBound; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Bounds", header: "GeomFill_DegeneratedBound.hxx".}
proc isDegenerated*(this: GeomFillDegeneratedBound): bool {.noSideEffect, cdecl,
    importcpp: "IsDegenerated", header: "GeomFill_DegeneratedBound.hxx".}


