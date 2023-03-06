import breptools_types
import ../topods/topods_types
import ../standard/standard_types
import ../geom/geom_types
import ../poly/poly_types
import ../geom2d/geom2d_types
import ../geomabs/geomabs_types
##  Created on: 1994-08-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of BRepTools_Modification"


proc NewSurface*(this: var BRepTools_Modification; F: TopoDS_Face;
                S: var Handle[Geom_Surface]; L: var TopLoc_Location; Tol: var cfloat;
                RevWires: var bool; RevFace: var bool): bool {.cdecl,
    importcpp: "NewSurface", header: "BRepTools_Modification.hxx".}
proc NewTriangulation*(this: var BRepTools_Modification; F: TopoDS_Face;
                      T: var Handle[Poly_Triangulation]): bool {.cdecl,
    importcpp: "NewTriangulation", header: "BRepTools_Modification.hxx".}
proc NewCurve*(this: var BRepTools_Modification; E: TopoDS_Edge;
              C: var Handle[Geom_Curve]; L: var TopLoc_Location; Tol: var cfloat): bool {.
    cdecl, importcpp: "NewCurve", header: "BRepTools_Modification.hxx".}
proc NewPolygon*(this: var BRepTools_Modification; E: TopoDS_Edge;
                P: var Handle[Poly_Polygon3D]): bool {.cdecl,
    importcpp: "NewPolygon", header: "BRepTools_Modification.hxx".}
proc NewPolygonOnTriangulation*(this: var BRepTools_Modification; E: TopoDS_Edge;
                               F: TopoDS_Face;
                               P: var Handle[Poly_PolygonOnTriangulation]): bool {.
    cdecl, importcpp: "NewPolygonOnTriangulation",
    header: "BRepTools_Modification.hxx".}
proc NewPoint*(this: var BRepTools_Modification; V: TopoDS_Vertex; P: var gp_Pnt;
              Tol: var cfloat): bool {.cdecl, importcpp: "NewPoint",
                                   header: "BRepTools_Modification.hxx".}
proc NewCurve2d*(this: var BRepTools_Modification; E: TopoDS_Edge; F: TopoDS_Face;
                NewE: TopoDS_Edge; NewF: TopoDS_Face; C: var Handle[Geom2d_Curve];
                Tol: var cfloat): bool {.cdecl, importcpp: "NewCurve2d",
                                     header: "BRepTools_Modification.hxx".}
proc NewParameter*(this: var BRepTools_Modification; V: TopoDS_Vertex; E: TopoDS_Edge;
                  P: var cfloat; Tol: var cfloat): bool {.cdecl,
    importcpp: "NewParameter", header: "BRepTools_Modification.hxx".}
proc Continuity*(this: var BRepTools_Modification; E: TopoDS_Edge; F1: TopoDS_Face;
                F2: TopoDS_Face; NewE: TopoDS_Edge; NewF1: TopoDS_Face;
                NewF2: TopoDS_Face): GeomAbs_Shape {.cdecl, importcpp: "Continuity",
    header: "BRepTools_Modification.hxx".}