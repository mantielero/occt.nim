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
discard "forward decl of StepShape_PolyLoop"
discard "forward decl of StepToTopoDS_Tool"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_TranslatePolyLoop* {.importcpp: "StepToTopoDS_TranslatePolyLoop", header: "StepToTopoDS_TranslatePolyLoop.hxx",
                                   bycopy.} = object of StepToTopoDS_Root


proc constructStepToTopoDS_TranslatePolyLoop*(): StepToTopoDS_TranslatePolyLoop {.
    constructor, importcpp: "StepToTopoDS_TranslatePolyLoop(@)",
    header: "StepToTopoDS_TranslatePolyLoop.hxx".}
proc constructStepToTopoDS_TranslatePolyLoop*(pl: Handle[StepShapePolyLoop];
    t: var StepToTopoDS_Tool; s: Handle[GeomSurface]; f: TopoDS_Face): StepToTopoDS_TranslatePolyLoop {.
    constructor, importcpp: "StepToTopoDS_TranslatePolyLoop(@)",
    header: "StepToTopoDS_TranslatePolyLoop.hxx".}
proc init*(this: var StepToTopoDS_TranslatePolyLoop; pl: Handle[StepShapePolyLoop];
          t: var StepToTopoDS_Tool; s: Handle[GeomSurface]; f: TopoDS_Face) {.
    importcpp: "Init", header: "StepToTopoDS_TranslatePolyLoop.hxx".}
proc value*(this: StepToTopoDS_TranslatePolyLoop): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslatePolyLoop.hxx".}
proc error*(this: StepToTopoDS_TranslatePolyLoop): StepToTopoDS_TranslatePolyLoopError {.
    noSideEffect, importcpp: "Error", header: "StepToTopoDS_TranslatePolyLoop.hxx".}

























