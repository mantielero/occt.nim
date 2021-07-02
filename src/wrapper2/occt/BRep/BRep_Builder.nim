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
  BRepBuilder* {.importcpp: "BRep_Builder", header: "BRep_Builder.hxx", bycopy.} = object of TopoDS_Builder ##
                                                                                                  ## !
                                                                                                  ## Makes
                                                                                                  ## an
                                                                                                  ## undefined
                                                                                                  ## Face.


proc makeFace*(this: BRepBuilder; f: var TopoDS_Face) {.noSideEffect,
    importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; s: Handle[GeomSurface];
              tol: StandardReal) {.noSideEffect, importcpp: "MakeFace",
                                 header: "BRep_Builder.hxx".}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; s: Handle[GeomSurface];
              L: TopLocLocation; tol: StandardReal) {.noSideEffect,
    importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; t: Handle[PolyTriangulation]) {.
    noSideEffect, importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; s: Handle[GeomSurface];
                L: TopLocLocation; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; t: Handle[PolyTriangulation]) {.
    noSideEffect, importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc naturalRestriction*(this: BRepBuilder; f: TopoDS_Face; n: StandardBoolean) {.
    noSideEffect, importcpp: "NaturalRestriction", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge) {.noSideEffect,
    importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; c: Handle[GeomCurve];
              tol: StandardReal) {.noSideEffect, importcpp: "MakeEdge",
                                 header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; c: Handle[GeomCurve];
              L: TopLocLocation; tol: StandardReal) {.noSideEffect,
    importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; p: Handle[PolyPolygon3D]) {.
    noSideEffect, importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge;
              n: Handle[PolyPolygonOnTriangulation]; t: Handle[PolyTriangulation]) {.
    noSideEffect, importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge;
              n: Handle[PolyPolygonOnTriangulation]; t: Handle[PolyTriangulation];
              L: TopLocLocation) {.noSideEffect, importcpp: "MakeEdge",
                                 header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[GeomCurve];
                tol: StandardReal) {.noSideEffect, importcpp: "UpdateEdge",
                                   header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[GeomCurve];
                L: TopLocLocation; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                f: TopoDS_Face; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; f: TopoDS_Face; tol: StandardReal) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                s: Handle[GeomSurface]; L: TopLocLocation; tol: StandardReal) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                s: Handle[GeomSurface]; L: TopLocLocation; tol: StandardReal;
                pf: GpPnt2d; pl: GpPnt2d) {.noSideEffect, importcpp: "UpdateEdge",
                                        header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; s: Handle[GeomSurface]; L: TopLocLocation;
                tol: StandardReal) {.noSideEffect, importcpp: "UpdateEdge",
                                   header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; s: Handle[GeomSurface]; L: TopLocLocation;
                tol: StandardReal; pf: GpPnt2d; pl: GpPnt2d) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon3D]) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon3D];
                L: TopLocLocation) {.noSideEffect, importcpp: "UpdateEdge",
                                   header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]; L: TopLocLocation) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n1: Handle[PolyPolygonOnTriangulation];
                n2: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n1: Handle[PolyPolygonOnTriangulation];
                n2: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]; L: TopLocLocation) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon2D];
                s: TopoDS_Face) {.noSideEffect, importcpp: "UpdateEdge",
                                header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon2D];
                s: Handle[GeomSurface]; t: TopLocLocation) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p1: Handle[PolyPolygon2D];
                p2: Handle[PolyPolygon2D]; s: TopoDS_Face) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p1: Handle[PolyPolygon2D];
                p2: Handle[PolyPolygon2D]; s: Handle[GeomSurface]; L: TopLocLocation) {.
    noSideEffect, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc continuity*(this: BRepBuilder; e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face;
                c: GeomAbsShape) {.noSideEffect, importcpp: "Continuity",
                                 header: "BRep_Builder.hxx".}
proc continuity*(this: BRepBuilder; e: TopoDS_Edge; s1: Handle[GeomSurface];
                s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation;
                c: GeomAbsShape) {.noSideEffect, importcpp: "Continuity",
                                 header: "BRep_Builder.hxx".}
proc sameParameter*(this: BRepBuilder; e: TopoDS_Edge; s: StandardBoolean) {.
    noSideEffect, importcpp: "SameParameter", header: "BRep_Builder.hxx".}
proc sameRange*(this: BRepBuilder; e: TopoDS_Edge; s: StandardBoolean) {.noSideEffect,
    importcpp: "SameRange", header: "BRep_Builder.hxx".}
proc degenerated*(this: BRepBuilder; e: TopoDS_Edge; d: StandardBoolean) {.
    noSideEffect, importcpp: "Degenerated", header: "BRep_Builder.hxx".}
proc range*(this: BRepBuilder; e: TopoDS_Edge; first: StandardReal; last: StandardReal;
           only3d: StandardBoolean = standardFalse) {.noSideEffect,
    importcpp: "Range", header: "BRep_Builder.hxx".}
proc range*(this: BRepBuilder; e: TopoDS_Edge; s: Handle[GeomSurface];
           L: TopLocLocation; first: StandardReal; last: StandardReal) {.noSideEffect,
    importcpp: "Range", header: "BRep_Builder.hxx".}
proc range*(this: BRepBuilder; e: TopoDS_Edge; f: TopoDS_Face; first: StandardReal;
           last: StandardReal) {.noSideEffect, importcpp: "Range",
                               header: "BRep_Builder.hxx".}
proc transfert*(this: BRepBuilder; ein: TopoDS_Edge; eout: TopoDS_Edge) {.noSideEffect,
    importcpp: "Transfert", header: "BRep_Builder.hxx".}
proc makeVertex*(this: BRepBuilder; v: var TopoDS_Vertex) {.noSideEffect,
    importcpp: "MakeVertex", header: "BRep_Builder.hxx".}
proc makeVertex*(this: BRepBuilder; v: var TopoDS_Vertex; p: GpPnt; tol: StandardReal) {.
    noSideEffect, importcpp: "MakeVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: GpPnt; tol: StandardReal) {.
    noSideEffect, importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: StandardReal;
                  e: TopoDS_Edge; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: StandardReal;
                  e: TopoDS_Edge; f: TopoDS_Face; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: StandardReal;
                  e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                  tol: StandardReal) {.noSideEffect, importcpp: "UpdateVertex",
                                     header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; ve: TopoDS_Vertex; u: StandardReal;
                  v: StandardReal; f: TopoDS_Face; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; tol: StandardReal) {.
    noSideEffect, importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc transfert*(this: BRepBuilder; ein: TopoDS_Edge; eout: TopoDS_Edge;
               vin: TopoDS_Vertex; vout: TopoDS_Vertex) {.noSideEffect,
    importcpp: "Transfert", header: "BRep_Builder.hxx".}

