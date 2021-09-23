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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopLoc/TopLoc_Location,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_Shape

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
  Handle_BRep_CurveRepresentation* = handle[BRep_CurveRepresentation]

## ! Root class for the curve representations. Contains
## ! a location.

type
  BRep_CurveRepresentation* {.importcpp: "BRep_CurveRepresentation",
                             header: "BRep_CurveRepresentation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## A
                                                                                                      ## 3D
                                                                                                      ## curve
                                                                                                      ## representation.


proc IsCurve3D*(this: BRep_CurveRepresentation): Standard_Boolean {.noSideEffect,
    importcpp: "IsCurve3D", header: "BRep_CurveRepresentation.hxx".}
proc IsCurveOnSurface*(this: BRep_CurveRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsCurveOnSurface",
    header: "BRep_CurveRepresentation.hxx".}
proc IsRegularity*(this: BRep_CurveRepresentation): Standard_Boolean {.noSideEffect,
    importcpp: "IsRegularity", header: "BRep_CurveRepresentation.hxx".}
proc IsCurveOnClosedSurface*(this: BRep_CurveRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsCurveOnClosedSurface",
    header: "BRep_CurveRepresentation.hxx".}
proc IsCurveOnSurface*(this: BRep_CurveRepresentation; S: handle[Geom_Surface];
                      L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc IsRegularity*(this: BRep_CurveRepresentation; S1: handle[Geom_Surface];
                  S2: handle[Geom_Surface]; L1: TopLoc_Location; L2: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "IsRegularity", header: "BRep_CurveRepresentation.hxx".}
proc IsPolygon3D*(this: BRep_CurveRepresentation): Standard_Boolean {.noSideEffect,
    importcpp: "IsPolygon3D", header: "BRep_CurveRepresentation.hxx".}
proc IsPolygonOnTriangulation*(this: BRep_CurveRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: "BRep_CurveRepresentation.hxx".}
proc IsPolygonOnTriangulation*(this: BRep_CurveRepresentation;
                              T: handle[Poly_Triangulation]; L: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: "BRep_CurveRepresentation.hxx".}
proc IsPolygonOnClosedTriangulation*(this: BRep_CurveRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnClosedTriangulation",
    header: "BRep_CurveRepresentation.hxx".}
proc IsPolygonOnSurface*(this: BRep_CurveRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnSurface",
    header: "BRep_CurveRepresentation.hxx".}
proc IsPolygonOnSurface*(this: BRep_CurveRepresentation; S: handle[Geom_Surface];
                        L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsPolygonOnSurface", header: "BRep_CurveRepresentation.hxx".}
proc IsPolygonOnClosedSurface*(this: BRep_CurveRepresentation): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolygonOnClosedSurface",
    header: "BRep_CurveRepresentation.hxx".}
proc Location*(this: BRep_CurveRepresentation): TopLoc_Location {.noSideEffect,
    importcpp: "Location", header: "BRep_CurveRepresentation.hxx".}
proc Location*(this: var BRep_CurveRepresentation; L: TopLoc_Location) {.
    importcpp: "Location", header: "BRep_CurveRepresentation.hxx".}
proc Curve3D*(this: BRep_CurveRepresentation): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve3D", header: "BRep_CurveRepresentation.hxx".}
proc Curve3D*(this: var BRep_CurveRepresentation; C: handle[Geom_Curve]) {.
    importcpp: "Curve3D", header: "BRep_CurveRepresentation.hxx".}
proc Surface*(this: BRep_CurveRepresentation): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_CurveRepresentation.hxx".}
proc PCurve*(this: BRep_CurveRepresentation): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "PCurve", header: "BRep_CurveRepresentation.hxx".}
proc PCurve*(this: var BRep_CurveRepresentation; C: handle[Geom2d_Curve]) {.
    importcpp: "PCurve", header: "BRep_CurveRepresentation.hxx".}
proc PCurve2*(this: BRep_CurveRepresentation): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "PCurve2", header: "BRep_CurveRepresentation.hxx".}
proc PCurve2*(this: var BRep_CurveRepresentation; C: handle[Geom2d_Curve]) {.
    importcpp: "PCurve2", header: "BRep_CurveRepresentation.hxx".}
proc Polygon3D*(this: BRep_CurveRepresentation): handle[Poly_Polygon3D] {.
    noSideEffect, importcpp: "Polygon3D", header: "BRep_CurveRepresentation.hxx".}
proc Polygon3D*(this: var BRep_CurveRepresentation; P: handle[Poly_Polygon3D]) {.
    importcpp: "Polygon3D", header: "BRep_CurveRepresentation.hxx".}
proc Polygon*(this: BRep_CurveRepresentation): handle[Poly_Polygon2D] {.
    noSideEffect, importcpp: "Polygon", header: "BRep_CurveRepresentation.hxx".}
proc Polygon*(this: var BRep_CurveRepresentation; P: handle[Poly_Polygon2D]) {.
    importcpp: "Polygon", header: "BRep_CurveRepresentation.hxx".}
proc Polygon2*(this: BRep_CurveRepresentation): handle[Poly_Polygon2D] {.
    noSideEffect, importcpp: "Polygon2", header: "BRep_CurveRepresentation.hxx".}
proc Polygon2*(this: var BRep_CurveRepresentation; P: handle[Poly_Polygon2D]) {.
    importcpp: "Polygon2", header: "BRep_CurveRepresentation.hxx".}
proc Triangulation*(this: BRep_CurveRepresentation): handle[Poly_Triangulation] {.
    noSideEffect, importcpp: "Triangulation",
    header: "BRep_CurveRepresentation.hxx".}
proc PolygonOnTriangulation*(this: BRep_CurveRepresentation): handle[
    Poly_PolygonOnTriangulation] {.noSideEffect,
                                  importcpp: "PolygonOnTriangulation",
                                  header: "BRep_CurveRepresentation.hxx".}
proc PolygonOnTriangulation*(this: var BRep_CurveRepresentation;
                            P: handle[Poly_PolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation", header: "BRep_CurveRepresentation.hxx".}
proc PolygonOnTriangulation2*(this: BRep_CurveRepresentation): handle[
    Poly_PolygonOnTriangulation] {.noSideEffect,
                                  importcpp: "PolygonOnTriangulation2",
                                  header: "BRep_CurveRepresentation.hxx".}
proc PolygonOnTriangulation2*(this: var BRep_CurveRepresentation;
                             P2: handle[Poly_PolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation2", header: "BRep_CurveRepresentation.hxx".}
proc Surface2*(this: BRep_CurveRepresentation): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface2", header: "BRep_CurveRepresentation.hxx".}
proc Location2*(this: BRep_CurveRepresentation): TopLoc_Location {.noSideEffect,
    importcpp: "Location2", header: "BRep_CurveRepresentation.hxx".}
proc Continuity*(this: BRep_CurveRepresentation): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRep_CurveRepresentation.hxx".}
proc Continuity*(this: var BRep_CurveRepresentation; C: GeomAbs_Shape) {.
    importcpp: "Continuity", header: "BRep_CurveRepresentation.hxx".}
proc Copy*(this: BRep_CurveRepresentation): handle[BRep_CurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: "BRep_CurveRepresentation.hxx".}
proc DumpJson*(this: BRep_CurveRepresentation; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_CurveRepresentation.hxx".}
type
  BRep_CurveRepresentationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRep_CurveRepresentation::get_type_name(@)",
                              header: "BRep_CurveRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_CurveRepresentation::get_type_descriptor(@)",
    header: "BRep_CurveRepresentation.hxx".}
proc DynamicType*(this: BRep_CurveRepresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRep_CurveRepresentation.hxx".}