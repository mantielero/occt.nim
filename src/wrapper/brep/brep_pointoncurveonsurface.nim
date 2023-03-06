import brep_types
import ../toploc/toploc_types
import ../standard/standard_types
import ../geom/geom_types
import ../geom2d/geom2d_types





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





proc newBRepPointOnCurveOnSurface*(p: cfloat; c: Handle[Geom2dCurve];
                                  s: Handle[GeomSurface]; L: TopLocLocation): BRepPointOnCurveOnSurface {.
    cdecl, constructor, importcpp: "BRep_PointOnCurveOnSurface(@)", header: "BRep_PointOnCurveOnSurface.hxx".}
proc isPointOnCurveOnSurface*(this: BRepPointOnCurveOnSurface): bool {.noSideEffect,
    cdecl, importcpp: "IsPointOnCurveOnSurface", header: "BRep_PointOnCurveOnSurface.hxx".}
proc isPointOnCurveOnSurface*(this: BRepPointOnCurveOnSurface;
                             pc: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                             L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsPointOnCurveOnSurface", header: "BRep_PointOnCurveOnSurface.hxx".}
proc pCurve*(this: BRepPointOnCurveOnSurface): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve", header: "BRep_PointOnCurveOnSurface.hxx".}
proc pCurve*(this: var BRepPointOnCurveOnSurface; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve", header: "BRep_PointOnCurveOnSurface.hxx".}
proc dumpJson*(this: BRepPointOnCurveOnSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_PointOnCurveOnSurface.hxx".}


