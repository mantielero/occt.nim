##  Created by: Peter KURNEV
##  Copyright (c) 1999-2012 OPEN CASCADE SAS
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

discard "forward decl of BOPAlgo_WireEdgeSet"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
type
  BOPAlgoWireSplitter* {.importcpp: "BOPAlgo_WireSplitter",
                        header: "BOPAlgo_WireSplitter.hxx", bycopy.} = object of BOPAlgoAlgo


proc constructBOPAlgoWireSplitter*(): BOPAlgoWireSplitter {.constructor,
    importcpp: "BOPAlgo_WireSplitter(@)", header: "BOPAlgo_WireSplitter.hxx".}
proc destroyBOPAlgoWireSplitter*(this: var BOPAlgoWireSplitter) {.
    importcpp: "#.~BOPAlgo_WireSplitter()", header: "BOPAlgo_WireSplitter.hxx".}
proc constructBOPAlgoWireSplitter*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoWireSplitter {.
    constructor, importcpp: "BOPAlgo_WireSplitter(@)",
    header: "BOPAlgo_WireSplitter.hxx".}
proc setWES*(this: var BOPAlgoWireSplitter; theWES: BOPAlgoWireEdgeSet) {.
    importcpp: "SetWES", header: "BOPAlgo_WireSplitter.hxx".}
proc wes*(this: var BOPAlgoWireSplitter): var BOPAlgoWireEdgeSet {.importcpp: "WES",
    header: "BOPAlgo_WireSplitter.hxx".}
proc setContext*(this: var BOPAlgoWireSplitter; theContext: Handle[IntToolsContext]) {.
    importcpp: "SetContext", header: "BOPAlgo_WireSplitter.hxx".}
proc context*(this: var BOPAlgoWireSplitter): Handle[IntToolsContext] {.
    importcpp: "Context", header: "BOPAlgo_WireSplitter.hxx".}
proc perform*(this: var BOPAlgoWireSplitter) {.importcpp: "Perform",
    header: "BOPAlgo_WireSplitter.hxx".}
proc makeWire*(theLE: var TopToolsListOfShape; theW: var TopoDS_Wire) {.
    importcpp: "BOPAlgo_WireSplitter::MakeWire(@)",
    header: "BOPAlgo_WireSplitter.hxx".}
proc splitBlock*(theF: TopoDS_Face; theCB: var BOPToolsConnexityBlock;
                theContext: Handle[IntToolsContext]) {.
    importcpp: "BOPAlgo_WireSplitter::SplitBlock(@)",
    header: "BOPAlgo_WireSplitter.hxx".}

























