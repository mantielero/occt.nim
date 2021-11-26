##  Created on: 2005-02-14
##  Created by: Alexey MORENOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

type
  ShapeAnalysisBoxBndTree* = NCollectionUBTree[cint, BndBox]
  ShapeAnalysisBoxBndTreeSelector* {.importcpp: "ShapeAnalysis_BoxBndTreeSelector",
                                    header: "ShapeAnalysis_BoxBndTree.hxx", bycopy.} = object of Selector


proc constructShapeAnalysisBoxBndTreeSelector*(
    theSeq: Handle[TopToolsHArray1OfShape]; theShared: bool): ShapeAnalysisBoxBndTreeSelector {.
    constructor, importcpp: "ShapeAnalysis_BoxBndTreeSelector(@)",
    header: "ShapeAnalysis_BoxBndTree.hxx".}
proc defineBoxes*(this: var ShapeAnalysisBoxBndTreeSelector; theFBox: BndBox;
                 theLBox: BndBox) {.importcpp: "DefineBoxes",
                                  header: "ShapeAnalysis_BoxBndTree.hxx".}
proc defineVertexes*(this: var ShapeAnalysisBoxBndTreeSelector;
                    theVf: TopoDS_Vertex; theVl: TopoDS_Vertex) {.
    importcpp: "DefineVertexes", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc definePnt*(this: var ShapeAnalysisBoxBndTreeSelector; theFPnt: Pnt; theLPnt: Pnt) {.
    importcpp: "DefinePnt", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc getNb*(this: var ShapeAnalysisBoxBndTreeSelector): cint {.importcpp: "GetNb",
    header: "ShapeAnalysis_BoxBndTree.hxx".}
proc setNb*(this: var ShapeAnalysisBoxBndTreeSelector; theNb: cint) {.
    importcpp: "SetNb", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc loadList*(this: var ShapeAnalysisBoxBndTreeSelector; elem: cint) {.
    importcpp: "LoadList", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc setStop*(this: var ShapeAnalysisBoxBndTreeSelector) {.importcpp: "SetStop",
    header: "ShapeAnalysis_BoxBndTree.hxx".}
proc setTolerance*(this: var ShapeAnalysisBoxBndTreeSelector; theTol: cfloat) {.
    importcpp: "SetTolerance", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc contWire*(this: var ShapeAnalysisBoxBndTreeSelector; nbWire: cint): bool {.
    importcpp: "ContWire", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc lastCheckStatus*(this: ShapeAnalysisBoxBndTreeSelector;
                     theStatus: ShapeExtendStatus): bool {.noSideEffect,
    importcpp: "LastCheckStatus", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc reject*(this: ShapeAnalysisBoxBndTreeSelector; theBnd: BndBox): bool {.
    noSideEffect, importcpp: "Reject", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc accept*(this: var ShapeAnalysisBoxBndTreeSelector; a2: cint): bool {.
    importcpp: "Accept", header: "ShapeAnalysis_BoxBndTree.hxx".}

























