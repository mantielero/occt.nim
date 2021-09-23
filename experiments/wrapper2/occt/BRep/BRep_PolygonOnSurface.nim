##  Created on: 1995-03-14
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

discard "forward decl of Poly_Polygon2D"
discard "forward decl of Geom_Surface"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnSurface"
discard "forward decl of BRep_PolygonOnSurface"
type
  Handle_BRep_PolygonOnSurface* = handle[BRep_PolygonOnSurface]

## ! Representation of a 2D polygon in the parametric
## ! space of a surface.

type
  BRep_PolygonOnSurface* {.importcpp: "BRep_PolygonOnSurface",
                          header: "BRep_PolygonOnSurface.hxx", bycopy.} = object of BRep_CurveRepresentation


proc constructBRep_PolygonOnSurface*(P: handle[Poly_Polygon2D];
                                    S: handle[Geom_Surface]; L: TopLoc_Location): BRep_PolygonOnSurface {.
    constructor, importcpp: "BRep_PolygonOnSurface(@)",
    header: "BRep_PolygonOnSurface.hxx".}
proc IsPolygonOnSurface*(this: BRep_PolygonOnSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnSurface",
    header: "BRep_PolygonOnSurface.hxx".}
proc IsPolygonOnSurface*(this: BRep_PolygonOnSurface; S: handle[Geom_Surface];
                        L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsPolygonOnSurface", header: "BRep_PolygonOnSurface.hxx".}
proc Surface*(this: BRep_PolygonOnSurface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_PolygonOnSurface.hxx".}
proc Polygon*(this: BRep_PolygonOnSurface): handle[Poly_Polygon2D] {.noSideEffect,
    importcpp: "Polygon", header: "BRep_PolygonOnSurface.hxx".}
proc Polygon*(this: var BRep_PolygonOnSurface; P: handle[Poly_Polygon2D]) {.
    importcpp: "Polygon", header: "BRep_PolygonOnSurface.hxx".}
proc Copy*(this: BRep_PolygonOnSurface): handle[BRep_CurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_PolygonOnSurface.hxx".}
proc DumpJson*(this: BRep_PolygonOnSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_PolygonOnSurface.hxx".}
type
  BRep_PolygonOnSurfacebase_type* = BRep_CurveRepresentation

proc get_type_name*(): cstring {.importcpp: "BRep_PolygonOnSurface::get_type_name(@)",
                              header: "BRep_PolygonOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PolygonOnSurface::get_type_descriptor(@)",
    header: "BRep_PolygonOnSurface.hxx".}
proc DynamicType*(this: BRep_PolygonOnSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRep_PolygonOnSurface.hxx".}