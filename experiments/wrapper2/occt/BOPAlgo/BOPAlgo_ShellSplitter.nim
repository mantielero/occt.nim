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
type
  BOPAlgoShellSplitter* {.importcpp: "BOPAlgo_ShellSplitter",
                         header: "BOPAlgo_ShellSplitter.hxx", bycopy.} = object of BOPAlgoAlgo ##
                                                                                        ## !
                                                                                        ## empty
                                                                                        ## constructor


proc constructBOPAlgoShellSplitter*(): BOPAlgoShellSplitter {.constructor,
    importcpp: "BOPAlgo_ShellSplitter(@)", header: "BOPAlgo_ShellSplitter.hxx".}
proc destroyBOPAlgoShellSplitter*(this: var BOPAlgoShellSplitter) {.
    importcpp: "#.~BOPAlgo_ShellSplitter()", header: "BOPAlgo_ShellSplitter.hxx".}
proc constructBOPAlgoShellSplitter*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoShellSplitter {.
    constructor, importcpp: "BOPAlgo_ShellSplitter(@)",
    header: "BOPAlgo_ShellSplitter.hxx".}
proc addStartElement*(this: var BOPAlgoShellSplitter; theS: TopoDS_Shape) {.
    importcpp: "AddStartElement", header: "BOPAlgo_ShellSplitter.hxx".}
proc startElements*(this: BOPAlgoShellSplitter): TopToolsListOfShape {.noSideEffect,
    importcpp: "StartElements", header: "BOPAlgo_ShellSplitter.hxx".}
proc perform*(this: var BOPAlgoShellSplitter) {.importcpp: "Perform",
    header: "BOPAlgo_ShellSplitter.hxx".}
proc shells*(this: BOPAlgoShellSplitter): TopToolsListOfShape {.noSideEffect,
    importcpp: "Shells", header: "BOPAlgo_ShellSplitter.hxx".}
proc splitBlock*(theCB: var BOPToolsConnexityBlock) {.
    importcpp: "BOPAlgo_ShellSplitter::SplitBlock(@)",
    header: "BOPAlgo_ShellSplitter.hxx".}
