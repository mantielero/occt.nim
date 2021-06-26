# /usr/include/opencascade/BRep_Builder.hxx --> occt/tkBRep/brep/BRep_Builder.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepbuilder = "/usr/include/opencascade/BRep_Builder.hxx"
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
  BRepBuilder* {.importcpp: "BRep_Builder", header: headerBrepbuilder, bycopy.} = object of TopoDS_Builder


proc `new`*(this: var BRepBuilder; theSize: csize_t): pointer {.
    importcpp: "BRep_Builder::operator new", header: headerBrepbuilder.}
proc `delete`*(this: var BRepBuilder; theAddress: pointer) {.
    importcpp: "BRep_Builder::operator delete", header: headerBrepbuilder.}
proc `new[]`*(this: var BRepBuilder; theSize: csize_t): pointer {.
    importcpp: "BRep_Builder::operator new[]", header: headerBrepbuilder.}
proc `delete[]`*(this: var BRepBuilder; theAddress: pointer) {.
    importcpp: "BRep_Builder::operator delete[]", header: headerBrepbuilder.}
proc `new`*(this: var BRepBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRep_Builder::operator new", header: headerBrepbuilder.}
proc `delete`*(this: var BRepBuilder; a2: pointer; a3: pointer) {.
    importcpp: "BRep_Builder::operator delete", header: headerBrepbuilder.}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face) {.noSideEffect,
    importcpp: "MakeFace", header: headerBrepbuilder.}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; s: Handle[GeomSurface];
              tol: StandardReal) {.noSideEffect, importcpp: "MakeFace",
                                 header: headerBrepbuilder.}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; s: Handle[GeomSurface];
              L: TopLocLocation; tol: StandardReal) {.noSideEffect,
    importcpp: "MakeFace", header: headerBrepbuilder.}
proc makeFace*(this: BRepBuilder; f: var TopoDS_Face; t: Handle[PolyTriangulation]) {.
    noSideEffect, importcpp: "MakeFace", header: headerBrepbuilder.}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; s: Handle[GeomSurface];
                L: TopLocLocation; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateFace", header: headerBrepbuilder.}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; t: Handle[PolyTriangulation]) {.
    noSideEffect, importcpp: "UpdateFace", header: headerBrepbuilder.}
proc updateFace*(this: BRepBuilder; f: TopoDS_Face; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateFace", header: headerBrepbuilder.}
proc naturalRestriction*(this: BRepBuilder; f: TopoDS_Face; n: StandardBoolean) {.
    noSideEffect, importcpp: "NaturalRestriction", header: headerBrepbuilder.}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge) {.noSideEffect,
    importcpp: "MakeEdge", header: headerBrepbuilder.}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; c: Handle[GeomCurve];
              tol: StandardReal) {.noSideEffect, importcpp: "MakeEdge",
                                 header: headerBrepbuilder.}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; c: Handle[GeomCurve];
              L: TopLocLocation; tol: StandardReal) {.noSideEffect,
    importcpp: "MakeEdge", header: headerBrepbuilder.}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge; p: Handle[PolyPolygon3D]) {.
    noSideEffect, importcpp: "MakeEdge", header: headerBrepbuilder.}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge;
              n: Handle[PolyPolygonOnTriangulation]; t: Handle[PolyTriangulation]) {.
    noSideEffect, importcpp: "MakeEdge", header: headerBrepbuilder.}
proc makeEdge*(this: BRepBuilder; e: var TopoDS_Edge;
              n: Handle[PolyPolygonOnTriangulation]; t: Handle[PolyTriangulation];
              L: TopLocLocation) {.noSideEffect, importcpp: "MakeEdge",
                                 header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[GeomCurve];
                tol: StandardReal) {.noSideEffect, importcpp: "UpdateEdge",
                                   header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[GeomCurve];
                L: TopLocLocation; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                f: TopoDS_Face; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; f: TopoDS_Face; tol: StandardReal) {.
    noSideEffect, importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                s: Handle[GeomSurface]; L: TopLocLocation; tol: StandardReal) {.
    noSideEffect, importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c: Handle[Geom2dCurve];
                s: Handle[GeomSurface]; L: TopLocLocation; tol: StandardReal;
                pf: GpPnt2d; pl: GpPnt2d) {.noSideEffect, importcpp: "UpdateEdge",
                                        header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; s: Handle[GeomSurface]; L: TopLocLocation;
                tol: StandardReal) {.noSideEffect, importcpp: "UpdateEdge",
                                   header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; c1: Handle[Geom2dCurve];
                c2: Handle[Geom2dCurve]; s: Handle[GeomSurface]; L: TopLocLocation;
                tol: StandardReal; pf: GpPnt2d; pl: GpPnt2d) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon3D]) {.
    noSideEffect, importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon3D];
                L: TopLocLocation) {.noSideEffect, importcpp: "UpdateEdge",
                                   header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]; L: TopLocLocation) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n1: Handle[PolyPolygonOnTriangulation];
                n2: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge;
                n1: Handle[PolyPolygonOnTriangulation];
                n2: Handle[PolyPolygonOnTriangulation];
                t: Handle[PolyTriangulation]; L: TopLocLocation) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon2D];
                s: TopoDS_Face) {.noSideEffect, importcpp: "UpdateEdge",
                                header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p: Handle[PolyPolygon2D];
                s: Handle[GeomSurface]; t: TopLocLocation) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p1: Handle[PolyPolygon2D];
                p2: Handle[PolyPolygon2D]; s: TopoDS_Face) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; p1: Handle[PolyPolygon2D];
                p2: Handle[PolyPolygon2D]; s: Handle[GeomSurface]; L: TopLocLocation) {.
    noSideEffect, importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc updateEdge*(this: BRepBuilder; e: TopoDS_Edge; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateEdge", header: headerBrepbuilder.}
proc continuity*(this: BRepBuilder; e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face;
                c: GeomAbsShape) {.noSideEffect, importcpp: "Continuity",
                                 header: headerBrepbuilder.}
proc continuity*(this: BRepBuilder; e: TopoDS_Edge; s1: Handle[GeomSurface];
                s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation;
                c: GeomAbsShape) {.noSideEffect, importcpp: "Continuity",
                                 header: headerBrepbuilder.}
proc sameParameter*(this: BRepBuilder; e: TopoDS_Edge; s: StandardBoolean) {.
    noSideEffect, importcpp: "SameParameter", header: headerBrepbuilder.}
proc sameRange*(this: BRepBuilder; e: TopoDS_Edge; s: StandardBoolean) {.noSideEffect,
    importcpp: "SameRange", header: headerBrepbuilder.}
proc degenerated*(this: BRepBuilder; e: TopoDS_Edge; d: StandardBoolean) {.
    noSideEffect, importcpp: "Degenerated", header: headerBrepbuilder.}
proc range*(this: BRepBuilder; e: TopoDS_Edge; first: StandardReal; last: StandardReal;
           only3d: StandardBoolean = false) {.noSideEffect, importcpp: "Range",
    header: headerBrepbuilder.}
proc range*(this: BRepBuilder; e: TopoDS_Edge; s: Handle[GeomSurface];
           L: TopLocLocation; first: StandardReal; last: StandardReal) {.noSideEffect,
    importcpp: "Range", header: headerBrepbuilder.}
proc range*(this: BRepBuilder; e: TopoDS_Edge; f: TopoDS_Face; first: StandardReal;
           last: StandardReal) {.noSideEffect, importcpp: "Range",
                               header: headerBrepbuilder.}
proc transfert*(this: BRepBuilder; ein: TopoDS_Edge; eout: TopoDS_Edge) {.noSideEffect,
    importcpp: "Transfert", header: headerBrepbuilder.}
proc makeVertex*(this: BRepBuilder; v: var TopoDS_Vertex) {.noSideEffect,
    importcpp: "MakeVertex", header: headerBrepbuilder.}
proc makeVertex*(this: BRepBuilder; v: var TopoDS_Vertex; p: GpPnt; tol: StandardReal) {.
    noSideEffect, importcpp: "MakeVertex", header: headerBrepbuilder.}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: GpPnt; tol: StandardReal) {.
    noSideEffect, importcpp: "UpdateVertex", header: headerBrepbuilder.}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: StandardReal;
                  e: TopoDS_Edge; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateVertex", header: headerBrepbuilder.}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: StandardReal;
                  e: TopoDS_Edge; f: TopoDS_Face; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateVertex", header: headerBrepbuilder.}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; p: StandardReal;
                  e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                  tol: StandardReal) {.noSideEffect, importcpp: "UpdateVertex",
                                     header: headerBrepbuilder.}
proc updateVertex*(this: BRepBuilder; ve: TopoDS_Vertex; u: StandardReal;
                  v: StandardReal; f: TopoDS_Face; tol: StandardReal) {.noSideEffect,
    importcpp: "UpdateVertex", header: headerBrepbuilder.}
proc updateVertex*(this: BRepBuilder; v: TopoDS_Vertex; tol: StandardReal) {.
    noSideEffect, importcpp: "UpdateVertex", header: headerBrepbuilder.}
proc transfert*(this: BRepBuilder; ein: TopoDS_Edge; eout: TopoDS_Edge;
               vin: TopoDS_Vertex; vout: TopoDS_Vertex) {.noSideEffect,
    importcpp: "Transfert", header: headerBrepbuilder.}