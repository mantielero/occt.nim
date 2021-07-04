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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BOPAlgo_PWireEdgeSet,
  ../BOPTools/BOPTools_ListOfConnexityBlock, BOPAlgo_Algo,
  ../BOPTools/BOPTools_ConnexityBlock, ../IntTools/IntTools_Context,
  ../NCollection/NCollection_BaseAllocator, ../TopTools/TopTools_ListOfShape

discard "forward decl of BOPAlgo_WireEdgeSet"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
type
  BOPAlgo_WireSplitter* {.importcpp: "BOPAlgo_WireSplitter",
                         header: "BOPAlgo_WireSplitter.hxx", bycopy.} = object of BOPAlgo_Algo


proc constructBOPAlgo_WireSplitter*(): BOPAlgo_WireSplitter {.constructor,
    importcpp: "BOPAlgo_WireSplitter(@)", header: "BOPAlgo_WireSplitter.hxx".}
proc destroyBOPAlgo_WireSplitter*(this: var BOPAlgo_WireSplitter) {.
    importcpp: "#.~BOPAlgo_WireSplitter()", header: "BOPAlgo_WireSplitter.hxx".}
proc constructBOPAlgo_WireSplitter*(theAllocator: handle[NCollection_BaseAllocator]): BOPAlgo_WireSplitter {.
    constructor, importcpp: "BOPAlgo_WireSplitter(@)",
    header: "BOPAlgo_WireSplitter.hxx".}
proc SetWES*(this: var BOPAlgo_WireSplitter; theWES: BOPAlgo_WireEdgeSet) {.
    importcpp: "SetWES", header: "BOPAlgo_WireSplitter.hxx".}
proc WES*(this: var BOPAlgo_WireSplitter): var BOPAlgo_WireEdgeSet {.importcpp: "WES",
    header: "BOPAlgo_WireSplitter.hxx".}
proc SetContext*(this: var BOPAlgo_WireSplitter;
                theContext: handle[IntTools_Context]) {.importcpp: "SetContext",
    header: "BOPAlgo_WireSplitter.hxx".}
proc Context*(this: var BOPAlgo_WireSplitter): handle[IntTools_Context] {.
    importcpp: "Context", header: "BOPAlgo_WireSplitter.hxx".}
proc Perform*(this: var BOPAlgo_WireSplitter) {.importcpp: "Perform",
    header: "BOPAlgo_WireSplitter.hxx".}
proc MakeWire*(theLE: var TopTools_ListOfShape; theW: var TopoDS_Wire) {.
    importcpp: "BOPAlgo_WireSplitter::MakeWire(@)",
    header: "BOPAlgo_WireSplitter.hxx".}
proc SplitBlock*(theF: TopoDS_Face; theCB: var BOPTools_ConnexityBlock;
                theContext: handle[IntTools_Context]) {.
    importcpp: "BOPAlgo_WireSplitter::SplitBlock(@)",
    header: "BOPAlgo_WireSplitter.hxx".}