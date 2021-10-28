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


proc isCurve3D*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsCurve3D", dynlib: tkbrep.}
proc isCurveOnSurface*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", dynlib: tkbrep.}
proc isRegularity*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsRegularity", dynlib: tkbrep.}
proc isCurveOnClosedSurface*(this: BRepCurveRepresentation): bool {.noSideEffect,
    cdecl, importcpp: "IsCurveOnClosedSurface", dynlib: tkbrep.}
proc isCurveOnSurface*(this: BRepCurveRepresentation; s: Handle[GeomSurface];
                      L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsCurveOnSurface", dynlib: tkbrep.}
proc isRegularity*(this: BRepCurveRepresentation; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsRegularity", dynlib: tkbrep.}
proc isPolygon3D*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygon3D", dynlib: tkbrep.}
proc isPolygonOnTriangulation*(this: BRepCurveRepresentation): bool {.noSideEffect,
    cdecl, importcpp: "IsPolygonOnTriangulation", dynlib: tkbrep.}
proc isPolygonOnTriangulation*(this: BRepCurveRepresentation;
                              t: Handle[PolyTriangulation]; L: TopLocLocation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnTriangulation", dynlib: tkbrep.}
proc isPolygonOnClosedTriangulation*(this: BRepCurveRepresentation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnClosedTriangulation", dynlib: tkbrep.}
proc isPolygonOnSurface*(this: BRepCurveRepresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonOnSurface", dynlib: tkbrep.}
proc isPolygonOnSurface*(this: BRepCurveRepresentation; s: Handle[GeomSurface];
                        L: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonOnSurface", dynlib: tkbrep.}
proc isPolygonOnClosedSurface*(this: BRepCurveRepresentation): bool {.noSideEffect,
    cdecl, importcpp: "IsPolygonOnClosedSurface", dynlib: tkbrep.}
proc location*(this: BRepCurveRepresentation): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkbrep.}
proc location*(this: var BRepCurveRepresentation; L: TopLocLocation) {.cdecl,
    importcpp: "Location", dynlib: tkbrep.}
proc curve3D*(this: BRepCurveRepresentation): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "Curve3D", dynlib: tkbrep.}
proc curve3D*(this: var BRepCurveRepresentation; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "Curve3D", dynlib: tkbrep.}
proc surface*(this: BRepCurveRepresentation): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "Surface", dynlib: tkbrep.}
proc pCurve*(this: BRepCurveRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve", dynlib: tkbrep.}
proc pCurve*(this: var BRepCurveRepresentation; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve", dynlib: tkbrep.}
proc pCurve2*(this: BRepCurveRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve2", dynlib: tkbrep.}
proc pCurve2*(this: var BRepCurveRepresentation; c: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "PCurve2", dynlib: tkbrep.}
proc polygon3D*(this: BRepCurveRepresentation): Handle[PolyPolygon3D] {.
    noSideEffect, cdecl, importcpp: "Polygon3D", dynlib: tkbrep.}
proc polygon3D*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon3D]) {.cdecl,
    importcpp: "Polygon3D", dynlib: tkbrep.}
proc polygon*(this: BRepCurveRepresentation): Handle[PolyPolygon2D] {.noSideEffect,
    cdecl, importcpp: "Polygon", dynlib: tkbrep.}
proc polygon*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon2D]) {.cdecl,
    importcpp: "Polygon", dynlib: tkbrep.}
proc polygon2*(this: BRepCurveRepresentation): Handle[PolyPolygon2D] {.noSideEffect,
    cdecl, importcpp: "Polygon2", dynlib: tkbrep.}
proc polygon2*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon2D]) {.cdecl,
    importcpp: "Polygon2", dynlib: tkbrep.}
proc triangulation*(this: BRepCurveRepresentation): Handle[PolyTriangulation] {.
    noSideEffect, cdecl, importcpp: "Triangulation", dynlib: tkbrep.}
proc polygonOnTriangulation*(this: BRepCurveRepresentation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect, cdecl,
                                 importcpp: "PolygonOnTriangulation",
                                 dynlib: tkbrep.}
proc polygonOnTriangulation*(this: var BRepCurveRepresentation;
                            p: Handle[PolyPolygonOnTriangulation]) {.cdecl,
    importcpp: "PolygonOnTriangulation", dynlib: tkbrep.}
proc polygonOnTriangulation2*(this: BRepCurveRepresentation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect, cdecl,
                                 importcpp: "PolygonOnTriangulation2",
                                 dynlib: tkbrep.}
proc polygonOnTriangulation2*(this: var BRepCurveRepresentation;
                             p2: Handle[PolyPolygonOnTriangulation]) {.cdecl,
    importcpp: "PolygonOnTriangulation2", dynlib: tkbrep.}
proc surface2*(this: BRepCurveRepresentation): Handle[GeomSurface] {.noSideEffect,
    cdecl, importcpp: "Surface2", dynlib: tkbrep.}
proc location2*(this: BRepCurveRepresentation): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Location2", dynlib: tkbrep.}
proc continuity*(this: BRepCurveRepresentation): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkbrep.}
proc continuity*(this: var BRepCurveRepresentation; c: GeomAbsShape) {.cdecl,
    importcpp: "Continuity", dynlib: tkbrep.}
proc copy*(this: BRepCurveRepresentation): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkbrep.}
proc dumpJson*(this: BRepCurveRepresentation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}