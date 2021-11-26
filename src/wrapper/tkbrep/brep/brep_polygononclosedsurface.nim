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

discard "forward decl of Poly_Polygon2D"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnClosedSurface"
type
  HandleBRepPolygonOnClosedSurface* = Handle[BRepPolygonOnClosedSurface]

## ! Representation by two 2d polygons in the parametric
## ! space of a surface.

type
  BRepPolygonOnClosedSurface* {.importcpp: "BRep_PolygonOnClosedSurface",
                               header: "BRep_PolygonOnClosedSurface.hxx", bycopy.} = object of BRepPolygonOnSurface


proc newBRepPolygonOnClosedSurface*(p1: Handle[PolyPolygon2D];
                                   p2: Handle[PolyPolygon2D];
                                   s: Handle[GeomSurface]; L: TopLocLocation): BRepPolygonOnClosedSurface {.
    cdecl, constructor, importcpp: "BRep_PolygonOnClosedSurface(@)", dynlib: tkbrep.}
proc isPolygonOnClosedSurface*(this: BRepPolygonOnClosedSurface): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnClosedSurface", dynlib: tkbrep.}
proc polygon2*(this: BRepPolygonOnClosedSurface): Handle[PolyPolygon2D] {.
    noSideEffect, cdecl, importcpp: "Polygon2", dynlib: tkbrep.}
proc polygon2*(this: var BRepPolygonOnClosedSurface; p: Handle[PolyPolygon2D]) {.
    cdecl, importcpp: "Polygon2", dynlib: tkbrep.}
proc copy*(this: BRepPolygonOnClosedSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkbrep.}
proc dumpJson*(this: BRepPolygonOnClosedSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}