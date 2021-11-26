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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Sweep_NumShape"
type
  SweepNumShapeTool* {.importcpp: "Sweep_NumShapeTool",
                      header: "Sweep_NumShapeTool.hxx", bycopy.} = object ## ! Create a new
                                                                     ## NumShapeTool with <aShape>.  The Tool
                                                                     ## ! must prepare an indexation  for  all the subshapes
                                                                     ## ! of this shape.


proc constructSweepNumShapeTool*(aShape: SweepNumShape): SweepNumShapeTool {.
    constructor, importcpp: "Sweep_NumShapeTool(@)",
    header: "Sweep_NumShapeTool.hxx".}
proc nbShapes*(this: SweepNumShapeTool): cint {.noSideEffect, importcpp: "NbShapes",
    header: "Sweep_NumShapeTool.hxx".}
proc index*(this: SweepNumShapeTool; aShape: SweepNumShape): cint {.noSideEffect,
    importcpp: "Index", header: "Sweep_NumShapeTool.hxx".}
proc shape*(this: SweepNumShapeTool; anIndex: cint): SweepNumShape {.noSideEffect,
    importcpp: "Shape", header: "Sweep_NumShapeTool.hxx".}
proc `type`*(this: SweepNumShapeTool; aShape: SweepNumShape): TopAbsShapeEnum {.
    noSideEffect, importcpp: "Type", header: "Sweep_NumShapeTool.hxx".}
proc orientation*(this: SweepNumShapeTool; aShape: SweepNumShape): TopAbsOrientation {.
    noSideEffect, importcpp: "Orientation", header: "Sweep_NumShapeTool.hxx".}
proc hasFirstVertex*(this: SweepNumShapeTool): bool {.noSideEffect,
    importcpp: "HasFirstVertex", header: "Sweep_NumShapeTool.hxx".}
proc hasLastVertex*(this: SweepNumShapeTool): bool {.noSideEffect,
    importcpp: "HasLastVertex", header: "Sweep_NumShapeTool.hxx".}
proc firstVertex*(this: SweepNumShapeTool): SweepNumShape {.noSideEffect,
    importcpp: "FirstVertex", header: "Sweep_NumShapeTool.hxx".}
proc lastVertex*(this: SweepNumShapeTool): SweepNumShape {.noSideEffect,
    importcpp: "LastVertex", header: "Sweep_NumShapeTool.hxx".}

























