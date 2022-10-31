import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import geom_types







##  Created on: 1993-03-10
##  Created by: JCV
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





proc coord*(this: GeomPoint; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coord", header: "Geom_Point.hxx".}
proc pnt*(this: GeomPoint): PntObj {.noSideEffect, cdecl, importcpp: "Pnt", header: "Geom_Point.hxx".}
proc x*(this: GeomPoint): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "Geom_Point.hxx".}
proc y*(this: GeomPoint): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "Geom_Point.hxx".}
proc z*(this: GeomPoint): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "Geom_Point.hxx".}
proc distance*(this: GeomPoint; other: Handle[GeomPoint]): cfloat {.noSideEffect,
    cdecl, importcpp: "Distance", header: "Geom_Point.hxx".}
proc squareDistance*(this: GeomPoint; other: Handle[GeomPoint]): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance", header: "Geom_Point.hxx".}



