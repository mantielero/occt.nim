import brep_types
import ../../tkmath/toploc/toploc_types
import ../../tkmath/gp/gp_types
import ../topods/topods_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/geom/geom_types
import ../../tkmath/geomabs/geomabs_types
import ../../tkmath/poly/poly_types
import ../../tkg2d/geom2d/geom2d_types





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



proc makeFace*(this: BRepBuilder; f: var TopoDS_Face) {.noSideEffect, cdecl,
    importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; s: Handle[GeomSurface];
              tol: cfloat) {.noSideEffect, cdecl, importcpp: "MakeFace",
                           header: "BRep_Builder.hxx".}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; s: Handle[GeomSurface];
              L: TopLocLocation; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; t: Handle[PolyTriangulation]) {.
    noSideEffect, cdecl, importcpp: "MakeFace", header: "BRep_Builder.hxx".}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; s: Handle[GeomSurface];
                L: TopLocLocation; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; t: Handle[PolyTriangulation]) {.
    noSideEffect, cdecl, importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "UpdateFace", header: "BRep_Builder.hxx".}
proc naturalRestriction*(this: BRepBuilder; f: TopoDS_Face; n: bool) {.noSideEffect,
    cdecl, importcpp: "NaturalRestriction", header: "BRep_Builder.hxx".}


proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge) {.noSideEffect, cdecl,
    importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; c: Handle[GeomCurve]; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; c: Handle[GeomCurve];
              L: TopLocLocation; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; p: Handle[PolyPolygon3D]) {.
    noSideEffect, cdecl, importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge;
              n: Handle[PolyPolygonOnTriangulation]; t: Handle[PolyTriangulation]) {.
    noSideEffect, cdecl, importcpp: "MakeEdge", header: "BRep_Builder.hxx".}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge;
              n: Handle[PolyPolygonOnTriangulation]; t: Handle[PolyTriangulation];
              L: TopLocLocation) {.noSideEffect, cdecl, importcpp: "MakeEdge",
                                 header: "BRep_Builder.hxx".}

                                 
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[GeomCurve]; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[GeomCurve];
                L: TopLocLocation; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                f: TopoDS_Face; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; f: TopoDS_Face; tol: cfloat) {.noSideEffect,
    cdecl, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                s: Handle[GeomSurface]; L: TopLocLocation; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                s: Handle[GeomSurface]; L: TopLocLocation; tol: cfloat; pf: Pnt2dObj;
                pl: Pnt2dObj) {.noSideEffect, cdecl, importcpp: "UpdateEdge",
                           header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; s: Handle[GeomSurface]; L: TopLocLocation;
                tol: cfloat) {.noSideEffect, cdecl, importcpp: "UpdateEdge",
                             header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; s: Handle[GeomSurface]; L: TopLocLocation;
                tol: cfloat; pf: Pnt2dObj; pl: Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon3D]) {.
    noSideEffect, cdecl, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon3D];
                L: TopLocLocation) {.noSideEffect, cdecl, importcpp: "UpdateEdge",
                                   header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]) {.noSideEffect, cdecl,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]; L: TopLocLocation) {.noSideEffect,
    cdecl, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n1: Handle[PolyPolygonOnTriangulation];
                n2: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]) {.noSideEffect, cdecl,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n1: Handle[PolyPolygonOnTriangulation];
                n2: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]; L: TopLocLocation) {.noSideEffect,
    cdecl, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon2D];
                s: TopoDS_Face) {.noSideEffect, cdecl, importcpp: "UpdateEdge",
                                header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon2D];
                s: Handle[GeomSurface]; t: TopLocLocation) {.noSideEffect, cdecl,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p1: Handle[PolyPolygon2D];
                p2: Handle[PolyPolygon2D]; s: TopoDS_Face) {.noSideEffect, cdecl,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p1: Handle[PolyPolygon2D];
                p2: Handle[PolyPolygon2D]; s: Handle[GeomSurface]; L: TopLocLocation) {.
    noSideEffect, cdecl, importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "UpdateEdge", header: "BRep_Builder.hxx".}
proc continuity*(this: BRepBuilder; e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face;
                c: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Continuity",
                                 header: "BRep_Builder.hxx".}
proc continuity*(this: BRepBuilder; e: TopoDS_Edge; s1: Handle[GeomSurface];
                s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation;
                c: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Continuity",
                                 header: "BRep_Builder.hxx".}
proc sameParameter*(this: BRepBuilder; e: TopoDS_Edge; s: bool) {.noSideEffect, cdecl,
    importcpp: "SameParameter", header: "BRep_Builder.hxx".}
proc sameRange*(this: BRepBuilder; e: TopoDS_Edge; s: bool) {.noSideEffect, cdecl,
    importcpp: "SameRange", header: "BRep_Builder.hxx".}
proc degenerated*(this: BRepBuilder; e: TopoDS_Edge; d: bool) {.noSideEffect, cdecl,
    importcpp: "Degenerated", header: "BRep_Builder.hxx".}
proc range*(this: BRepBuilder; e: TopoDS_Edge; first: cfloat; last: cfloat;
           only3d: bool = false) {.noSideEffect, cdecl, importcpp: "Range",
                               header: "BRep_Builder.hxx".}
proc range*(this: BRepBuilder; e: TopoDS_Edge; s: Handle[GeomSurface];
           L: TopLocLocation; first: cfloat; last: cfloat) {.noSideEffect, cdecl,
    importcpp: "Range", header: "BRep_Builder.hxx".}
proc range*(this: BRepBuilder; e: TopoDS_Edge; f: TopoDS_Face; first: cfloat;
           last: cfloat) {.noSideEffect, cdecl, importcpp: "Range", header: "BRep_Builder.hxx".}
proc transfert*(this: BRepBuilder; ein: TopoDS_Edge; eout: TopoDS_Edge) {.noSideEffect,
    cdecl, importcpp: "Transfert", header: "BRep_Builder.hxx".}
proc makeVertex*(this: BRepBuilder; v: var TopoDS_Vertex) {.noSideEffect, cdecl,
    importcpp: "MakeVertex", header: "BRep_Builder.hxx".}
proc makeVertex*(this: BRepBuilder; v: var TopoDS_Vertex; p: PntObj; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "MakeVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: PntObj; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: cfloat; e: TopoDS_Edge;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "UpdateVertex",
                               header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: cfloat; e: TopoDS_Edge;
                  f: TopoDS_Face; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: cfloat; e: TopoDS_Edge;
                  s: Handle[GeomSurface]; L: TopLocLocation; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; ve: TopoDS_Vertex; u: cfloat; v: cfloat;
                  f: TopoDS_Face; tol: cfloat) {.noSideEffect, cdecl,
    importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; tol: cfloat) {.noSideEffect,
    cdecl, importcpp: "UpdateVertex", header: "BRep_Builder.hxx".}
proc transfert*(this: BRepBuilder; ein: TopoDS_Edge; eout: TopoDS_Edge;
               vin: TopoDS_Vertex; vout: TopoDS_Vertex) {.noSideEffect, cdecl,
    importcpp: "Transfert", header: "BRep_Builder.hxx".}


