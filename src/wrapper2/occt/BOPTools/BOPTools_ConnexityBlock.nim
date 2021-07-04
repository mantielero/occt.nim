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

import
  ../NCollection/NCollection_BaseAllocator, ../TopTools/TopTools_ListOfShape

## =======================================================================
## class : ConnexityBlock
## purpose  :
## =======================================================================

type
  BOPTools_ConnexityBlock* {.importcpp: "BOPTools_ConnexityBlock",
                            header: "BOPTools_ConnexityBlock.hxx", bycopy.} = object


proc constructBOPTools_ConnexityBlock*(): BOPTools_ConnexityBlock {.constructor,
    importcpp: "BOPTools_ConnexityBlock(@)", header: "BOPTools_ConnexityBlock.hxx".}
proc constructBOPTools_ConnexityBlock*(theAllocator: handle[
    NCollection_BaseAllocator]): BOPTools_ConnexityBlock {.constructor,
    importcpp: "BOPTools_ConnexityBlock(@)", header: "BOPTools_ConnexityBlock.hxx".}
proc Shapes*(this: BOPTools_ConnexityBlock): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Shapes", header: "BOPTools_ConnexityBlock.hxx".}
proc ChangeShapes*(this: var BOPTools_ConnexityBlock): var TopTools_ListOfShape {.
    importcpp: "ChangeShapes", header: "BOPTools_ConnexityBlock.hxx".}
proc SetRegular*(this: var BOPTools_ConnexityBlock; theFlag: Standard_Boolean) {.
    importcpp: "SetRegular", header: "BOPTools_ConnexityBlock.hxx".}
proc IsRegular*(this: BOPTools_ConnexityBlock): Standard_Boolean {.noSideEffect,
    importcpp: "IsRegular", header: "BOPTools_ConnexityBlock.hxx".}
proc Loops*(this: BOPTools_ConnexityBlock): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Loops", header: "BOPTools_ConnexityBlock.hxx".}
proc ChangeLoops*(this: var BOPTools_ConnexityBlock): var TopTools_ListOfShape {.
    importcpp: "ChangeLoops", header: "BOPTools_ConnexityBlock.hxx".}