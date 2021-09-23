##  Created on: 1991-07-01
##  Created by: Remi LEQUETTE
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Builder, ../Geom2d/Geom2d_Curve,
  ../Geom/Geom_Curve, ../Geom/Geom_Surface, ../GeomAbs/GeomAbs_Shape,
  ../Poly/Poly_Polygon3D, ../Poly/Poly_PolygonOnTriangulation,
  ../Poly/Poly_Triangulation

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Poly_Polygon2D"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
type
  BRep_Builder* {.importcpp: "BRep_Builder", header: "BRep_Builder.hxx", bycopy.} = object of TopoDS_Builder ##
                                                                                                   ## !
                                                                                                   ## Makes
                                                                                                   ## an
                                                                                                   ## undefined
                                                                                                   ## Face.


proc MakeFace*(this: BRep_Builder; F: var TopoDS_Face) {.noSideEffect,
    importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc MakeFace*(this: BRep_Builder; F: var TopoDS_Face; S: handle[Geom_Surface];
              Tol: Standard_Real) {.noSideEffect, importcpp: "MakeFace",
                                  header: "BRep_Builder.hxx".}
proc MakeFace*(this: BRep_Builder; F: var TopoDS_Face; S: handle[Geom_Surface];
              L: TopLoc_Location; Tol: Standard_Real) {.noSideEffect,
    importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc MakeFace*(this: BRep_Builder; F: var TopoDS_Face; T: handle[Poly_Triangulation]) {.
    noSideEffect, importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc UpdateFace*(this: BRep_Builder; F: TopoDS_Face; S: handle[Geom_Surface];
                L: TopLoc_Location; Tol: Standard_Real) {.noSideEffect,
    importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc UpdateFace*(this: BRep_Builder; F: TopoDS_Face; T: handle[Poly_Triangulation]) {.
    noSideEffect, importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc UpdateFace*(this: BRep_Builder; F: TopoDS_Face; Tol: Standard_Real) {.
    noSideEffect, importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc NaturalRestriction*(this: BRep_Builder; F: TopoDS_Face; N: Standard_Boolean) {.
    noSideEffect, importcpp: "NaturalRestriction", header: "BRep_Builder.hxx".}
proc MakeEdge*(this: BRep_Builder; E: var TopoDS_Edge) {.noSideEffect,
    importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc MakeEdge*(this: BRep_Builder; E: var TopoDS_Edge; C: handle[Geom_Curve];
              Tol: Standard_Real) {.noSideEffect, importcpp: "MakeEdge",
                                  header: "BRep_Builder.hxx".}
proc MakeEdge*(this: BRep_Builder; E: var TopoDS_Edge; C: handle[Geom_Curve];
              L: TopLoc_Location; Tol: Standard_Real) {.noSideEffect,
    importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc MakeEdge*(this: BRep_Builder; E: var TopoDS_Edge; P: handle[Poly_Polygon3D]) {.
    noSideEffect, importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc MakeEdge*(this: BRep_Builder; E: var TopoDS_Edge;
              N: handle[Poly_PolygonOnTriangulation];
              T: handle[Poly_Triangulation]) {.noSideEffect, importcpp: "MakeEdge",
    header: "BRep_Builder.hxx".}
proc MakeEdge*(this: BRep_Builder; E: var TopoDS_Edge;
              N: handle[Poly_PolygonOnTriangulation];
              T: handle[Poly_Triangulation]; L: TopLoc_Location) {.noSideEffect,
    importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; C: handle[Geom_Curve];
                Tol: Standard_Real) {.noSideEffect, importcpp: "UpdateEdge",
                                    header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; C: handle[Geom_Curve];
                L: TopLoc_Location; Tol: Standard_Real) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; C: handle[Geom2d_Curve];
                F: TopoDS_Face; Tol: Standard_Real) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; C1: handle[Geom2d_Curve];
                C2: handle[Geom2d_Curve]; F: TopoDS_Face; Tol: Standard_Real) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; C: handle[Geom2d_Curve];
                S: handle[Geom_Surface]; L: TopLoc_Location; Tol: Standard_Real) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; C: handle[Geom2d_Curve];
                S: handle[Geom_Surface]; L: TopLoc_Location; Tol: Standard_Real;
                Pf: gp_Pnt2d; Pl: gp_Pnt2d) {.noSideEffect, importcpp: "UpdateEdge",
    header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; C1: handle[Geom2d_Curve];
                C2: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                L: TopLoc_Location; Tol: Standard_Real) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; C1: handle[Geom2d_Curve];
                C2: handle[Geom2d_Curve]; S: handle[Geom_Surface];
                L: TopLoc_Location; Tol: Standard_Real; Pf: gp_Pnt2d; Pl: gp_Pnt2d) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; P: handle[Poly_Polygon3D]) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; P: handle[Poly_Polygon3D];
                L: TopLoc_Location) {.noSideEffect, importcpp: "UpdateEdge",
                                    header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge;
                N: handle[Poly_PolygonOnTriangulation];
                T: handle[Poly_Triangulation]) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge;
                N: handle[Poly_PolygonOnTriangulation];
                T: handle[Poly_Triangulation]; L: TopLoc_Location) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge;
                N1: handle[Poly_PolygonOnTriangulation];
                N2: handle[Poly_PolygonOnTriangulation];
                T: handle[Poly_Triangulation]) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge;
                N1: handle[Poly_PolygonOnTriangulation];
                N2: handle[Poly_PolygonOnTriangulation];
                T: handle[Poly_Triangulation]; L: TopLoc_Location) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; P: handle[Poly_Polygon2D];
                S: TopoDS_Face) {.noSideEffect, importcpp: "UpdateEdge",
                                header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; P: handle[Poly_Polygon2D];
                S: handle[Geom_Surface]; T: TopLoc_Location) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; P1: handle[Poly_Polygon2D];
                P2: handle[Poly_Polygon2D]; S: TopoDS_Face) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; P1: handle[Poly_Polygon2D];
                P2: handle[Poly_Polygon2D]; S: handle[Geom_Surface];
                L: TopLoc_Location) {.noSideEffect, importcpp: "UpdateEdge",
                                    header: "BRep_Builder.hxx".}
proc UpdateEdge*(this: BRep_Builder; E: TopoDS_Edge; Tol: Standard_Real) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc Continuity*(this: BRep_Builder; E: TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face;
                C: GeomAbs_Shape) {.noSideEffect, importcpp: "Continuity",
                                  header: "BRep_Builder.hxx".}
proc Continuity*(this: BRep_Builder; E: TopoDS_Edge; S1: handle[Geom_Surface];
                S2: handle[Geom_Surface]; L1: TopLoc_Location; L2: TopLoc_Location;
                C: GeomAbs_Shape) {.noSideEffect, importcpp: "Continuity",
                                  header: "BRep_Builder.hxx".}
proc SameParameter*(this: BRep_Builder; E: TopoDS_Edge; S: Standard_Boolean) {.
    noSideEffect, importcpp: "SameParameter", header: "BRep_Builder.hxx".}
proc SameRange*(this: BRep_Builder; E: TopoDS_Edge; S: Standard_Boolean) {.
    noSideEffect, importcpp: "SameRange", header: "BRep_Builder.hxx".}
proc Degenerated*(this: BRep_Builder; E: TopoDS_Edge; D: Standard_Boolean) {.
    noSideEffect, importcpp: "Degenerated", header: "BRep_Builder.hxx".}
proc Range*(this: BRep_Builder; E: TopoDS_Edge; First: Standard_Real;
           Last: Standard_Real; Only3d: Standard_Boolean = Standard_False) {.
    noSideEffect, importcpp: "Range", header: "BRep_Builder.hxx".}
proc Range*(this: BRep_Builder; E: TopoDS_Edge; S: handle[Geom_Surface];
           L: TopLoc_Location; First: Standard_Real; Last: Standard_Real) {.
    noSideEffect, importcpp: "Range", header: "BRep_Builder.hxx".}
proc Range*(this: BRep_Builder; E: TopoDS_Edge; F: TopoDS_Face; First: Standard_Real;
           Last: Standard_Real) {.noSideEffect, importcpp: "Range",
                                header: "BRep_Builder.hxx".}
proc Transfert*(this: BRep_Builder; Ein: TopoDS_Edge; Eout: TopoDS_Edge) {.
    noSideEffect, importcpp: "Transfert", header: "BRep_Builder.hxx".}
proc MakeVertex*(this: BRep_Builder; V: var TopoDS_Vertex) {.noSideEffect,
    importcpp: "MakeVertex", header: "BRep_Builder.hxx".}
proc MakeVertex*(this: BRep_Builder; V: var TopoDS_Vertex; P: gp_Pnt; Tol: Standard_Real) {.
    noSideEffect, importcpp: "MakeVertex", header: "BRep_Builder.hxx".}
proc UpdateVertex*(this: BRep_Builder; V: TopoDS_Vertex; P: gp_Pnt; Tol: Standard_Real) {.
    noSideEffect, importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc UpdateVertex*(this: BRep_Builder; V: TopoDS_Vertex; P: Standard_Real;
                  E: TopoDS_Edge; Tol: Standard_Real) {.noSideEffect,
    importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc UpdateVertex*(this: BRep_Builder; V: TopoDS_Vertex; P: Standard_Real;
                  E: TopoDS_Edge; F: TopoDS_Face; Tol: Standard_Real) {.noSideEffect,
    importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc UpdateVertex*(this: BRep_Builder; V: TopoDS_Vertex; P: Standard_Real;
                  E: TopoDS_Edge; S: handle[Geom_Surface]; L: TopLoc_Location;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "UpdateVertex",
                                      header: "BRep_Builder.hxx".}
proc UpdateVertex*(this: BRep_Builder; Ve: TopoDS_Vertex; U: Standard_Real;
                  V: Standard_Real; F: TopoDS_Face; Tol: Standard_Real) {.
    noSideEffect, importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc UpdateVertex*(this: BRep_Builder; V: TopoDS_Vertex; Tol: Standard_Real) {.
    noSideEffect, importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc Transfert*(this: BRep_Builder; Ein: TopoDS_Edge; Eout: TopoDS_Edge;
               Vin: TopoDS_Vertex; Vout: TopoDS_Vertex) {.noSideEffect,
    importcpp: "Transfert", header: "BRep_Builder.hxx".}