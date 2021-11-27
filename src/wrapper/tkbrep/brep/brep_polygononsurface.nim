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

discard "forward decl of Poly_Polygon2D"
discard "forward decl of Geom_Surface"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnSurface"
type
  HandleBRepPolygonOnSurface* = Handle[BRepPolygonOnSurface]

## ! Representation of a 2D polygon in the parametric
## ! space of a surface.

type
  BRepPolygonOnSurface* {.importcpp: "BRep_PolygonOnSurface",
                         header: "BRep_PolygonOnSurface.hxx", bycopy.} = object of BRepCurveRepresentation


proc newBRepPolygonOnSurface*(p: Handle[PolyPolygon2D]; s: Handle[GeomSurface];
                             L: TopLocLocation): BRepPolygonOnSurface {.cdecl,
    constructor, importcpp: "BRep_PolygonOnSurface(@)", header: "BRep_PolygonOnSurface.hxx".}
proc isPolygonOnSurface*(this: BRepPolygonOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonOnSurface", header: "BRep_PolygonOnSurface.hxx".}
proc isPolygonOnSurface*(this: BRepPolygonOnSurface; s: Handle[GeomSurface];
                        L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonOnSurface", header: "BRep_PolygonOnSurface.hxx".}
proc surface*(this: BRepPolygonOnSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRep_PolygonOnSurface.hxx".}
proc polygon*(this: BRepPolygonOnSurface): Handle[PolyPolygon2D] {.noSideEffect,
    cdecl, importcpp: "Polygon", header: "BRep_PolygonOnSurface.hxx".}
proc polygon*(this: var BRepPolygonOnSurface; p: Handle[PolyPolygon2D]) {.cdecl,
    importcpp: "Polygon", header: "BRep_PolygonOnSurface.hxx".}
proc copy*(this: BRepPolygonOnSurface): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "BRep_PolygonOnSurface.hxx".}
proc dumpJson*(this: BRepPolygonOnSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_PolygonOnSurface.hxx".}