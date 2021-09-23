##  Created on: 1993-06-02
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, Sweep_NumShape, ../Standard/Standard_Integer,
  ../TopAbs/TopAbs_ShapeEnum, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Sweep_NumShape"
type
  Sweep_NumShapeTool* {.importcpp: "Sweep_NumShapeTool",
                       header: "Sweep_NumShapeTool.hxx", bycopy.} = object ## ! Create a new
                                                                      ## NumShapeTool with <aShape>.  The Tool
                                                                      ## ! must prepare an indexation  for  all the subshapes
                                                                      ## ! of this shape.


proc constructSweep_NumShapeTool*(aShape: Sweep_NumShape): Sweep_NumShapeTool {.
    constructor, importcpp: "Sweep_NumShapeTool(@)",
    header: "Sweep_NumShapeTool.hxx".}
proc NbShapes*(this: Sweep_NumShapeTool): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "Sweep_NumShapeTool.hxx".}
proc Index*(this: Sweep_NumShapeTool; aShape: Sweep_NumShape): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "Sweep_NumShapeTool.hxx".}
proc Shape*(this: Sweep_NumShapeTool; anIndex: Standard_Integer): Sweep_NumShape {.
    noSideEffect, importcpp: "Shape", header: "Sweep_NumShapeTool.hxx".}
proc Type*(this: Sweep_NumShapeTool; aShape: Sweep_NumShape): TopAbs_ShapeEnum {.
    noSideEffect, importcpp: "Type", header: "Sweep_NumShapeTool.hxx".}
proc Orientation*(this: Sweep_NumShapeTool; aShape: Sweep_NumShape): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation", header: "Sweep_NumShapeTool.hxx".}
proc HasFirstVertex*(this: Sweep_NumShapeTool): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstVertex", header: "Sweep_NumShapeTool.hxx".}
proc HasLastVertex*(this: Sweep_NumShapeTool): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastVertex", header: "Sweep_NumShapeTool.hxx".}
proc FirstVertex*(this: Sweep_NumShapeTool): Sweep_NumShape {.noSideEffect,
    importcpp: "FirstVertex", header: "Sweep_NumShapeTool.hxx".}
proc LastVertex*(this: Sweep_NumShapeTool): Sweep_NumShape {.noSideEffect,
    importcpp: "LastVertex", header: "Sweep_NumShapeTool.hxx".}