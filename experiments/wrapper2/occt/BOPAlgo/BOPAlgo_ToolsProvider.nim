##  Created by: Oleg AGASHIN
##  Copyright (c) 2017 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, BOPAlgo_Builder

## ! Auxiliary class providing API to operate tool arguments.

type
  BOPAlgo_ToolsProvider* {.importcpp: "BOPAlgo_ToolsProvider",
                          header: "BOPAlgo_ToolsProvider.hxx", bycopy.} = object of BOPAlgo_Builder ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructBOPAlgo_ToolsProvider*(): BOPAlgo_ToolsProvider {.constructor,
    importcpp: "BOPAlgo_ToolsProvider(@)", header: "BOPAlgo_ToolsProvider.hxx".}
proc constructBOPAlgo_ToolsProvider*(theAllocator: handle[
    NCollection_BaseAllocator]): BOPAlgo_ToolsProvider {.constructor,
    importcpp: "BOPAlgo_ToolsProvider(@)", header: "BOPAlgo_ToolsProvider.hxx".}
proc Clear*(this: var BOPAlgo_ToolsProvider) {.importcpp: "Clear",
    header: "BOPAlgo_ToolsProvider.hxx".}
proc AddTool*(this: var BOPAlgo_ToolsProvider; theShape: TopoDS_Shape) {.
    importcpp: "AddTool", header: "BOPAlgo_ToolsProvider.hxx".}
proc SetTools*(this: var BOPAlgo_ToolsProvider; theShapes: TopTools_ListOfShape) {.
    importcpp: "SetTools", header: "BOPAlgo_ToolsProvider.hxx".}
proc Tools*(this: BOPAlgo_ToolsProvider): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Tools", header: "BOPAlgo_ToolsProvider.hxx".}