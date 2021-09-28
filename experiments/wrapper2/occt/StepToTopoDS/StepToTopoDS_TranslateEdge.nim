##  Created on: 1994-12-16
##  Created by: Frederic MAUPAS
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of StepShape_Edge"
discard "forward decl of StepToTopoDS_Tool"
discard "forward decl of StepToTopoDS_NMTool"
discard "forward decl of StepGeom_Curve"
discard "forward decl of StepShape_EdgeCurve"
discard "forward decl of StepShape_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of Geom2d_Curve"
discard "forward decl of StepGeom_Pcurve"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_TranslateEdge* {.importcpp: "StepToTopoDS_TranslateEdge",
                               header: "StepToTopoDS_TranslateEdge.hxx", bycopy.} = object of StepToTopoDS_Root


proc constructStepToTopoDS_TranslateEdge*(): StepToTopoDS_TranslateEdge {.
    constructor, importcpp: "StepToTopoDS_TranslateEdge(@)",
    header: "StepToTopoDS_TranslateEdge.hxx".}
proc constructStepToTopoDS_TranslateEdge*(e: Handle[StepShapeEdge];
    t: var StepToTopoDS_Tool; nMTool: var StepToTopoDS_NMTool): StepToTopoDS_TranslateEdge {.
    constructor, importcpp: "StepToTopoDS_TranslateEdge(@)",
    header: "StepToTopoDS_TranslateEdge.hxx".}
proc init*(this: var StepToTopoDS_TranslateEdge; e: Handle[StepShapeEdge];
          t: var StepToTopoDS_Tool; nMTool: var StepToTopoDS_NMTool) {.
    importcpp: "Init", header: "StepToTopoDS_TranslateEdge.hxx".}
proc makeFromCurve3D*(this: var StepToTopoDS_TranslateEdge;
                     c3d: Handle[StepGeomCurve]; ec: Handle[StepShapeEdgeCurve];
                     vend: Handle[StepShapeVertex]; preci: cfloat;
                     e: var TopoDS_Edge; v1: var TopoDS_Vertex; v2: var TopoDS_Vertex;
                     t: var StepToTopoDS_Tool) {.importcpp: "MakeFromCurve3D",
    header: "StepToTopoDS_TranslateEdge.hxx".}
proc makePCurve*(this: StepToTopoDS_TranslateEdge; pcu: Handle[StepGeomPcurve];
                convSurf: Handle[GeomSurface]): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "MakePCurve", header: "StepToTopoDS_TranslateEdge.hxx".}
proc value*(this: StepToTopoDS_TranslateEdge): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslateEdge.hxx".}
proc error*(this: StepToTopoDS_TranslateEdge): StepToTopoDS_TranslateEdgeError {.
    noSideEffect, importcpp: "Error", header: "StepToTopoDS_TranslateEdge.hxx".}

























