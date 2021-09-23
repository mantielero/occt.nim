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

import
  ../Standard/Standard, ../Standard/Standard_Type, BRep_PolygonOnTriangulation,
  ../Standard/Standard_Boolean

discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnClosedTriangulation"
discard "forward decl of BRep_PolygonOnClosedTriangulation"
type
  Handle_BRep_PolygonOnClosedTriangulation* = handle[
      BRep_PolygonOnClosedTriangulation]

## ! A representation by two arrays of nodes on a
## ! triangulation.

type
  BRep_PolygonOnClosedTriangulation* {.importcpp: "BRep_PolygonOnClosedTriangulation", header: "BRep_PolygonOnClosedTriangulation.hxx",
                                      bycopy.} = object of BRep_PolygonOnTriangulation


proc constructBRep_PolygonOnClosedTriangulation*(
    P1: handle[Poly_PolygonOnTriangulation];
    P2: handle[Poly_PolygonOnTriangulation]; Tr: handle[Poly_Triangulation];
    L: TopLoc_Location): BRep_PolygonOnClosedTriangulation {.constructor,
    importcpp: "BRep_PolygonOnClosedTriangulation(@)",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc IsPolygonOnClosedTriangulation*(this: BRep_PolygonOnClosedTriangulation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnClosedTriangulation",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc PolygonOnTriangulation2*(this: var BRep_PolygonOnClosedTriangulation;
                             P2: handle[Poly_PolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation2",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc PolygonOnTriangulation2*(this: BRep_PolygonOnClosedTriangulation): handle[
    Poly_PolygonOnTriangulation] {.noSideEffect,
                                  importcpp: "PolygonOnTriangulation2", header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc Copy*(this: BRep_PolygonOnClosedTriangulation): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "Copy",
                               header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc DumpJson*(this: BRep_PolygonOnClosedTriangulation;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
type
  BRep_PolygonOnClosedTriangulationbase_type* = BRep_PolygonOnTriangulation

proc get_type_name*(): cstring {.importcpp: "BRep_PolygonOnClosedTriangulation::get_type_name(@)",
                              header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PolygonOnClosedTriangulation::get_type_descriptor(@)",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}
proc DynamicType*(this: BRep_PolygonOnClosedTriangulation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRep_PolygonOnClosedTriangulation.hxx".}