import brep_types
import ../toploc/toploc_types
import ../standard/standard_types
import ../geom/geom_types
import ../geomabs/geomabs_types
import ../poly/poly_types
import ../geom2d/geom2d_types





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





proc isCurve3D*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsCurve3D", header: "BRep_CurveRepresentation.hxx".}
proc isCurveOnSurface*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc isRegularity*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsRegularity", header: "BRep_CurveRepresentation.hxx".}
proc isCurveOnClosedSurface*(this: BRepCurveRepresentation): bool {.noSideEffect,
    cdecl, importcpp: "IsCurveOnClosedSurface", header: "BRep_CurveRepresentation.hxx".}
proc isCurveOnSurface*(this: BRepCurveRepresentation; s: Handle[GeomSurface];
                      L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc isRegularity*(this: BRepCurveRepresentation; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsRegularity", header: "BRep_CurveRepresentation.hxx".}
proc isPolygon3D*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygon3D", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnTriangulation*(this: BRepCurveRepresentation): bool {.noSideEffect,
    cdecl, importcpp: "IsPolygonOnTriangulation", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnTriangulation*(this: BRepCurveRepresentation;
                              t: Handle[PolyTriangulation]; L: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnTriangulation", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnClosedTriangulation*(this: BRepCurveRepresentation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnClosedTriangulation", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnSurface*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnSurface*(this: BRepCurveRepresentation; s: Handle[GeomSurface];
                        L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc isPolygonOnClosedSurface*(this: BRepCurveRepresentation): bool {.noSideEffect,
    cdecl, importcpp: "IsPolygonOnClosedSurface", header: "BRep_CurveRepresentation.hxx".}
proc location*(this: BRepCurveRepresentation): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Location", header: "BRep_CurveRepresentation.hxx".}
proc location*(this: var BRepCurveRepresentation; L: TopLocLocation) {.cdecl,
    importcpp: "Location", header: "BRep_CurveRepresentation.hxx".}
proc curve3D*(this: BRepCurveRepresentation): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "Curve3D", header: "BRep_CurveRepresentation.hxx".}
proc curve3D*(this: var BRepCurveRepresentation; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "Curve3D", header: "BRep_CurveRepresentation.hxx".}
proc surface*(this: BRepCurveRepresentation): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "Surface", header: "BRep_CurveRepresentation.hxx".}
proc pCurve*(this: BRepCurveRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve", header: "BRep_CurveRepresentation.hxx".}
proc pCurve*(this: var BRepCurveRepresentation; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve", header: "BRep_CurveRepresentation.hxx".}
proc pCurve2*(this: BRepCurveRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve2", header: "BRep_CurveRepresentation.hxx".}
proc pCurve2*(this: var BRepCurveRepresentation; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve2", header: "BRep_CurveRepresentation.hxx".}
proc polygon3D*(this: BRepCurveRepresentation): Handle[PolyPolygon3D] {.
    noSideEffect, cdecl, importcpp: "Polygon3D", header: "BRep_CurveRepresentation.hxx".}
proc polygon3D*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon3D]) {.cdecl,
    importcpp: "Polygon3D", header: "BRep_CurveRepresentation.hxx".}
proc polygon*(this: BRepCurveRepresentation): Handle[PolyPolygon2D] {.noSideEffect,
    cdecl, importcpp: "Polygon", header: "BRep_CurveRepresentation.hxx".}
proc polygon*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon2D]) {.cdecl,
    importcpp: "Polygon", header: "BRep_CurveRepresentation.hxx".}
proc polygon2*(this: BRepCurveRepresentation): Handle[PolyPolygon2D] {.noSideEffect,
    cdecl, importcpp: "Polygon2", header: "BRep_CurveRepresentation.hxx".}
proc polygon2*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon2D]) {.cdecl,
    importcpp: "Polygon2", header: "BRep_CurveRepresentation.hxx".}
proc triangulation*(this: BRepCurveRepresentation): Handle[PolyTriangulation] {.
    noSideEffect, cdecl, importcpp: "Triangulation", header: "BRep_CurveRepresentation.hxx".}
proc polygonOnTriangulation*(this: BRepCurveRepresentation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect, cdecl,
                                 importcpp: "PolygonOnTriangulation",
                                 header: "BRep_CurveRepresentation.hxx".}
proc polygonOnTriangulation*(this: var BRepCurveRepresentation;
                            p: Handle[PolyPolygonOnTriangulation]) {.cdecl,
    importcpp: "PolygonOnTriangulation", header: "BRep_CurveRepresentation.hxx".}
proc polygonOnTriangulation2*(this: BRepCurveRepresentation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect, cdecl,
                                 importcpp: "PolygonOnTriangulation2",
                                 header: "BRep_CurveRepresentation.hxx".}
proc polygonOnTriangulation2*(this: var BRepCurveRepresentation;
                             p2: Handle[PolyPolygonOnTriangulation]) {.cdecl,
    importcpp: "PolygonOnTriangulation2", header: "BRep_CurveRepresentation.hxx".}
proc surface2*(this: BRepCurveRepresentation): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "Surface2", header: "BRep_CurveRepresentation.hxx".}
proc location2*(this: BRepCurveRepresentation): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Location2", header: "BRep_CurveRepresentation.hxx".}
proc continuity*(this: BRepCurveRepresentation): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "BRep_CurveRepresentation.hxx".}
proc continuity*(this: var BRepCurveRepresentation; c: GeomAbsShape) {.cdecl,
    importcpp: "Continuity", header: "BRep_CurveRepresentation.hxx".}
proc copy*(this: BRepCurveRepresentation): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "BRep_CurveRepresentation.hxx".}
proc dumpJson*(this: BRepCurveRepresentation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_CurveRepresentation.hxx".}


