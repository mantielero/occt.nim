import brepoffset_types
import ../topods/topods_types
import ../standard/standard_types
import ../geom/geom_types
import ../geom2d/geom2d_types
import ../toploc/toploc_types
import ../gp/gp_types
import ../geomabs/geomabs_types
##  Created on: 2016-10-14
##  Created by: Alexander MALYSHEV
##  Copyright (c) 1999-2016 OPEN CASCADE SAS
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

discard "forward decl of BRepOffset_SimpleOffset"

proc newBRepOffset_SimpleOffset*(theInputShape: TopoDS_Shape;
                                theOffsetValue: cfloat; theTolerance: cfloat): BRepOffset_SimpleOffset {.
    cdecl, constructor, importcpp: "BRepOffset_SimpleOffset(@)".}
proc NewSurface*(this: var BRepOffset_SimpleOffset; F: TopoDS_Face;
                S: var Handle[Geom_Surface]; L: var TopLoc_Location; Tol: var cfloat;
                RevWires: var bool; RevFace: var bool): bool {.cdecl,
    importcpp: "NewSurface".}
proc NewCurve*(this: var BRepOffset_SimpleOffset; E: TopoDS_Edge;
              C: var Handle[Geom_Curve]; L: var TopLoc_Location; Tol: var cfloat): bool {.
    cdecl, importcpp: "NewCurve".}
proc NewPoint*(this: var BRepOffset_SimpleOffset; V: TopoDS_Vertex; P: var gp_Pnt;
              Tol: var cfloat): bool {.cdecl, importcpp: "NewPoint".}
proc NewCurve2d*(this: var BRepOffset_SimpleOffset; E: TopoDS_Edge; F: TopoDS_Face;
                NewE: TopoDS_Edge; NewF: TopoDS_Face; C: var Handle[Geom2d_Curve];
                Tol: var cfloat): bool {.cdecl, importcpp: "NewCurve2d",
                                     .}
proc NewParameter*(this: var BRepOffset_SimpleOffset; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var cfloat; Tol: var cfloat): bool {.cdecl,
    importcpp: "NewParameter".}
proc Continuity*(this: var BRepOffset_SimpleOffset; E: TopoDS_Edge; F1: TopoDS_Face;
                F2: TopoDS_Face; NewE: TopoDS_Edge; NewF1: TopoDS_Face;
                NewF2: TopoDS_Face): GeomAbs_Shape {.cdecl, importcpp: "Continuity",
    .}