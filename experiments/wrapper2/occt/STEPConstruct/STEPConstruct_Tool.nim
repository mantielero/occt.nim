##  Created on: 2000-09-29
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Interface_HGraph"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Graph"
type
  STEPConstructTool* {.importcpp: "STEPConstruct_Tool",
                      header: "STEPConstruct_Tool.hxx", bycopy.} = object ## ! Creates an empty tool
                                                                     ## ! Load
                                                                     ## worksession; returns True if succeeded
                                                                     ## ! Returns False if either
                                                                     ## FinderProcess of
                                                                     ## TransientProcess
                                                                     ## ! cannot be obtained or are Null


proc constructSTEPConstructTool*(): STEPConstructTool {.constructor,
    importcpp: "STEPConstruct_Tool(@)", header: "STEPConstruct_Tool.hxx".}
proc constructSTEPConstructTool*(ws: Handle[XSControlWorkSession]): STEPConstructTool {.
    constructor, importcpp: "STEPConstruct_Tool(@)",
    header: "STEPConstruct_Tool.hxx".}
proc ws*(this: STEPConstructTool): Handle[XSControlWorkSession] {.noSideEffect,
    importcpp: "WS", header: "STEPConstruct_Tool.hxx".}
proc model*(this: STEPConstructTool): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "STEPConstruct_Tool.hxx".}
proc graph*(this: STEPConstructTool; recompute: bool = false): InterfaceGraph {.
    noSideEffect, importcpp: "Graph", header: "STEPConstruct_Tool.hxx".}
proc transientProcess*(this: STEPConstructTool): Handle[TransferTransientProcess] {.
    noSideEffect, importcpp: "TransientProcess", header: "STEPConstruct_Tool.hxx".}
proc finderProcess*(this: STEPConstructTool): Handle[TransferFinderProcess] {.
    noSideEffect, importcpp: "FinderProcess", header: "STEPConstruct_Tool.hxx".}
