##  Created by: Peter KURNEV
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

## =======================================================================
## class : ConnexityBlock
## purpose  :
## =======================================================================

type
  BOPToolsConnexityBlock* {.importcpp: "BOPTools_ConnexityBlock",
                           header: "BOPTools_ConnexityBlock.hxx", bycopy.} = object


proc constructBOPToolsConnexityBlock*(): BOPToolsConnexityBlock {.constructor,
    importcpp: "BOPTools_ConnexityBlock(@)", header: "BOPTools_ConnexityBlock.hxx".}
proc constructBOPToolsConnexityBlock*(theAllocator: Handle[
    NCollectionBaseAllocator]): BOPToolsConnexityBlock {.constructor,
    importcpp: "BOPTools_ConnexityBlock(@)", header: "BOPTools_ConnexityBlock.hxx".}
proc shapes*(this: BOPToolsConnexityBlock): TopToolsListOfShape {.noSideEffect,
    importcpp: "Shapes", header: "BOPTools_ConnexityBlock.hxx".}
proc changeShapes*(this: var BOPToolsConnexityBlock): var TopToolsListOfShape {.
    importcpp: "ChangeShapes", header: "BOPTools_ConnexityBlock.hxx".}
proc setRegular*(this: var BOPToolsConnexityBlock; theFlag: bool) {.
    importcpp: "SetRegular", header: "BOPTools_ConnexityBlock.hxx".}
proc isRegular*(this: BOPToolsConnexityBlock): bool {.noSideEffect,
    importcpp: "IsRegular", header: "BOPTools_ConnexityBlock.hxx".}
proc loops*(this: BOPToolsConnexityBlock): TopToolsListOfShape {.noSideEffect,
    importcpp: "Loops", header: "BOPTools_ConnexityBlock.hxx".}
proc changeLoops*(this: var BOPToolsConnexityBlock): var TopToolsListOfShape {.
    importcpp: "ChangeLoops", header: "BOPTools_ConnexityBlock.hxx".}

























