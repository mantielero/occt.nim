import ../../tkmath/toploc/toploc_types
import ../../tkmath/gp/gp_types
import ../../tkg3d/topabs/topabs_types
import ../../tkernel/standard/standard_types
import ../tkbrep/topods/topods_types
import ../../tkg3d/geom/geom_types
import ../../tkmath/geomabs/geomabs_types
import ../../tkmath/poly/poly_types
import ../../tkg2d/geom2d/geom2d_types



##  Created on: 1993-07-07
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



proc isClosed*(s: TopoDS_Shape): bool {.cdecl, importcpp: "BRep_Tool::IsClosed(@)",
                                    header: "BRep_Tool.hxx".}
proc surface*(f: TopoDS_Face; L: var TopLocLocation): Handle[GeomSurface] {.cdecl,
    importcpp: "BRep_Tool::Surface(@)", header: "BRep_Tool.hxx".}
proc surface*(f: TopoDS_Face): Handle[GeomSurface] {.cdecl,
    importcpp: "BRep_Tool::Surface(@)", header: "BRep_Tool.hxx".}
proc triangulation*(f: TopoDS_Face; L: var TopLocLocation): Handle[PolyTriangulation] {.
    cdecl, importcpp: "BRep_Tool::Triangulation(@)", header: "BRep_Tool.hxx".}
proc tolerance*(f: TopoDS_Face): cfloat {.cdecl,
                                      importcpp: "BRep_Tool::Tolerance(@)",
                                      header: "BRep_Tool.hxx".}
proc naturalRestriction*(f: TopoDS_Face): bool {.cdecl,
    importcpp: "BRep_Tool::NaturalRestriction(@)", header: "BRep_Tool.hxx".}
proc isGeometric*(f: TopoDS_Face): bool {.cdecl,
                                      importcpp: "BRep_Tool::IsGeometric(@)",
                                      header: "BRep_Tool.hxx".}
proc isGeometric*(e: TopoDS_Edge): bool {.cdecl,
                                      importcpp: "BRep_Tool::IsGeometric(@)",
                                      header: "BRep_Tool.hxx".}
proc curve*(e: TopoDS_Edge; L: var TopLocLocation; first: var cfloat; last: var cfloat): Handle[
    GeomCurve] {.cdecl, importcpp: "BRep_Tool::Curve(@)", header: "BRep_Tool.hxx".}
proc curve*(e: TopoDS_Edge; first: var cfloat; last: var cfloat): Handle[GeomCurve] {.
    cdecl, importcpp: "BRep_Tool::Curve(@)", header: "BRep_Tool.hxx".}
proc polygon3D*(e: TopoDS_Edge; L: var TopLocLocation): Handle[PolyPolygon3D] {.cdecl,
    importcpp: "BRep_Tool::Polygon3D(@)", header: "BRep_Tool.hxx".}
proc curveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face; first: var cfloat;
                    last: var cfloat; theIsStored: ptr bool = nil): Handle[Geom2dCurve] {.
    cdecl, importcpp: "BRep_Tool::CurveOnSurface(@)", header: "BRep_Tool.hxx".}
proc curveOnSurface*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                    first: var cfloat; last: var cfloat; theIsStored: ptr bool = nil): Handle[
    Geom2dCurve] {.cdecl, importcpp: "BRep_Tool::CurveOnSurface(@)", header: "BRep_Tool.hxx".}
proc curveOnPlane*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                  first: var cfloat; last: var cfloat): Handle[Geom2dCurve] {.cdecl,
    importcpp: "BRep_Tool::CurveOnPlane(@)", header: "BRep_Tool.hxx".}
proc curveOnSurface*(e: TopoDS_Edge; c: var Handle[Geom2dCurve];
                    s: var Handle[GeomSurface]; L: var TopLocLocation;
                    first: var cfloat; last: var cfloat) {.cdecl,
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: "BRep_Tool.hxx".}
proc curveOnSurface*(e: TopoDS_Edge; c: var Handle[Geom2dCurve];
                    s: var Handle[GeomSurface]; L: var TopLocLocation;
                    first: var cfloat; last: var cfloat; index: cint) {.cdecl,
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: "BRep_Tool.hxx".}
proc polygonOnSurface*(e: TopoDS_Edge; f: TopoDS_Face): Handle[PolyPolygon2D] {.cdecl,
    importcpp: "BRep_Tool::PolygonOnSurface(@)", header: "BRep_Tool.hxx".}
proc polygonOnSurface*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation): Handle[
    PolyPolygon2D] {.cdecl, importcpp: "BRep_Tool::PolygonOnSurface(@)",
                    header: "BRep_Tool.hxx".}
proc polygonOnSurface*(e: TopoDS_Edge; c: var Handle[PolyPolygon2D];
                      s: var Handle[GeomSurface]; L: var TopLocLocation) {.cdecl,
    importcpp: "BRep_Tool::PolygonOnSurface(@)", header: "BRep_Tool.hxx".}
proc polygonOnSurface*(e: TopoDS_Edge; c: var Handle[PolyPolygon2D];
                      s: var Handle[GeomSurface]; L: var TopLocLocation; index: cint) {.
    cdecl, importcpp: "BRep_Tool::PolygonOnSurface(@)", header: "BRep_Tool.hxx".}
proc polygonOnTriangulation*(e: TopoDS_Edge; t: Handle[PolyTriangulation];
                            L: TopLocLocation): Handle[PolyPolygonOnTriangulation] {.
    cdecl, importcpp: "BRep_Tool::PolygonOnTriangulation(@)", header: "BRep_Tool.hxx".}
proc polygonOnTriangulation*(e: TopoDS_Edge;
                            p: var Handle[PolyPolygonOnTriangulation];
                            t: var Handle[PolyTriangulation]; L: var TopLocLocation) {.
    cdecl, importcpp: "BRep_Tool::PolygonOnTriangulation(@)", header: "BRep_Tool.hxx".}
proc polygonOnTriangulation*(e: TopoDS_Edge;
                            p: var Handle[PolyPolygonOnTriangulation];
                            t: var Handle[PolyTriangulation];
                            L: var TopLocLocation; index: cint) {.cdecl,
    importcpp: "BRep_Tool::PolygonOnTriangulation(@)", header: "BRep_Tool.hxx".}
proc isClosed*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "BRep_Tool::IsClosed(@)", header: "BRep_Tool.hxx".}
proc isClosed*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation): bool {.cdecl,
    importcpp: "BRep_Tool::IsClosed(@)", header: "BRep_Tool.hxx".}
proc isClosed*(e: TopoDS_Edge; t: Handle[PolyTriangulation]; L: TopLocLocation): bool {.
    cdecl, importcpp: "BRep_Tool::IsClosed(@)", header: "BRep_Tool.hxx".}
proc tolerance*(e: TopoDS_Edge): cfloat {.cdecl,
                                      importcpp: "BRep_Tool::Tolerance(@)",
                                      header: "BRep_Tool.hxx".}
proc sameParameter*(e: TopoDS_Edge): bool {.cdecl, importcpp: "BRep_Tool::SameParameter(@)",
                                        header: "BRep_Tool.hxx".}
proc sameRange*(e: TopoDS_Edge): bool {.cdecl, importcpp: "BRep_Tool::SameRange(@)",
                                    header: "BRep_Tool.hxx".}
proc degenerated*(e: TopoDS_Edge): bool {.cdecl,
                                      importcpp: "BRep_Tool::Degenerated(@)",
                                      header: "BRep_Tool.hxx".}
proc range*(e: TopoDS_Edge; first: var cfloat; last: var cfloat) {.cdecl,
    importcpp: "BRep_Tool::Range(@)", header: "BRep_Tool.hxx".}
proc range*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
           first: var cfloat; last: var cfloat) {.cdecl,
    importcpp: "BRep_Tool::Range(@)", header: "BRep_Tool.hxx".}
proc range*(e: TopoDS_Edge; f: TopoDS_Face; first: var cfloat; last: var cfloat) {.cdecl,
    importcpp: "BRep_Tool::Range(@)", header: "BRep_Tool.hxx".}
proc uVPoints*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
              pFirst: var Pnt2dObj; pLast: var Pnt2dObj) {.cdecl,
    importcpp: "BRep_Tool::UVPoints(@)", header: "BRep_Tool.hxx".}
proc uVPoints*(e: TopoDS_Edge; f: TopoDS_Face; pFirst: var Pnt2dObj; pLast: var Pnt2dObj) {.
    cdecl, importcpp: "BRep_Tool::UVPoints(@)", header: "BRep_Tool.hxx".}
proc setUVPoints*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                 pFirst: Pnt2dObj; pLast: Pnt2dObj) {.cdecl,
    importcpp: "BRep_Tool::SetUVPoints(@)", header: "BRep_Tool.hxx".}
proc setUVPoints*(e: TopoDS_Edge; f: TopoDS_Face; pFirst: Pnt2dObj; pLast: Pnt2dObj) {.cdecl,
    importcpp: "BRep_Tool::SetUVPoints(@)", header: "BRep_Tool.hxx".}
proc hasContinuity*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): bool {.cdecl,
    importcpp: "BRep_Tool::HasContinuity(@)", header: "BRep_Tool.hxx".}
proc continuity*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): GeomAbsShape {.
    cdecl, importcpp: "BRep_Tool::Continuity(@)", header: "BRep_Tool.hxx".}
proc hasContinuity*(e: TopoDS_Edge; s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                   l1: TopLocLocation; l2: TopLocLocation): bool {.cdecl,
    importcpp: "BRep_Tool::HasContinuity(@)", header: "BRep_Tool.hxx".}
proc continuity*(e: TopoDS_Edge; s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                l1: TopLocLocation; l2: TopLocLocation): GeomAbsShape {.cdecl,
    importcpp: "BRep_Tool::Continuity(@)", header: "BRep_Tool.hxx".}
proc hasContinuity*(e: TopoDS_Edge): bool {.cdecl, importcpp: "BRep_Tool::HasContinuity(@)",
                                        header: "BRep_Tool.hxx".}
proc maxContinuity*(theEdge: TopoDS_Edge): GeomAbsShape {.cdecl,
    importcpp: "BRep_Tool::MaxContinuity(@)", header: "BRep_Tool.hxx".}
proc pnt*(v: TopoDS_Vertex): PntObj {.cdecl, importcpp: "BRep_Tool::Pnt(@)",
                               header: "BRep_Tool.hxx".}
proc tolerance*(v: TopoDS_Vertex): cfloat {.cdecl,
                                        importcpp: "BRep_Tool::Tolerance(@)",
                                        header: "BRep_Tool.hxx".}
proc parameter*(theV: TopoDS_Vertex; theE: TopoDS_Edge; theParam: var cfloat): bool {.
    cdecl, importcpp: "BRep_Tool::Parameter(@)", header: "BRep_Tool.hxx".}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge): cfloat {.cdecl,
    importcpp: "BRep_Tool::Parameter(@)", header: "BRep_Tool.hxx".}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge; f: TopoDS_Face): cfloat {.cdecl,
    importcpp: "BRep_Tool::Parameter(@)", header: "BRep_Tool.hxx".}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge; s: Handle[GeomSurface];
               L: TopLocLocation): cfloat {.cdecl,
    importcpp: "BRep_Tool::Parameter(@)", header: "BRep_Tool.hxx".}
proc parameters*(v: TopoDS_Vertex; f: TopoDS_Face): Pnt2dObj {.cdecl,
    importcpp: "BRep_Tool::Parameters(@)", header: "BRep_Tool.hxx".}
proc maxTolerance*(theShape: TopoDS_Shape; theSubShape: TopAbsShapeEnum): cfloat {.
    cdecl, importcpp: "BRep_Tool::MaxTolerance(@)", header: "BRep_Tool.hxx".}

