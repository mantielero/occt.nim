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
  ../Standard/Standard, ../Standard/Standard_Type, BRep_CurveRepresentation,
  ../Standard/Standard_Boolean

discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnTriangulation"
discard "forward decl of BRep_PolygonOnTriangulation"
type
  Handle_BRep_PolygonOnTriangulation* = handle[BRep_PolygonOnTriangulation]

## ! A representation by an array of nodes on a
## ! triangulation.

type
  BRep_PolygonOnTriangulation* {.importcpp: "BRep_PolygonOnTriangulation",
                                header: "BRep_PolygonOnTriangulation.hxx", bycopy.} = object of BRep_CurveRepresentation


proc constructBRep_PolygonOnTriangulation*(
    P: handle[Poly_PolygonOnTriangulation]; T: handle[Poly_Triangulation];
    L: TopLoc_Location): BRep_PolygonOnTriangulation {.constructor,
    importcpp: "BRep_PolygonOnTriangulation(@)",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc IsPolygonOnTriangulation*(this: BRep_PolygonOnTriangulation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc IsPolygonOnTriangulation*(this: BRep_PolygonOnTriangulation;
                              T: handle[Poly_Triangulation]; L: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc PolygonOnTriangulation*(this: var BRep_PolygonOnTriangulation;
                            P: handle[Poly_PolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation", header: "BRep_PolygonOnTriangulation.hxx".}
proc Triangulation*(this: BRep_PolygonOnTriangulation): handle[Poly_Triangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc PolygonOnTriangulation*(this: BRep_PolygonOnTriangulation): handle[
    Poly_PolygonOnTriangulation] {.noSideEffect,
                                  importcpp: "PolygonOnTriangulation",
                                  header: "BRep_PolygonOnTriangulation.hxx".}
proc Copy*(this: BRep_PolygonOnTriangulation): handle[BRep_CurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_PolygonOnTriangulation.hxx".}
proc DumpJson*(this: BRep_PolygonOnTriangulation; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_PolygonOnTriangulation.hxx".}
type
  BRep_PolygonOnTriangulationbase_type* = BRep_CurveRepresentation

proc get_type_name*(): cstring {.importcpp: "BRep_PolygonOnTriangulation::get_type_name(@)",
                              header: "BRep_PolygonOnTriangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PolygonOnTriangulation::get_type_descriptor(@)",
    header: "BRep_PolygonOnTriangulation.hxx".}
proc DynamicType*(this: BRep_PolygonOnTriangulation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRep_PolygonOnTriangulation.hxx".}