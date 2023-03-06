import brep_types
import ../toploc/toploc_types
import ../gp/gp_types
import ../standard/standard_types
import ../geom/geom_types
import ../geomabs/geomabs_types
import ../geom2d/geom2d_types





##  Created on: 1993-07-06
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





proc newBRepCurveOnClosedSurface*(pc1: Handle[Geom2dCurve];
                                 pc2: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                                 L: TopLocLocation; c: GeomAbsShape): BRepCurveOnClosedSurface {.
    cdecl, constructor, importcpp: "BRep_CurveOnClosedSurface(@)", header: "BRep_CurveOnClosedSurface.hxx".}
proc setUVPoints2*(this: var BRepCurveOnClosedSurface; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl,
    importcpp: "SetUVPoints2", header: "BRep_CurveOnClosedSurface.hxx".}
proc uVPoints2*(this: BRepCurveOnClosedSurface; p1: var Pnt2dObj; p2: var Pnt2dObj) {.
    noSideEffect, cdecl, importcpp: "UVPoints2", header: "BRep_CurveOnClosedSurface.hxx".}
proc isCurveOnClosedSurface*(this: BRepCurveOnClosedSurface): bool {.noSideEffect,
    cdecl, importcpp: "IsCurveOnClosedSurface", header: "BRep_CurveOnClosedSurface.hxx".}
proc isRegularity*(this: BRepCurveOnClosedSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsRegularity", header: "BRep_CurveOnClosedSurface.hxx".}
proc isRegularity*(this: BRepCurveOnClosedSurface; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsRegularity", header: "BRep_CurveOnClosedSurface.hxx".}
proc pCurve2*(this: BRepCurveOnClosedSurface): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve2", header: "BRep_CurveOnClosedSurface.hxx".}
proc surface2*(this: BRepCurveOnClosedSurface): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "Surface2", header: "BRep_CurveOnClosedSurface.hxx".}
proc location2*(this: BRepCurveOnClosedSurface): TopLocLocation {.noSideEffect,
    cdecl, importcpp: "Location2", header: "BRep_CurveOnClosedSurface.hxx".}
proc continuity*(this: BRepCurveOnClosedSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "BRep_CurveOnClosedSurface.hxx".}
proc continuity*(this: var BRepCurveOnClosedSurface; c: GeomAbsShape) {.cdecl,
    importcpp: "Continuity", header: "BRep_CurveOnClosedSurface.hxx".}
proc pCurve2*(this: var BRepCurveOnClosedSurface; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve2", header: "BRep_CurveOnClosedSurface.hxx".}
proc copy*(this: BRepCurveOnClosedSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "BRep_CurveOnClosedSurface.hxx".}
proc update*(this: var BRepCurveOnClosedSurface) {.cdecl, importcpp: "Update",
    header: "BRep_CurveOnClosedSurface.hxx".}
proc dumpJson*(this: BRepCurveOnClosedSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_CurveOnClosedSurface.hxx".}


