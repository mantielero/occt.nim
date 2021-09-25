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

discard "forward decl of TopoDS_Shape"
discard "forward decl of BOPAlgo_PaveFiller"
type
  BOPAlgoBOP* {.importcpp: "BOPAlgo_BOP", header: "BOPAlgo_BOP.hxx", bycopy.} = object of BOPAlgoToolsProvider ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor


proc constructBOPAlgoBOP*(): BOPAlgoBOP {.constructor, importcpp: "BOPAlgo_BOP(@)",
                                       header: "BOPAlgo_BOP.hxx".}
proc destroyBOPAlgoBOP*(this: var BOPAlgoBOP) {.importcpp: "#.~BOPAlgo_BOP()",
    header: "BOPAlgo_BOP.hxx".}
proc constructBOPAlgoBOP*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoBOP {.
    constructor, importcpp: "BOPAlgo_BOP(@)", header: "BOPAlgo_BOP.hxx".}
proc clear*(this: var BOPAlgoBOP) {.importcpp: "Clear", header: "BOPAlgo_BOP.hxx".}
proc setOperation*(this: var BOPAlgoBOP; theOperation: BOPAlgoOperation) {.
    importcpp: "SetOperation", header: "BOPAlgo_BOP.hxx".}
proc operation*(this: BOPAlgoBOP): BOPAlgoOperation {.noSideEffect,
    importcpp: "Operation", header: "BOPAlgo_BOP.hxx".}
proc perform*(this: var BOPAlgoBOP) {.importcpp: "Perform", header: "BOPAlgo_BOP.hxx".}
