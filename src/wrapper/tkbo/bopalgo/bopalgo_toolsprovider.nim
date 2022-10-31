import ../../tkernel/standard/standard_types
import bopalgo_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types



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

## ! Auxiliary class providing API to operate tool arguments.



proc newBOPAlgoToolsProvider*(): BOPAlgoToolsProvider {.cdecl, constructor,
    importcpp: "BOPAlgo_ToolsProvider(@)", header: "BOPAlgo_ToolsProvider.hxx".}
proc newBOPAlgoToolsProvider*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoToolsProvider {.
    cdecl, constructor, importcpp: "BOPAlgo_ToolsProvider(@)", header: "BOPAlgo_ToolsProvider.hxx".}
proc clear*(this: var BOPAlgoToolsProvider) {.cdecl, importcpp: "Clear", header: "BOPAlgo_ToolsProvider.hxx".}
proc addTool*(this: var BOPAlgoToolsProvider; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "AddTool", header: "BOPAlgo_ToolsProvider.hxx".}
proc setTools*(this: var BOPAlgoToolsProvider; theShapes: TopToolsListOfShape) {.
    cdecl, importcpp: "SetTools", header: "BOPAlgo_ToolsProvider.hxx".}
proc tools*(this: BOPAlgoToolsProvider): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Tools", header: "BOPAlgo_ToolsProvider.hxx".}

