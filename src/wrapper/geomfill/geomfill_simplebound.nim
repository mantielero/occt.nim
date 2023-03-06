import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import geomfill_types





##  Created on: 1995-11-03
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





proc newGeomFillSimpleBound*(curve: Handle[Adaptor3dHCurve]; tol3d: cfloat;
                            tolang: cfloat): GeomFillSimpleBound {.cdecl,
    constructor, importcpp: "GeomFill_SimpleBound(@)", header: "GeomFill_SimpleBound.hxx".}
proc value*(this: GeomFillSimpleBound; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomFill_SimpleBound.hxx".}
proc d1*(this: GeomFillSimpleBound; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "GeomFill_SimpleBound.hxx".}
proc reparametrize*(this: var GeomFillSimpleBound; first: cfloat; last: cfloat;
                   hasDF: bool; hasDL: bool; df: cfloat; dl: cfloat; rev: bool) {.cdecl,
    importcpp: "Reparametrize", header: "GeomFill_SimpleBound.hxx".}
proc bounds*(this: GeomFillSimpleBound; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Bounds", header: "GeomFill_SimpleBound.hxx".}
proc isDegenerated*(this: GeomFillSimpleBound): bool {.noSideEffect, cdecl,
    importcpp: "IsDegenerated", header: "GeomFill_SimpleBound.hxx".}


