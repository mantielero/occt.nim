import gc_types
import ../gp/gp_types
import ../standard/standard_types
import ../geom/geom_types





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



proc trimmedCone*(p1: gp_Pnt; p2: gp_Pnt; p3: gp_Pnt; p4: gp_Pnt): MakeTrimmedCone {.cdecl,
    constructor, importcpp: "GC_MakeTrimmedCone(@)", header: "GC_MakeTrimmedCone.hxx".}
proc trimmedCone*(p1: gp_Pnt; p2: gp_Pnt; r1: cfloat; r2: cfloat): MakeTrimmedCone {.
    cdecl, constructor, importcpp: "GC_MakeTrimmedCone(@)", header: "GC_MakeTrimmedCone.hxx".}
proc value*(this: MakeTrimmedCone): Handle[GeomRectangularTrimmedSurface] {.
    noSideEffect, cdecl, importcpp: "Value", header: "GC_MakeTrimmedCone.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeTrimmedCone): Handle[
    GeomRectangularTrimmedSurface] {.noSideEffect, cdecl, importcpp: "(Handle_Geom_TrimmedCurve)(#)",
                                    header: "GC_MakeTrimmedCone.hxx".}


