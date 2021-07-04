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

import
  ../NCollection/NCollection_UBTree, ../Bnd/Bnd_Box, ../gp/gp_Pnt,
  ../Standard/Standard_Transient, ../TopTools/TopTools_HArray1OfShape,
  ../ShapeExtend/ShapeExtend, ../ShapeExtend/ShapeExtend_Status,
  ../TopoDS/TopoDS_Vertex, ../TColStd/TColStd_MapOfInteger,
  ../TColStd/TColStd_Array1OfInteger

type
  ShapeAnalysis_BoxBndTree* = NCollection_UBTree[Standard_Integer, Bnd_Box]
  ShapeAnalysis_BoxBndTreeSelector* {.importcpp: "ShapeAnalysis_BoxBndTreeSelector",
                                     header: "ShapeAnalysis_BoxBndTree.hxx",
                                     bycopy.} = object of Selector


proc constructShapeAnalysis_BoxBndTreeSelector*(
    theSeq: handle[TopTools_HArray1OfShape]; theShared: Standard_Boolean): ShapeAnalysis_BoxBndTreeSelector {.
    constructor, importcpp: "ShapeAnalysis_BoxBndTreeSelector(@)",
    header: "ShapeAnalysis_BoxBndTree.hxx".}
proc DefineBoxes*(this: var ShapeAnalysis_BoxBndTreeSelector; theFBox: Bnd_Box;
                 theLBox: Bnd_Box) {.importcpp: "DefineBoxes",
                                   header: "ShapeAnalysis_BoxBndTree.hxx".}
proc DefineVertexes*(this: var ShapeAnalysis_BoxBndTreeSelector;
                    theVf: TopoDS_Vertex; theVl: TopoDS_Vertex) {.
    importcpp: "DefineVertexes", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc DefinePnt*(this: var ShapeAnalysis_BoxBndTreeSelector; theFPnt: gp_Pnt;
               theLPnt: gp_Pnt) {.importcpp: "DefinePnt",
                                header: "ShapeAnalysis_BoxBndTree.hxx".}
proc GetNb*(this: var ShapeAnalysis_BoxBndTreeSelector): Standard_Integer {.
    importcpp: "GetNb", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc SetNb*(this: var ShapeAnalysis_BoxBndTreeSelector; theNb: Standard_Integer) {.
    importcpp: "SetNb", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc LoadList*(this: var ShapeAnalysis_BoxBndTreeSelector; elem: Standard_Integer) {.
    importcpp: "LoadList", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc SetStop*(this: var ShapeAnalysis_BoxBndTreeSelector) {.importcpp: "SetStop",
    header: "ShapeAnalysis_BoxBndTree.hxx".}
proc SetTolerance*(this: var ShapeAnalysis_BoxBndTreeSelector; theTol: Standard_Real) {.
    importcpp: "SetTolerance", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc ContWire*(this: var ShapeAnalysis_BoxBndTreeSelector; nbWire: Standard_Integer): Standard_Boolean {.
    importcpp: "ContWire", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc LastCheckStatus*(this: ShapeAnalysis_BoxBndTreeSelector;
                     theStatus: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "LastCheckStatus",
    header: "ShapeAnalysis_BoxBndTree.hxx".}
proc Reject*(this: ShapeAnalysis_BoxBndTreeSelector; theBnd: Bnd_Box): Standard_Boolean {.
    noSideEffect, importcpp: "Reject", header: "ShapeAnalysis_BoxBndTree.hxx".}
proc Accept*(this: var ShapeAnalysis_BoxBndTreeSelector; a2: Standard_Integer): Standard_Boolean {.
    importcpp: "Accept", header: "ShapeAnalysis_BoxBndTree.hxx".}