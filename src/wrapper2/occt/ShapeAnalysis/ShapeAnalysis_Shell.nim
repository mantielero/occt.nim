##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Compound"
type
  ShapeAnalysisShell* {.importcpp: "ShapeAnalysis_Shell",
                       header: "ShapeAnalysis_Shell.hxx", bycopy.} = object ## ! Empty
                                                                       ## constructor


proc constructShapeAnalysisShell*(): ShapeAnalysisShell {.constructor,
    importcpp: "ShapeAnalysis_Shell(@)", header: "ShapeAnalysis_Shell.hxx".}
proc clear*(this: var ShapeAnalysisShell) {.importcpp: "Clear",
                                        header: "ShapeAnalysis_Shell.hxx".}
proc loadShells*(this: var ShapeAnalysisShell; shape: TopoDS_Shape) {.
    importcpp: "LoadShells", header: "ShapeAnalysis_Shell.hxx".}
proc checkOrientedShells*(this: var ShapeAnalysisShell; shape: TopoDS_Shape;
                         alsofree: StandardBoolean = standardFalse;
                         checkinternaledges: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "CheckOrientedShells", header: "ShapeAnalysis_Shell.hxx".}
proc isLoaded*(this: ShapeAnalysisShell; shape: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsLoaded", header: "ShapeAnalysis_Shell.hxx".}
proc nbLoaded*(this: ShapeAnalysisShell): StandardInteger {.noSideEffect,
    importcpp: "NbLoaded", header: "ShapeAnalysis_Shell.hxx".}
proc loaded*(this: ShapeAnalysisShell; num: StandardInteger): TopoDS_Shape {.
    noSideEffect, importcpp: "Loaded", header: "ShapeAnalysis_Shell.hxx".}
proc hasBadEdges*(this: ShapeAnalysisShell): StandardBoolean {.noSideEffect,
    importcpp: "HasBadEdges", header: "ShapeAnalysis_Shell.hxx".}
proc badEdges*(this: ShapeAnalysisShell): TopoDS_Compound {.noSideEffect,
    importcpp: "BadEdges", header: "ShapeAnalysis_Shell.hxx".}
proc hasFreeEdges*(this: ShapeAnalysisShell): StandardBoolean {.noSideEffect,
    importcpp: "HasFreeEdges", header: "ShapeAnalysis_Shell.hxx".}
proc freeEdges*(this: ShapeAnalysisShell): TopoDS_Compound {.noSideEffect,
    importcpp: "FreeEdges", header: "ShapeAnalysis_Shell.hxx".}
proc hasConnectedEdges*(this: ShapeAnalysisShell): StandardBoolean {.noSideEffect,
    importcpp: "HasConnectedEdges", header: "ShapeAnalysis_Shell.hxx".}

