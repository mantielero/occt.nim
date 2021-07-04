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
  ../Standard/Standard_Handle, StepToTopoDS_TranslateVertexError,
  ../TopoDS/TopoDS_Shape, StepToTopoDS_Root

discard "forward decl of StdFail_NotDone"
discard "forward decl of StepShape_Vertex"
discard "forward decl of StepToTopoDS_Tool"
discard "forward decl of StepToTopoDS_NMTool"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_TranslateVertex* {.importcpp: "StepToTopoDS_TranslateVertex",
                                 header: "StepToTopoDS_TranslateVertex.hxx",
                                 bycopy.} = object of StepToTopoDS_Root


proc constructStepToTopoDS_TranslateVertex*(): StepToTopoDS_TranslateVertex {.
    constructor, importcpp: "StepToTopoDS_TranslateVertex(@)",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc constructStepToTopoDS_TranslateVertex*(V: handle[StepShape_Vertex];
    T: var StepToTopoDS_Tool; NMTool: var StepToTopoDS_NMTool): StepToTopoDS_TranslateVertex {.
    constructor, importcpp: "StepToTopoDS_TranslateVertex(@)",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc Init*(this: var StepToTopoDS_TranslateVertex; V: handle[StepShape_Vertex];
          T: var StepToTopoDS_Tool; NMTool: var StepToTopoDS_NMTool) {.
    importcpp: "Init", header: "StepToTopoDS_TranslateVertex.hxx".}
proc Value*(this: StepToTopoDS_TranslateVertex): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslateVertex.hxx".}
proc Error*(this: StepToTopoDS_TranslateVertex): StepToTopoDS_TranslateVertexError {.
    noSideEffect, importcpp: "Error", header: "StepToTopoDS_TranslateVertex.hxx".}