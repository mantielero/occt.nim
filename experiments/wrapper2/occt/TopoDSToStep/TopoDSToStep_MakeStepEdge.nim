##  Created on: 1994-11-30
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

discard "forward decl of StepShape_TopologicalRepresentationItem"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of Transfer_FinderProcess"
type
  TopoDSToStepMakeStepEdge* {.importcpp: "TopoDSToStep_MakeStepEdge",
                             header: "TopoDSToStep_MakeStepEdge.hxx", bycopy.} = object of TopoDSToStepRoot


proc constructTopoDSToStepMakeStepEdge*(): TopoDSToStepMakeStepEdge {.constructor,
    importcpp: "TopoDSToStep_MakeStepEdge(@)",
    header: "TopoDSToStep_MakeStepEdge.hxx".}
proc constructTopoDSToStepMakeStepEdge*(e: TopoDS_Edge; t: var TopoDSToStepTool;
                                       fp: Handle[TransferFinderProcess]): TopoDSToStepMakeStepEdge {.
    constructor, importcpp: "TopoDSToStep_MakeStepEdge(@)",
    header: "TopoDSToStep_MakeStepEdge.hxx".}
proc init*(this: var TopoDSToStepMakeStepEdge; e: TopoDS_Edge;
          t: var TopoDSToStepTool; fp: Handle[TransferFinderProcess]) {.
    importcpp: "Init", header: "TopoDSToStep_MakeStepEdge.hxx".}
proc value*(this: TopoDSToStepMakeStepEdge): Handle[
    StepShapeTopologicalRepresentationItem] {.noSideEffect, importcpp: "Value",
    header: "TopoDSToStep_MakeStepEdge.hxx".}
proc error*(this: TopoDSToStepMakeStepEdge): TopoDSToStepMakeEdgeError {.
    noSideEffect, importcpp: "Error", header: "TopoDSToStep_MakeStepEdge.hxx".}
