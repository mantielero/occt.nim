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



proc cylindricalSurface*(a2: gp_Ax2; radius: cfloat): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: "GC_MakeCylindricalSurface.hxx".}
proc cylindricalSurface*(c: gp_Cylinder): MakeCylindricalSurface {.cdecl,
    constructor, importcpp: "GC_MakeCylindricalSurface(@)", header: "GC_MakeCylindricalSurface.hxx".}
proc cylindricalSurface*(cyl: gp_Cylinder; point: gp_Pnt): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: "GC_MakeCylindricalSurface.hxx".}
proc cylindricalSurface*(cyl: gp_Cylinder; dist: cfloat): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: "GC_MakeCylindricalSurface.hxx".}
proc cylindricalSurface*(p1: gp_Pnt; p2: gp_Pnt; p3: gp_Pnt): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: "GC_MakeCylindricalSurface.hxx".}
proc cylindricalSurface*(axis: gp_Ax1; radius: cfloat): MakeCylindricalSurface {.
    cdecl, constructor, importcpp: "GC_MakeCylindricalSurface(@)",
    header: "GC_MakeCylindricalSurface.hxx".}
proc cylindricalSurface*(circ: gp_Circ): MakeCylindricalSurface {.cdecl,
    constructor, importcpp: "GC_MakeCylindricalSurface(@)", header: "GC_MakeCylindricalSurface.hxx".}
proc value*(this: MakeCylindricalSurface): Handle[GeomCylindricalSurface] {.
    noSideEffect, cdecl, importcpp: "Value", header: "GC_MakeCylindricalSurface.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeCylindricalSurface): Handle[
    GeomCylindricalSurface] {.noSideEffect, cdecl, importcpp: "(Handle_Geom_TrimmedCurve)(#)",
                             header: "GC_MakeCylindricalSurface.hxx".}


