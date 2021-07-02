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
discard "forward decl of BRep_PolygonOnTriangulation"
discard "forward decl of BRep_PolygonOnTriangulation"
type
  HandleBRepPolygonOnTriangulation* = Handle[BRepPolygonOnTriangulation]

## ! A representation by an array of nodes on a
## ! triangulation.

type
  BRepPolygonOnTriangulation* {.importcpp: "BRep_PolygonOnTriangulation",
                               header: "BRep_PolygonOnTriangulation.hxx", bycopy.} = object of BRepCurveRepresentation


proc constructBRepPolygonOnTriangulation*(p: Handle[PolyPolygonOnTriangulation];
    t: Handle[PolyTriangulation]; L: TopLocLocation): BRepPolygonOnTriangulation {.
    constructor, importcpp: "BRep_PolygonOnTriangulation(@)",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc isPolygonOnTriangulation*(this: BRepPolygonOnTriangulation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc isPolygonOnTriangulation*(this: BRepPolygonOnTriangulation;
                              t: Handle[PolyTriangulation]; L: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc polygonOnTriangulation*(this: var BRepPolygonOnTriangulation;
                            p: Handle[PolyPolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation", header: "BRep_PolygonOnTriangulation.hxx".}
proc triangulation*(this: BRepPolygonOnTriangulation): Handle[PolyTriangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc polygonOnTriangulation*(this: BRepPolygonOnTriangulation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect,
                                 importcpp: "PolygonOnTriangulation",
                                 header: "BRep_PolygonOnTriangulation.hxx".}
proc copy*(this: BRepPolygonOnTriangulation): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_PolygonOnTriangulation.hxx".}
proc dumpJson*(this: BRepPolygonOnTriangulation; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_PolygonOnTriangulation.hxx".}
type
  BRepPolygonOnTriangulationbaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_PolygonOnTriangulation::get_type_name(@)",
                            header: "BRep_PolygonOnTriangulation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PolygonOnTriangulation::get_type_descriptor(@)",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc dynamicType*(this: BRepPolygonOnTriangulation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRep_PolygonOnTriangulation.hxx".}

