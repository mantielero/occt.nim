import breptools_types

import ../tkbrep/topods/topods_types
import ../tkernel/standard/standard_types
import ../tkg3d/geom/geom_types
import ../tkg2d/geom2d/geom2d_types
import ../tkmath/geomabs/geomabs_types

##  Created on: 1996-12-30
##  Created by: Stagiaire Mary FABIEN
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of BRepTools_GTrsfModification"

proc newBRepTools_GTrsfModification*(T: gp_GTrsf): BRepTools_GTrsfModification {.
    cdecl, constructor, importcpp: "BRepTools_GTrsfModification(@)",
    header: "BRepTools_GTrsfModification.hxx".}
proc GTrsf*(this: var BRepTools_GTrsfModification): var gp_GTrsf {.cdecl,
    importcpp: "GTrsf", header: "BRepTools_GTrsfModification.hxx".}
proc NewSurface*(this: var BRepTools_GTrsfModification; F: TopoDS_Face;
                S: var Handle[Geom_Surface]; L: var TopLoc_Location; Tol: var cfloat;
                RevWires: var bool; RevFace: var bool): bool {.cdecl,
    importcpp: "NewSurface", header: "BRepTools_GTrsfModification.hxx".}
proc NewCurve*(this: var BRepTools_GTrsfModification; E: TopoDS_Edge;
              C: var Handle[Geom_Curve]; L: var TopLoc_Location; Tol: var cfloat): bool {.
    cdecl, importcpp: "NewCurve", header: "BRepTools_GTrsfModification.hxx".}
proc NewPoint*(this: var BRepTools_GTrsfModification; V: TopoDS_Vertex; P: var gp_Pnt;
              Tol: var cfloat): bool {.cdecl, importcpp: "NewPoint",
                                   header: "BRepTools_GTrsfModification.hxx".}
proc NewCurve2d*(this: var BRepTools_GTrsfModification; E: TopoDS_Edge;
                F: TopoDS_Face; NewE: TopoDS_Edge; NewF: TopoDS_Face;
                C: var Handle[Geom2d_Curve]; Tol: var cfloat): bool {.cdecl,
    importcpp: "NewCurve2d", header: "BRepTools_GTrsfModification.hxx".}
proc NewParameter*(this: var BRepTools_GTrsfModification; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var cfloat; Tol: var cfloat): bool {.cdecl,
    importcpp: "NewParameter", header: "BRepTools_GTrsfModification.hxx".}
proc Continuity*(this: var BRepTools_GTrsfModification; E: TopoDS_Edge;
                F1: TopoDS_Face; F2: TopoDS_Face; NewE: TopoDS_Edge;
                NewF1: TopoDS_Face; NewF2: TopoDS_Face): GeomAbs_Shape {.cdecl,
    importcpp: "Continuity", header: "BRepTools_GTrsfModification.hxx".}