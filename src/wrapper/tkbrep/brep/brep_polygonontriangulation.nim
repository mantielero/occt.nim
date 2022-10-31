import brep_types
import ../../tkmath/toploc/toploc_types
import ../../tkernel/standard/standard_types
import ../../tkmath/poly/poly_types





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





proc newBRepPolygonOnTriangulation*(p: Handle[PolyPolygonOnTriangulation];
                                   t: Handle[PolyTriangulation]; L: TopLocLocation): BRepPolygonOnTriangulation {.
    cdecl, constructor, importcpp: "BRep_PolygonOnTriangulation(@)", header: "BRep_PolygonOnTriangulation.hxx".}
proc isPolygonOnTriangulation*(this: BRepPolygonOnTriangulation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnTriangulation", header: "BRep_PolygonOnTriangulation.hxx".}
proc isPolygonOnTriangulation*(this: BRepPolygonOnTriangulation;
                              t: Handle[PolyTriangulation]; L: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnTriangulation", header: "BRep_PolygonOnTriangulation.hxx".}
proc polygonOnTriangulation*(this: var BRepPolygonOnTriangulation;
                            p: Handle[PolyPolygonOnTriangulation]) {.cdecl,
    importcpp: "PolygonOnTriangulation", header: "BRep_PolygonOnTriangulation.hxx".}
proc triangulation*(this: BRepPolygonOnTriangulation): Handle[PolyTriangulation] {.
    noSideEffect, cdecl, importcpp: "Triangulation", header: "BRep_PolygonOnTriangulation.hxx".}
proc polygonOnTriangulation*(this: BRepPolygonOnTriangulation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect, cdecl,
                                 importcpp: "PolygonOnTriangulation",
                                 header: "BRep_PolygonOnTriangulation.hxx".}
proc copy*(this: BRepPolygonOnTriangulation): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "BRep_PolygonOnTriangulation.hxx".}
proc dumpJson*(this: BRepPolygonOnTriangulation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_PolygonOnTriangulation.hxx".}


