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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_Shape, ../Geom/Geom_Surface,
  ../Geom/Geom_Curve, ../Geom2d/Geom2d_Curve, ../gp/gp_Pnt2d, ../gp/gp_Pnt,
  ../Poly/Poly_Triangulation, ../Poly/Poly_Polygon3D, ../Poly/Poly_Polygon2D,
  ../Poly/Poly_PolygonOnTriangulation, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRep_Tool* {.importcpp: "BRep_Tool", header: "BRep_Tool.hxx", bycopy.} = object ## ! If S is Shell,
                                                                          ## returns True if it has no free
                                                                          ## boundaries
                                                                          ## (edges).
                                                                          ## ! If S is Wire,
                                                                          ## returns True if it has no free ends
                                                                          ## (vertices).
                                                                          ## !
                                                                          ## (Internal and
                                                                          ## External
                                                                          ## sub-shepes are
                                                                          ## ignored in these
                                                                          ## checks)
                                                                          ## ! If S is Edge,
                                                                          ## returns True if its
                                                                          ## vertices are the same.
                                                                          ## ! For other shape types
                                                                          ## returns
                                                                          ## S.Closed().


proc IsClosed*(S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "BRep_Tool::IsClosed(@)", header: "BRep_Tool.hxx".}
proc Surface*(F: TopoDS_Face; L: var TopLoc_Location): handle[Geom_Surface] {.
    importcpp: "BRep_Tool::Surface(@)", header: "BRep_Tool.hxx".}
proc Surface*(F: TopoDS_Face): handle[Geom_Surface] {.
    importcpp: "BRep_Tool::Surface(@)", header: "BRep_Tool.hxx".}
proc Triangulation*(F: TopoDS_Face; L: var TopLoc_Location): handle[Poly_Triangulation] {.
    importcpp: "BRep_Tool::Triangulation(@)", header: "BRep_Tool.hxx".}
proc Tolerance*(F: TopoDS_Face): Standard_Real {.
    importcpp: "BRep_Tool::Tolerance(@)", header: "BRep_Tool.hxx".}
proc NaturalRestriction*(F: TopoDS_Face): Standard_Boolean {.
    importcpp: "BRep_Tool::NaturalRestriction(@)", header: "BRep_Tool.hxx".}
proc IsGeometric*(F: TopoDS_Face): Standard_Boolean {.
    importcpp: "BRep_Tool::IsGeometric(@)", header: "BRep_Tool.hxx".}
proc IsGeometric*(E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "BRep_Tool::IsGeometric(@)", header: "BRep_Tool.hxx".}
proc Curve*(E: TopoDS_Edge; L: var TopLoc_Location; First: var Standard_Real;
           Last: var Standard_Real): handle[Geom_Curve] {.
    importcpp: "BRep_Tool::Curve(@)", header: "BRep_Tool.hxx".}
proc Curve*(E: TopoDS_Edge; First: var Standard_Real; Last: var Standard_Real): handle[
    Geom_Curve] {.importcpp: "BRep_Tool::Curve(@)", header: "BRep_Tool.hxx".}
proc Polygon3D*(E: TopoDS_Edge; L: var TopLoc_Location): handle[Poly_Polygon3D] {.
    importcpp: "BRep_Tool::Polygon3D(@)", header: "BRep_Tool.hxx".}
proc CurveOnSurface*(E: TopoDS_Edge; F: TopoDS_Face; First: var Standard_Real;
                    Last: var Standard_Real;
                    theIsStored: ptr Standard_Boolean = nil): handle[Geom2d_Curve] {.
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: "BRep_Tool.hxx".}
proc CurveOnSurface*(E: TopoDS_Edge; S: handle[Geom_Surface]; L: TopLoc_Location;
                    First: var Standard_Real; Last: var Standard_Real;
                    theIsStored: ptr Standard_Boolean = nil): handle[Geom2d_Curve] {.
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: "BRep_Tool.hxx".}
proc CurveOnPlane*(E: TopoDS_Edge; S: handle[Geom_Surface]; L: TopLoc_Location;
                  First: var Standard_Real; Last: var Standard_Real): handle[
    Geom2d_Curve] {.importcpp: "BRep_Tool::CurveOnPlane(@)",
                   header: "BRep_Tool.hxx".}
proc CurveOnSurface*(E: TopoDS_Edge; C: var handle[Geom2d_Curve];
                    S: var handle[Geom_Surface]; L: var TopLoc_Location;
                    First: var Standard_Real; Last: var Standard_Real) {.
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: "BRep_Tool.hxx".}
proc CurveOnSurface*(E: TopoDS_Edge; C: var handle[Geom2d_Curve];
                    S: var handle[Geom_Surface]; L: var TopLoc_Location;
                    First: var Standard_Real; Last: var Standard_Real;
                    Index: Standard_Integer) {.
    importcpp: "BRep_Tool::CurveOnSurface(@)", header: "BRep_Tool.hxx".}
proc PolygonOnSurface*(E: TopoDS_Edge; F: TopoDS_Face): handle[Poly_Polygon2D] {.
    importcpp: "BRep_Tool::PolygonOnSurface(@)", header: "BRep_Tool.hxx".}
proc PolygonOnSurface*(E: TopoDS_Edge; S: handle[Geom_Surface]; L: TopLoc_Location): handle[
    Poly_Polygon2D] {.importcpp: "BRep_Tool::PolygonOnSurface(@)",
                     header: "BRep_Tool.hxx".}
proc PolygonOnSurface*(E: TopoDS_Edge; C: var handle[Poly_Polygon2D];
                      S: var handle[Geom_Surface]; L: var TopLoc_Location) {.
    importcpp: "BRep_Tool::PolygonOnSurface(@)", header: "BRep_Tool.hxx".}
proc PolygonOnSurface*(E: TopoDS_Edge; C: var handle[Poly_Polygon2D];
                      S: var handle[Geom_Surface]; L: var TopLoc_Location;
                      Index: Standard_Integer) {.
    importcpp: "BRep_Tool::PolygonOnSurface(@)", header: "BRep_Tool.hxx".}
proc PolygonOnTriangulation*(E: TopoDS_Edge; T: handle[Poly_Triangulation];
                            L: TopLoc_Location): handle[
    Poly_PolygonOnTriangulation] {.importcpp: "BRep_Tool::PolygonOnTriangulation(@)",
                                  header: "BRep_Tool.hxx".}
proc PolygonOnTriangulation*(E: TopoDS_Edge;
                            P: var handle[Poly_PolygonOnTriangulation];
                            T: var handle[Poly_Triangulation];
                            L: var TopLoc_Location) {.
    importcpp: "BRep_Tool::PolygonOnTriangulation(@)", header: "BRep_Tool.hxx".}
proc PolygonOnTriangulation*(E: TopoDS_Edge;
                            P: var handle[Poly_PolygonOnTriangulation];
                            T: var handle[Poly_Triangulation];
                            L: var TopLoc_Location; Index: Standard_Integer) {.
    importcpp: "BRep_Tool::PolygonOnTriangulation(@)", header: "BRep_Tool.hxx".}
proc IsClosed*(E: TopoDS_Edge; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "BRep_Tool::IsClosed(@)", header: "BRep_Tool.hxx".}
proc IsClosed*(E: TopoDS_Edge; S: handle[Geom_Surface]; L: TopLoc_Location): Standard_Boolean {.
    importcpp: "BRep_Tool::IsClosed(@)", header: "BRep_Tool.hxx".}
proc IsClosed*(E: TopoDS_Edge; T: handle[Poly_Triangulation]; L: TopLoc_Location): Standard_Boolean {.
    importcpp: "BRep_Tool::IsClosed(@)", header: "BRep_Tool.hxx".}
proc Tolerance*(E: TopoDS_Edge): Standard_Real {.
    importcpp: "BRep_Tool::Tolerance(@)", header: "BRep_Tool.hxx".}
proc SameParameter*(E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "BRep_Tool::SameParameter(@)", header: "BRep_Tool.hxx".}
proc SameRange*(E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "BRep_Tool::SameRange(@)", header: "BRep_Tool.hxx".}
proc Degenerated*(E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "BRep_Tool::Degenerated(@)", header: "BRep_Tool.hxx".}
proc Range*(E: TopoDS_Edge; First: var Standard_Real; Last: var Standard_Real) {.
    importcpp: "BRep_Tool::Range(@)", header: "BRep_Tool.hxx".}
proc Range*(E: TopoDS_Edge; S: handle[Geom_Surface]; L: TopLoc_Location;
           First: var Standard_Real; Last: var Standard_Real) {.
    importcpp: "BRep_Tool::Range(@)", header: "BRep_Tool.hxx".}
proc Range*(E: TopoDS_Edge; F: TopoDS_Face; First: var Standard_Real;
           Last: var Standard_Real) {.importcpp: "BRep_Tool::Range(@)",
                                   header: "BRep_Tool.hxx".}
proc UVPoints*(E: TopoDS_Edge; S: handle[Geom_Surface]; L: TopLoc_Location;
              PFirst: var gp_Pnt2d; PLast: var gp_Pnt2d) {.
    importcpp: "BRep_Tool::UVPoints(@)", header: "BRep_Tool.hxx".}
proc UVPoints*(E: TopoDS_Edge; F: TopoDS_Face; PFirst: var gp_Pnt2d; PLast: var gp_Pnt2d) {.
    importcpp: "BRep_Tool::UVPoints(@)", header: "BRep_Tool.hxx".}
proc SetUVPoints*(E: TopoDS_Edge; S: handle[Geom_Surface]; L: TopLoc_Location;
                 PFirst: gp_Pnt2d; PLast: gp_Pnt2d) {.
    importcpp: "BRep_Tool::SetUVPoints(@)", header: "BRep_Tool.hxx".}
proc SetUVPoints*(E: TopoDS_Edge; F: TopoDS_Face; PFirst: gp_Pnt2d; PLast: gp_Pnt2d) {.
    importcpp: "BRep_Tool::SetUVPoints(@)", header: "BRep_Tool.hxx".}
proc HasContinuity*(E: TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face): Standard_Boolean {.
    importcpp: "BRep_Tool::HasContinuity(@)", header: "BRep_Tool.hxx".}
proc Continuity*(E: TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face): GeomAbs_Shape {.
    importcpp: "BRep_Tool::Continuity(@)", header: "BRep_Tool.hxx".}
proc HasContinuity*(E: TopoDS_Edge; S1: handle[Geom_Surface];
                   S2: handle[Geom_Surface]; L1: TopLoc_Location;
                   L2: TopLoc_Location): Standard_Boolean {.
    importcpp: "BRep_Tool::HasContinuity(@)", header: "BRep_Tool.hxx".}
proc Continuity*(E: TopoDS_Edge; S1: handle[Geom_Surface]; S2: handle[Geom_Surface];
                L1: TopLoc_Location; L2: TopLoc_Location): GeomAbs_Shape {.
    importcpp: "BRep_Tool::Continuity(@)", header: "BRep_Tool.hxx".}
proc HasContinuity*(E: TopoDS_Edge): Standard_Boolean {.
    importcpp: "BRep_Tool::HasContinuity(@)", header: "BRep_Tool.hxx".}
proc MaxContinuity*(theEdge: TopoDS_Edge): GeomAbs_Shape {.
    importcpp: "BRep_Tool::MaxContinuity(@)", header: "BRep_Tool.hxx".}
proc Pnt*(V: TopoDS_Vertex): gp_Pnt {.importcpp: "BRep_Tool::Pnt(@)",
                                  header: "BRep_Tool.hxx".}
proc Tolerance*(V: TopoDS_Vertex): Standard_Real {.
    importcpp: "BRep_Tool::Tolerance(@)", header: "BRep_Tool.hxx".}
proc Parameter*(theV: TopoDS_Vertex; theE: TopoDS_Edge; theParam: var Standard_Real): Standard_Boolean {.
    importcpp: "BRep_Tool::Parameter(@)", header: "BRep_Tool.hxx".}
proc Parameter*(V: TopoDS_Vertex; E: TopoDS_Edge): Standard_Real {.
    importcpp: "BRep_Tool::Parameter(@)", header: "BRep_Tool.hxx".}
proc Parameter*(V: TopoDS_Vertex; E: TopoDS_Edge; F: TopoDS_Face): Standard_Real {.
    importcpp: "BRep_Tool::Parameter(@)", header: "BRep_Tool.hxx".}
proc Parameter*(V: TopoDS_Vertex; E: TopoDS_Edge; S: handle[Geom_Surface];
               L: TopLoc_Location): Standard_Real {.
    importcpp: "BRep_Tool::Parameter(@)", header: "BRep_Tool.hxx".}
proc Parameters*(V: TopoDS_Vertex; F: TopoDS_Face): gp_Pnt2d {.
    importcpp: "BRep_Tool::Parameters(@)", header: "BRep_Tool.hxx".}
proc MaxTolerance*(theShape: TopoDS_Shape; theSubShape: TopAbs_ShapeEnum): Standard_Real {.
    importcpp: "BRep_Tool::MaxTolerance(@)", header: "BRep_Tool.hxx".}