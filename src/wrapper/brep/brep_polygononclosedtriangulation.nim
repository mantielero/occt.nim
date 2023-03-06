import brep_types
import ../toploc/toploc_types
import ../standard/standard_types
import ../poly/poly_types





##  Created on: 1995-03-15
##  Created by: Laurent PAINNOT
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





proc newBRepPolygonOnClosedTriangulation*(p1: Handle[PolyPolygonOnTriangulation];
    p2: Handle[PolyPolygonOnTriangulation]; tr: Handle[PolyTriangulation];
    L: TopLocLocation): BRepPolygonOnClosedTriangulation {.cdecl, constructor,
    importcpp: "BRep_PolygonOnClosedTriangulation(@)", header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc isPolygonOnClosedTriangulation*(this: BRepPolygonOnClosedTriangulation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnClosedTriangulation", header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc polygonOnTriangulation2*(this: var BRepPolygonOnClosedTriangulation;
                             p2: Handle[PolyPolygonOnTriangulation]) {.cdecl,
    importcpp: "PolygonOnTriangulation2", header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc polygonOnTriangulation2*(this: BRepPolygonOnClosedTriangulation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect, cdecl,
                                 importcpp: "PolygonOnTriangulation2",
                                 header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc copy*(this: BRepPolygonOnClosedTriangulation): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc dumpJson*(this: BRepPolygonOnClosedTriangulation;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson", header: "BRep_PolygonOnClosedTriangulation.hxx".}


