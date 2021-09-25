##  Created on: 1993-07-05
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom_Surface"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_Polygon2D"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveRepresentation"
type
  HandleBRepCurveRepresentation* = Handle[BRepCurveRepresentation]

## ! Root class for the curve representations. Contains
## ! a location.

type
  BRepCurveRepresentation* {.importcpp: "BRep_CurveRepresentation",
                            header: "BRep_CurveRepresentation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## A
                                                                                                    ## 3D
                                                                                                    ## curve
                                                                                                    ## representation.


proc isCurve3D*(this: BRepCurveRepresentation): bool {.noSideEffect,
    importcpp: "IsCurve3D", header: "BRep_CurveRepresentation.hxx".}
proc isCurveOnSurface*(this: BRepCurveRepresentation): bool {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc isRegularity*(this: BRepCurveRepresentation): bool {.noSideEffect,
    importcpp: "IsRegularity", header: "BRep_CurveRepresentation.hxx".}
proc isCurveOnClosedSurface*(this: BRepCurveRepresentation): bool {.noSideEffect,
    importcpp: "IsCurveOnClosedSurface", header: "BRep_CurveRepresentation.hxx".}
proc isCurveOnSurface*(this: BRepCurveRepresentation; s: Handle[GeomSurface];
                      L: TopLocLocation): bool {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc isRegularity*(this: BRepCurveRepresentation; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): bool {.
    noSideEffect, importcpp: "IsRegularity", header: "BRep_CurveRepresentation.hxx".}
proc isPolygon3D*(this: BRepCurveRepresentation): bool {.noSideEffect,
    importcpp: "IsPolygon3D", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnTriangulation*(this: BRepCurveRepresentation): bool {.noSideEffect,
    importcpp: "IsPolygonOnTriangulation", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnTriangulation*(this: BRepCurveRepresentation;
                              t: Handle[PolyTriangulation]; L: TopLocLocation): bool {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnClosedTriangulation*(this: BRepCurveRepresentation): bool {.
    noSideEffect, importcpp: "IsPolygonOnClosedTriangulation",
    header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnSurface*(this: BRepCurveRepresentation): bool {.noSideEffect,
    importcpp: "IsPolygonOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnSurface*(this: BRepCurveRepresentation; s: Handle[GeomSurface];
                        L: TopLocLocation): bool {.noSideEffect,
    importcpp: "IsPolygonOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnClosedSurface*(this: BRepCurveRepresentation): bool {.noSideEffect,
    importcpp: "IsPolygonOnClosedSurface", header: "BRep_CurveRepresentation.hxx".}
proc location*(this: BRepCurveRepresentation): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: "BRep_CurveRepresentation.hxx".}
proc location*(this: var BRepCurveRepresentation; L: TopLocLocation) {.
    importcpp: "Location", header: "BRep_CurveRepresentation.hxx".}
proc curve3D*(this: BRepCurveRepresentation): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve3D", header: "BRep_CurveRepresentation.hxx".}
proc curve3D*(this: var BRepCurveRepresentation; c: Handle[GeomCurve]) {.
    importcpp: "Curve3D", header: "BRep_CurveRepresentation.hxx".}
proc surface*(this: BRepCurveRepresentation): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_CurveRepresentation.hxx".}
proc pCurve*(this: BRepCurveRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: "BRep_CurveRepresentation.hxx".}
proc pCurve*(this: var BRepCurveRepresentation; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve", header: "BRep_CurveRepresentation.hxx".}
proc pCurve2*(this: BRepCurveRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve2", header: "BRep_CurveRepresentation.hxx".}
proc pCurve2*(this: var BRepCurveRepresentation; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve2", header: "BRep_CurveRepresentation.hxx".}
proc polygon3D*(this: BRepCurveRepresentation): Handle[PolyPolygon3D] {.
    noSideEffect, importcpp: "Polygon3D", header: "BRep_CurveRepresentation.hxx".}
proc polygon3D*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon3D]) {.
    importcpp: "Polygon3D", header: "BRep_CurveRepresentation.hxx".}
proc polygon*(this: BRepCurveRepresentation): Handle[PolyPolygon2D] {.noSideEffect,
    importcpp: "Polygon", header: "BRep_CurveRepresentation.hxx".}
proc polygon*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon2D]) {.
    importcpp: "Polygon", header: "BRep_CurveRepresentation.hxx".}
proc polygon2*(this: BRepCurveRepresentation): Handle[PolyPolygon2D] {.noSideEffect,
    importcpp: "Polygon2", header: "BRep_CurveRepresentation.hxx".}
proc polygon2*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon2D]) {.
    importcpp: "Polygon2", header: "BRep_CurveRepresentation.hxx".}
proc triangulation*(this: BRepCurveRepresentation): Handle[PolyTriangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: "BRep_CurveRepresentation.hxx".}
proc polygonOnTriangulation*(this: BRepCurveRepresentation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect,
                                 importcpp: "PolygonOnTriangulation",
                                 header: "BRep_CurveRepresentation.hxx".}
proc polygonOnTriangulation*(this: var BRepCurveRepresentation;
                            p: Handle[PolyPolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation", header: "BRep_CurveRepresentation.hxx".}
proc polygonOnTriangulation2*(this: BRepCurveRepresentation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect,
                                 importcpp: "PolygonOnTriangulation2",
                                 header: "BRep_CurveRepresentation.hxx".}
proc polygonOnTriangulation2*(this: var BRepCurveRepresentation;
                             p2: Handle[PolyPolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation2", header: "BRep_CurveRepresentation.hxx".}
proc surface2*(this: BRepCurveRepresentation): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface2", header: "BRep_CurveRepresentation.hxx".}
proc location2*(this: BRepCurveRepresentation): TopLocLocation {.noSideEffect,
    importcpp: "Location2", header: "BRep_CurveRepresentation.hxx".}
proc continuity*(this: BRepCurveRepresentation): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BRep_CurveRepresentation.hxx".}
proc continuity*(this: var BRepCurveRepresentation; c: GeomAbsShape) {.
    importcpp: "Continuity", header: "BRep_CurveRepresentation.hxx".}
proc copy*(this: BRepCurveRepresentation): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_CurveRepresentation.hxx".}
proc dumpJson*(this: BRepCurveRepresentation; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "BRep_CurveRepresentation.hxx".}
type
  BRepCurveRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRep_CurveRepresentation::get_type_name(@)",
                            header: "BRep_CurveRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_CurveRepresentation::get_type_descriptor(@)",
    header: "BRep_CurveRepresentation.hxx".}
proc dynamicType*(this: BRepCurveRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRep_CurveRepresentation.hxx".}
