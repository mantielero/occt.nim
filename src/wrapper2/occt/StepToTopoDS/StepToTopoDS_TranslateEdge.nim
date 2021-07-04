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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, StepToTopoDS_TranslateEdgeError,
  ../TopoDS/TopoDS_Shape, StepToTopoDS_Root, ../Standard/Standard_Real

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
proc constructStepToTopoDS_TranslateEdge*(E: handle[StepShape_Edge];
    T: var StepToTopoDS_Tool; NMTool: var StepToTopoDS_NMTool): StepToTopoDS_TranslateEdge {.
    constructor, importcpp: "StepToTopoDS_TranslateEdge(@)",
    header: "StepToTopoDS_TranslateEdge.hxx".}
proc Init*(this: var StepToTopoDS_TranslateEdge; E: handle[StepShape_Edge];
          T: var StepToTopoDS_Tool; NMTool: var StepToTopoDS_NMTool) {.
    importcpp: "Init", header: "StepToTopoDS_TranslateEdge.hxx".}
proc MakeFromCurve3D*(this: var StepToTopoDS_TranslateEdge;
                     C3D: handle[StepGeom_Curve]; EC: handle[StepShape_EdgeCurve];
                     Vend: handle[StepShape_Vertex]; preci: Standard_Real;
                     E: var TopoDS_Edge; V1: var TopoDS_Vertex; V2: var TopoDS_Vertex;
                     T: var StepToTopoDS_Tool) {.importcpp: "MakeFromCurve3D",
    header: "StepToTopoDS_TranslateEdge.hxx".}
proc MakePCurve*(this: StepToTopoDS_TranslateEdge; PCU: handle[StepGeom_Pcurve];
                ConvSurf: handle[Geom_Surface]): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "MakePCurve", header: "StepToTopoDS_TranslateEdge.hxx".}
proc Value*(this: StepToTopoDS_TranslateEdge): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslateEdge.hxx".}
proc Error*(this: StepToTopoDS_TranslateEdge): StepToTopoDS_TranslateEdgeError {.
    noSideEffect, importcpp: "Error", header: "StepToTopoDS_TranslateEdge.hxx".}