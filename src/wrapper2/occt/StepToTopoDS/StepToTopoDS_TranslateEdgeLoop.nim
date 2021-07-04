##  Created on: 1995-03-29
##  Created by: Frederic MAUPAS
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, StepToTopoDS_TranslateEdgeLoopError,
  ../TopoDS/TopoDS_Shape, StepToTopoDS_Root, ../Standard/Standard_Boolean

discard "forward decl of StdFail_NotDone"
discard "forward decl of StepShape_FaceBound"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of StepGeom_Surface"
discard "forward decl of StepToTopoDS_Tool"
discard "forward decl of StepToTopoDS_NMTool"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_TranslateEdgeLoop* {.importcpp: "StepToTopoDS_TranslateEdgeLoop", header: "StepToTopoDS_TranslateEdgeLoop.hxx",
                                   bycopy.} = object of StepToTopoDS_Root


proc constructStepToTopoDS_TranslateEdgeLoop*(): StepToTopoDS_TranslateEdgeLoop {.
    constructor, importcpp: "StepToTopoDS_TranslateEdgeLoop(@)",
    header: "StepToTopoDS_TranslateEdgeLoop.hxx".}
proc constructStepToTopoDS_TranslateEdgeLoop*(FB: handle[StepShape_FaceBound];
    F: TopoDS_Face; S: handle[Geom_Surface]; SS: handle[StepGeom_Surface];
    ss: Standard_Boolean; T: var StepToTopoDS_Tool; NMTool: var StepToTopoDS_NMTool): StepToTopoDS_TranslateEdgeLoop {.
    constructor, importcpp: "StepToTopoDS_TranslateEdgeLoop(@)",
    header: "StepToTopoDS_TranslateEdgeLoop.hxx".}
proc Init*(this: var StepToTopoDS_TranslateEdgeLoop;
          FB: handle[StepShape_FaceBound]; F: TopoDS_Face; S: handle[Geom_Surface];
          SS: handle[StepGeom_Surface]; ss: Standard_Boolean;
          T: var StepToTopoDS_Tool; NMTool: var StepToTopoDS_NMTool) {.
    importcpp: "Init", header: "StepToTopoDS_TranslateEdgeLoop.hxx".}
proc Value*(this: StepToTopoDS_TranslateEdgeLoop): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslateEdgeLoop.hxx".}
proc Error*(this: StepToTopoDS_TranslateEdgeLoop): StepToTopoDS_TranslateEdgeLoopError {.
    noSideEffect, importcpp: "Error", header: "StepToTopoDS_TranslateEdgeLoop.hxx".}