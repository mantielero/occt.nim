import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkg2d/geom2d/geom2d_types
import gce2d_types





##  Created on: 1992-09-28
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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



proc newGCE2dMakeArcOfParabola*(parab: Parab2dObj; alpha1: cfloat; alpha2: cfloat;
                               sense: bool = true): GCE2dMakeArcOfParabola {.cdecl,
    constructor, importcpp: "GCE2d_MakeArcOfParabola(@)", header: "GCE2d_MakeArcOfParabola.hxx".}
proc newGCE2dMakeArcOfParabola*(parab: Parab2dObj; p: Pnt2dObj; alpha: cfloat;
                               sense: bool = true): GCE2dMakeArcOfParabola {.cdecl,
    constructor, importcpp: "GCE2d_MakeArcOfParabola(@)", header: "GCE2d_MakeArcOfParabola.hxx".}
proc newGCE2dMakeArcOfParabola*(parab: Parab2dObj; p1: Pnt2dObj; p2: Pnt2dObj;
                               sense: bool = true): GCE2dMakeArcOfParabola {.cdecl,
    constructor, importcpp: "GCE2d_MakeArcOfParabola(@)", header: "GCE2d_MakeArcOfParabola.hxx".}
proc value*(this: GCE2dMakeArcOfParabola): Handle[Geom2dTrimmedCurve] {.
    noSideEffect, cdecl, importcpp: "Value", header: "GCE2d_MakeArcOfParabola.hxx".}
converter `constopencascade`*(this: GCE2dMakeArcOfParabola): Handle[
    Geom2dTrimmedCurve] {.noSideEffect, cdecl, importcpp: "GCE2d_MakeArcOfParabola::operator constopencascade",
                         header: "GCE2d_MakeArcOfParabola.hxx".}


