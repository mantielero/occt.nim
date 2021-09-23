##  Created by: Peter KURNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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
  ../Standard/Standard_Handle, ../NCollection/NCollection_BaseAllocator,
  ../TopoDS/TopoDS_Face, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
type
  BOPAlgo_WireEdgeSet* {.importcpp: "BOPAlgo_WireEdgeSet",
                        header: "BOPAlgo_WireEdgeSet.hxx", bycopy.} = object


proc constructBOPAlgo_WireEdgeSet*(): BOPAlgo_WireEdgeSet {.constructor,
    importcpp: "BOPAlgo_WireEdgeSet(@)", header: "BOPAlgo_WireEdgeSet.hxx".}
proc destroyBOPAlgo_WireEdgeSet*(this: var BOPAlgo_WireEdgeSet) {.
    importcpp: "#.~BOPAlgo_WireEdgeSet()", header: "BOPAlgo_WireEdgeSet.hxx".}
proc constructBOPAlgo_WireEdgeSet*(theAllocator: handle[NCollection_BaseAllocator]): BOPAlgo_WireEdgeSet {.
    constructor, importcpp: "BOPAlgo_WireEdgeSet(@)",
    header: "BOPAlgo_WireEdgeSet.hxx".}
proc Clear*(this: var BOPAlgo_WireEdgeSet) {.importcpp: "Clear",
    header: "BOPAlgo_WireEdgeSet.hxx".}
proc SetFace*(this: var BOPAlgo_WireEdgeSet; aF: TopoDS_Face) {.importcpp: "SetFace",
    header: "BOPAlgo_WireEdgeSet.hxx".}
proc Face*(this: BOPAlgo_WireEdgeSet): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BOPAlgo_WireEdgeSet.hxx".}
proc AddStartElement*(this: var BOPAlgo_WireEdgeSet; sS: TopoDS_Shape) {.
    importcpp: "AddStartElement", header: "BOPAlgo_WireEdgeSet.hxx".}
proc StartElements*(this: BOPAlgo_WireEdgeSet): TopTools_ListOfShape {.noSideEffect,
    importcpp: "StartElements", header: "BOPAlgo_WireEdgeSet.hxx".}
proc AddShape*(this: var BOPAlgo_WireEdgeSet; sS: TopoDS_Shape) {.
    importcpp: "AddShape", header: "BOPAlgo_WireEdgeSet.hxx".}
proc Shapes*(this: BOPAlgo_WireEdgeSet): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Shapes", header: "BOPAlgo_WireEdgeSet.hxx".}