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
  ../Standard/Standard_Handle, ../BOPTools/BOPTools_ListOfConnexityBlock,
  BOPAlgo_Algo, ../BOPTools/BOPTools_ConnexityBlock,
  ../NCollection/NCollection_BaseAllocator, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
type
  BOPAlgo_ShellSplitter* {.importcpp: "BOPAlgo_ShellSplitter",
                          header: "BOPAlgo_ShellSplitter.hxx", bycopy.} = object of BOPAlgo_Algo ##
                                                                                          ## !
                                                                                          ## empty
                                                                                          ## constructor


proc constructBOPAlgo_ShellSplitter*(): BOPAlgo_ShellSplitter {.constructor,
    importcpp: "BOPAlgo_ShellSplitter(@)", header: "BOPAlgo_ShellSplitter.hxx".}
proc destroyBOPAlgo_ShellSplitter*(this: var BOPAlgo_ShellSplitter) {.
    importcpp: "#.~BOPAlgo_ShellSplitter()", header: "BOPAlgo_ShellSplitter.hxx".}
proc constructBOPAlgo_ShellSplitter*(theAllocator: handle[
    NCollection_BaseAllocator]): BOPAlgo_ShellSplitter {.constructor,
    importcpp: "BOPAlgo_ShellSplitter(@)", header: "BOPAlgo_ShellSplitter.hxx".}
proc AddStartElement*(this: var BOPAlgo_ShellSplitter; theS: TopoDS_Shape) {.
    importcpp: "AddStartElement", header: "BOPAlgo_ShellSplitter.hxx".}
proc StartElements*(this: BOPAlgo_ShellSplitter): TopTools_ListOfShape {.
    noSideEffect, importcpp: "StartElements", header: "BOPAlgo_ShellSplitter.hxx".}
proc Perform*(this: var BOPAlgo_ShellSplitter) {.importcpp: "Perform",
    header: "BOPAlgo_ShellSplitter.hxx".}
proc Shells*(this: BOPAlgo_ShellSplitter): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Shells", header: "BOPAlgo_ShellSplitter.hxx".}
proc SplitBlock*(theCB: var BOPTools_ConnexityBlock) {.
    importcpp: "BOPAlgo_ShellSplitter::SplitBlock(@)",
    header: "BOPAlgo_ShellSplitter.hxx".}