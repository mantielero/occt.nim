import breptools_types
import ../tkbrep/topods/topods_types
import ../tkernel/standard/standard_types
import ../tkg3d/geom/geom_types
import ../tkg2d/geom2d/geom2d_types
import ../tkmath/geomabs/geomabs_types

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
discard "forward decl of BRepTools_TrsfModification"

proc newBRepTools_TrsfModification*(T: gp_Trsf): BRepTools_TrsfModification {.cdecl,
    constructor, importcpp: "BRepTools_TrsfModification(@)",
    header: "BRepTools_TrsfModification.hxx".}
proc Trsf*(this: var BRepTools_TrsfModification): var gp_Trsf {.cdecl,
    importcpp: "Trsf", header: "BRepTools_TrsfModification.hxx".}
proc NewSurface*(this: var BRepTools_TrsfModification; F: TopoDS_Face;
                S: var Handle[Geom_Surface]; L: var TopLoc_Location; Tol: var cfloat;
                RevWires: var bool; RevFace: var bool): bool {.cdecl,
    importcpp: "NewSurface", header: "BRepTools_TrsfModification.hxx".}
proc NewCurve*(this: var BRepTools_TrsfModification; E: TopoDS_Edge;
              C: var Handle[Geom_Curve]; L: var TopLoc_Location; Tol: var cfloat): bool {.
    cdecl, importcpp: "NewCurve", header: "BRepTools_TrsfModification.hxx".}
proc NewPoint*(this: var BRepTools_TrsfModification; V: TopoDS_Vertex; P: var gp_Pnt;
              Tol: var cfloat): bool {.cdecl, importcpp: "NewPoint",
                                   header: "BRepTools_TrsfModification.hxx".}
proc NewCurve2d*(this: var BRepTools_TrsfModification; E: TopoDS_Edge; F: TopoDS_Face;
                NewE: TopoDS_Edge; NewF: TopoDS_Face; C: var Handle[Geom2d_Curve];
                Tol: var cfloat): bool {.cdecl, importcpp: "NewCurve2d",
                                     header: "BRepTools_TrsfModification.hxx".}
proc NewParameter*(this: var BRepTools_TrsfModification; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var cfloat; Tol: var cfloat): bool {.cdecl,
    importcpp: "NewParameter", header: "BRepTools_TrsfModification.hxx".}
proc Continuity*(this: var BRepTools_TrsfModification; E: TopoDS_Edge;
                F1: TopoDS_Face; F2: TopoDS_Face; NewE: TopoDS_Edge;
                NewF1: TopoDS_Face; NewF2: TopoDS_Face): GeomAbs_Shape {.cdecl,
    importcpp: "Continuity", header: "BRepTools_TrsfModification.hxx".}