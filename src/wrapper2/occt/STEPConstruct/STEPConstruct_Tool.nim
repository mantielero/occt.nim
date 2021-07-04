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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

discard "forward decl of XSControl_WorkSession"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Interface_HGraph"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Graph"
type
  STEPConstruct_Tool* {.importcpp: "STEPConstruct_Tool",
                       header: "STEPConstruct_Tool.hxx", bycopy.} = object ## ! Creates an empty tool
                                                                      ## ! Load
                                                                      ## worksession; returns True if succeeded
                                                                      ## ! Returns False if either
                                                                      ## FinderProcess of
                                                                      ## TransientProcess
                                                                      ## ! cannot be obtained or are Null


proc constructSTEPConstruct_Tool*(): STEPConstruct_Tool {.constructor,
    importcpp: "STEPConstruct_Tool(@)", header: "STEPConstruct_Tool.hxx".}
proc constructSTEPConstruct_Tool*(WS: handle[XSControl_WorkSession]): STEPConstruct_Tool {.
    constructor, importcpp: "STEPConstruct_Tool(@)",
    header: "STEPConstruct_Tool.hxx".}
proc WS*(this: STEPConstruct_Tool): handle[XSControl_WorkSession] {.noSideEffect,
    importcpp: "WS", header: "STEPConstruct_Tool.hxx".}
proc Model*(this: STEPConstruct_Tool): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "STEPConstruct_Tool.hxx".}
proc Graph*(this: STEPConstruct_Tool; recompute: Standard_Boolean = Standard_False): Interface_Graph {.
    noSideEffect, importcpp: "Graph", header: "STEPConstruct_Tool.hxx".}
proc TransientProcess*(this: STEPConstruct_Tool): handle[Transfer_TransientProcess] {.
    noSideEffect, importcpp: "TransientProcess", header: "STEPConstruct_Tool.hxx".}
proc FinderProcess*(this: STEPConstruct_Tool): handle[Transfer_FinderProcess] {.
    noSideEffect, importcpp: "FinderProcess", header: "STEPConstruct_Tool.hxx".}