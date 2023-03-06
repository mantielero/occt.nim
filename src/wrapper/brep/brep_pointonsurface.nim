import brep_types
import ../toploc/toploc_types
import ../standard/standard_types
import ../geom/geom_types





##  Created on: 1993-08-10
##  Created by: Remi LEQUETTE
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





proc newBRepPointOnSurface*(p1: cfloat; p2: cfloat; s: Handle[GeomSurface];
                           L: TopLocLocation): BRepPointOnSurface {.cdecl,
    constructor, importcpp: "BRep_PointOnSurface(@)", header: "BRep_PointOnSurface.hxx".}
proc isPointOnSurface*(this: BRepPointOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsPointOnSurface", header: "BRep_PointOnSurface.hxx".}
proc isPointOnSurface*(this: BRepPointOnSurface; s: Handle[GeomSurface];
                      L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsPointOnSurface", header: "BRep_PointOnSurface.hxx".}
proc parameter2*(this: BRepPointOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter2", header: "BRep_PointOnSurface.hxx".}
proc parameter2*(this: var BRepPointOnSurface; p: cfloat) {.cdecl,
    importcpp: "Parameter2", header: "BRep_PointOnSurface.hxx".}


