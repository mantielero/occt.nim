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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BOPAlgo_Operation, ../Standard/Standard_Integer,
  ../TopoDS/TopoDS_Shape, BOPAlgo_ToolsProvider,
  ../NCollection/NCollection_BaseAllocator, ../TopAbs/TopAbs_ShapeEnum,
  ../Standard/Standard_Boolean,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of BOPAlgo_PaveFiller"
type
  BOPAlgo_BOP* {.importcpp: "BOPAlgo_BOP", header: "BOPAlgo_BOP.hxx", bycopy.} = object of BOPAlgo_ToolsProvider ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructBOPAlgo_BOP*(): BOPAlgo_BOP {.constructor,
    importcpp: "BOPAlgo_BOP(@)", header: "BOPAlgo_BOP.hxx".}
proc destroyBOPAlgo_BOP*(this: var BOPAlgo_BOP) {.importcpp: "#.~BOPAlgo_BOP()",
    header: "BOPAlgo_BOP.hxx".}
proc constructBOPAlgo_BOP*(theAllocator: handle[NCollection_BaseAllocator]): BOPAlgo_BOP {.
    constructor, importcpp: "BOPAlgo_BOP(@)", header: "BOPAlgo_BOP.hxx".}
proc Clear*(this: var BOPAlgo_BOP) {.importcpp: "Clear", header: "BOPAlgo_BOP.hxx".}
proc SetOperation*(this: var BOPAlgo_BOP; theOperation: BOPAlgo_Operation) {.
    importcpp: "SetOperation", header: "BOPAlgo_BOP.hxx".}
proc Operation*(this: BOPAlgo_BOP): BOPAlgo_Operation {.noSideEffect,
    importcpp: "Operation", header: "BOPAlgo_BOP.hxx".}
proc Perform*(this: var BOPAlgo_BOP) {.importcpp: "Perform", header: "BOPAlgo_BOP.hxx".}