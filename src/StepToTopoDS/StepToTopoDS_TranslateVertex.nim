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
discard "forward decl of StepShape_Vertex"
discard "forward decl of StepToTopoDS_Tool"
discard "forward decl of StepToTopoDS_NMTool"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_TranslateVertex* {.importcpp: "StepToTopoDS_TranslateVertex",
                                 header: "StepToTopoDS_TranslateVertex.hxx",
                                 bycopy.} = object of StepToTopoDS_Root


proc `new`*(this: var StepToTopoDS_TranslateVertex; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_TranslateVertex::operator new",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc `delete`*(this: var StepToTopoDS_TranslateVertex; theAddress: pointer) {.
    importcpp: "StepToTopoDS_TranslateVertex::operator delete",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc `new[]`*(this: var StepToTopoDS_TranslateVertex; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_TranslateVertex::operator new[]",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc `delete[]`*(this: var StepToTopoDS_TranslateVertex; theAddress: pointer) {.
    importcpp: "StepToTopoDS_TranslateVertex::operator delete[]",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc `new`*(this: var StepToTopoDS_TranslateVertex; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepToTopoDS_TranslateVertex::operator new",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc `delete`*(this: var StepToTopoDS_TranslateVertex; a2: pointer; a3: pointer) {.
    importcpp: "StepToTopoDS_TranslateVertex::operator delete",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc constructStepToTopoDS_TranslateVertex*(): StepToTopoDS_TranslateVertex {.
    constructor, importcpp: "StepToTopoDS_TranslateVertex(@)",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc constructStepToTopoDS_TranslateVertex*(v: Handle[StepShapeVertex];
    t: var StepToTopoDS_Tool; nMTool: var StepToTopoDS_NMTool): StepToTopoDS_TranslateVertex {.
    constructor, importcpp: "StepToTopoDS_TranslateVertex(@)",
    header: "StepToTopoDS_TranslateVertex.hxx".}
proc init*(this: var StepToTopoDS_TranslateVertex; v: Handle[StepShapeVertex];
          t: var StepToTopoDS_Tool; nMTool: var StepToTopoDS_NMTool) {.
    importcpp: "Init", header: "StepToTopoDS_TranslateVertex.hxx".}
proc value*(this: StepToTopoDS_TranslateVertex): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslateVertex.hxx".}
proc error*(this: StepToTopoDS_TranslateVertex): StepToTopoDS_TranslateVertexError {.
    noSideEffect, importcpp: "Error", header: "StepToTopoDS_TranslateVertex.hxx".}