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


proc newBOPAlgoShellSplitter*(): BOPAlgoShellSplitter {.cdecl, constructor,
    importcpp: "BOPAlgo_ShellSplitter(@)", dynlib: tkbo.}
proc destroyBOPAlgoShellSplitter*(this: var BOPAlgoShellSplitter) {.cdecl,
    importcpp: "#.~BOPAlgo_ShellSplitter()", dynlib: tkbo.}
proc newBOPAlgoShellSplitter*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoShellSplitter {.
    cdecl, constructor, importcpp: "BOPAlgo_ShellSplitter(@)", dynlib: tkbo.}
proc addStartElement*(this: var BOPAlgoShellSplitter; theS: TopoDS_Shape) {.cdecl,
    importcpp: "AddStartElement", dynlib: tkbo.}
proc startElements*(this: BOPAlgoShellSplitter): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "StartElements", dynlib: tkbo.}
proc perform*(this: var BOPAlgoShellSplitter) {.cdecl, importcpp: "Perform",
    dynlib: tkbo.}
proc shells*(this: BOPAlgoShellSplitter): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Shells", dynlib: tkbo.}
#proc splitBlock*(theCB: var BOPToolsConnexityBlock) {.cdecl,
#    importcpp: "BOPAlgo_ShellSplitter::SplitBlock(@)", dynlib: tkbo.}