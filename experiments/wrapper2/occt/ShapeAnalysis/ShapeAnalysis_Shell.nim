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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_IndexedMapOfShape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Compound"
type
  ShapeAnalysis_Shell* {.importcpp: "ShapeAnalysis_Shell",
                        header: "ShapeAnalysis_Shell.hxx", bycopy.} = object ## ! Empty
                                                                        ## constructor


proc constructShapeAnalysis_Shell*(): ShapeAnalysis_Shell {.constructor,
    importcpp: "ShapeAnalysis_Shell(@)", header: "ShapeAnalysis_Shell.hxx".}
proc Clear*(this: var ShapeAnalysis_Shell) {.importcpp: "Clear",
    header: "ShapeAnalysis_Shell.hxx".}
proc LoadShells*(this: var ShapeAnalysis_Shell; shape: TopoDS_Shape) {.
    importcpp: "LoadShells", header: "ShapeAnalysis_Shell.hxx".}
proc CheckOrientedShells*(this: var ShapeAnalysis_Shell; shape: TopoDS_Shape;
                         alsofree: Standard_Boolean = Standard_False;
                         checkinternaledges: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "CheckOrientedShells", header: "ShapeAnalysis_Shell.hxx".}
proc IsLoaded*(this: ShapeAnalysis_Shell; shape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsLoaded", header: "ShapeAnalysis_Shell.hxx".}
proc NbLoaded*(this: ShapeAnalysis_Shell): Standard_Integer {.noSideEffect,
    importcpp: "NbLoaded", header: "ShapeAnalysis_Shell.hxx".}
proc Loaded*(this: ShapeAnalysis_Shell; num: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Loaded", header: "ShapeAnalysis_Shell.hxx".}
proc HasBadEdges*(this: ShapeAnalysis_Shell): Standard_Boolean {.noSideEffect,
    importcpp: "HasBadEdges", header: "ShapeAnalysis_Shell.hxx".}
proc BadEdges*(this: ShapeAnalysis_Shell): TopoDS_Compound {.noSideEffect,
    importcpp: "BadEdges", header: "ShapeAnalysis_Shell.hxx".}
proc HasFreeEdges*(this: ShapeAnalysis_Shell): Standard_Boolean {.noSideEffect,
    importcpp: "HasFreeEdges", header: "ShapeAnalysis_Shell.hxx".}
proc FreeEdges*(this: ShapeAnalysis_Shell): TopoDS_Compound {.noSideEffect,
    importcpp: "FreeEdges", header: "ShapeAnalysis_Shell.hxx".}
proc HasConnectedEdges*(this: ShapeAnalysis_Shell): Standard_Boolean {.noSideEffect,
    importcpp: "HasConnectedEdges", header: "ShapeAnalysis_Shell.hxx".}