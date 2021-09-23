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
  ../Standard/Standard, ../Standard/Standard_Type, BRep_PolygonOnSurface,
  ../Standard/Standard_Boolean

discard "forward decl of Poly_Polygon2D"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnClosedSurface"
discard "forward decl of BRep_PolygonOnClosedSurface"
type
  Handle_BRep_PolygonOnClosedSurface* = handle[BRep_PolygonOnClosedSurface]

## ! Representation by two 2d polygons in the parametric
## ! space of a surface.

type
  BRep_PolygonOnClosedSurface* {.importcpp: "BRep_PolygonOnClosedSurface",
                                header: "BRep_PolygonOnClosedSurface.hxx", bycopy.} = object of BRep_PolygonOnSurface


proc constructBRep_PolygonOnClosedSurface*(P1: handle[Poly_Polygon2D];
    P2: handle[Poly_Polygon2D]; S: handle[Geom_Surface]; L: TopLoc_Location): BRep_PolygonOnClosedSurface {.
    constructor, importcpp: "BRep_PolygonOnClosedSurface(@)",
    header: "BRep_PolygonOnClosedSurface.hxx".}
proc IsPolygonOnClosedSurface*(this: BRep_PolygonOnClosedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnClosedSurface",
    header: "BRep_PolygonOnClosedSurface.hxx".}
proc Polygon2*(this: BRep_PolygonOnClosedSurface): handle[Poly_Polygon2D] {.
    noSideEffect, importcpp: "Polygon2", header: "BRep_PolygonOnClosedSurface.hxx".}
proc Polygon2*(this: var BRep_PolygonOnClosedSurface; P: handle[Poly_Polygon2D]) {.
    importcpp: "Polygon2", header: "BRep_PolygonOnClosedSurface.hxx".}
proc Copy*(this: BRep_PolygonOnClosedSurface): handle[BRep_CurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_PolygonOnClosedSurface.hxx".}
proc DumpJson*(this: BRep_PolygonOnClosedSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_PolygonOnClosedSurface.hxx".}
type
  BRep_PolygonOnClosedSurfacebase_type* = BRep_PolygonOnSurface

proc get_type_name*(): cstring {.importcpp: "BRep_PolygonOnClosedSurface::get_type_name(@)",
                              header: "BRep_PolygonOnClosedSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PolygonOnClosedSurface::get_type_descriptor(@)",
    header: "BRep_PolygonOnClosedSurface.hxx".}
proc DynamicType*(this: BRep_PolygonOnClosedSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRep_PolygonOnClosedSurface.hxx".}