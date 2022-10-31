import ../../tkernel/standard/standard_types
import geom_types







##  Created on: 1998-05-05
##  Created by: Stepan MISHIN
##  Copyright (c) 1998-1999 Matra Datavision
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



proc newGeomOsculatingSurface*(): GeomOsculatingSurface {.cdecl, constructor,
    importcpp: "Geom_OsculatingSurface(@)", header: "Geom_OsculatingSurface.hxx".}
proc newGeomOsculatingSurface*(bs: Handle[GeomSurface]; tol: cfloat): GeomOsculatingSurface {.
    cdecl, constructor, importcpp: "Geom_OsculatingSurface(@)", header: "Geom_OsculatingSurface.hxx".}
proc init*(this: var GeomOsculatingSurface; bs: Handle[GeomSurface]; tol: cfloat) {.
    cdecl, importcpp: "Init", header: "Geom_OsculatingSurface.hxx".}
proc basisSurface*(this: GeomOsculatingSurface): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "BasisSurface", header: "Geom_OsculatingSurface.hxx".}
proc tolerance*(this: GeomOsculatingSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "Geom_OsculatingSurface.hxx".}
proc uOscSurf*(this: GeomOsculatingSurface; u: cfloat; v: cfloat; t: var bool;
              L: var Handle[GeomBSplineSurface]): bool {.noSideEffect, cdecl,
    importcpp: "UOscSurf", header: "Geom_OsculatingSurface.hxx".}
proc vOscSurf*(this: GeomOsculatingSurface; u: cfloat; v: cfloat; t: var bool;
              L: var Handle[GeomBSplineSurface]): bool {.noSideEffect, cdecl,
    importcpp: "VOscSurf", header: "Geom_OsculatingSurface.hxx".}
proc dumpJson*(this: GeomOsculatingSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_OsculatingSurface.hxx".}



