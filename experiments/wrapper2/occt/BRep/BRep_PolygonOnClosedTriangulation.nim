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

discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnClosedTriangulation"
discard "forward decl of BRep_PolygonOnClosedTriangulation"
type
  HandleBRepPolygonOnClosedTriangulation* = Handle[
      BRepPolygonOnClosedTriangulation]

## ! A representation by two arrays of nodes on a
## ! triangulation.

type
  BRepPolygonOnClosedTriangulation* {.importcpp: "BRep_PolygonOnClosedTriangulation", header: "BRep_PolygonOnClosedTriangulation.hxx",
                                     bycopy.} = object of BRepPolygonOnTriangulation


proc constructBRepPolygonOnClosedTriangulation*(
    p1: Handle[PolyPolygonOnTriangulation];
    p2: Handle[PolyPolygonOnTriangulation]; tr: Handle[PolyTriangulation];
    L: TopLocLocation): BRepPolygonOnClosedTriangulation {.constructor,
    importcpp: "BRep_PolygonOnClosedTriangulation(@)",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc isPolygonOnClosedTriangulation*(this: BRepPolygonOnClosedTriangulation): bool {.
    noSideEffect, importcpp: "IsPolygonOnClosedTriangulation",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc polygonOnTriangulation2*(this: var BRepPolygonOnClosedTriangulation;
                             p2: Handle[PolyPolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation2",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc polygonOnTriangulation2*(this: BRepPolygonOnClosedTriangulation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect,
                                 importcpp: "PolygonOnTriangulation2", header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc copy*(this: BRepPolygonOnClosedTriangulation): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc dumpJson*(this: BRepPolygonOnClosedTriangulation;
              theOStream: var StandardOStream; theDepth: int = -1) {.noSideEffect,
    importcpp: "DumpJson", header: "BRep_PolygonOnClosedTriangulation.hxx".}
type
  BRepPolygonOnClosedTriangulationbaseType* = BRepPolygonOnTriangulation

proc getTypeName*(): cstring {.importcpp: "BRep_PolygonOnClosedTriangulation::get_type_name(@)",
                            header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PolygonOnClosedTriangulation::get_type_descriptor(@)",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc dynamicType*(this: BRepPolygonOnClosedTriangulation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
