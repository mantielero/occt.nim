##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2016 OPEN CASCADE SAS
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
  ../NCollection/NCollection_Sequence, ../NCollection/NCollection_UBTreeFiller,
  ../NCollection/NCollection_UBTree, ../TopTools/TopTools_IndexedMapOfShape,
  ../BRepBndLib/BRepBndLib, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Vertex,
  ../Geom/Geom_Line, ../Bnd/Bnd_Box, ../gp/gp_Lin,
  ../GeomAdaptor/GeomAdaptor_Curve, ../Precision/Precision

##  Typedef to reduce code complexity.

type
  BRepClass3d_BndBoxTree* = NCollection_UBTree[Standard_Integer, Bnd_Box]

##  Class representing tree selector for point object.

type
  BRepClass3d_BndBoxTreeSelectorPoint* {.importcpp: "BRepClass3d_BndBoxTreeSelectorPoint",
                                        header: "BRepClass3d_BndBoxTree.hxx",
                                        bycopy.} = object of Selector
    ## shapes (vertices + edges)


proc constructBRepClass3d_BndBoxTreeSelectorPoint*(
    theMapOfShape: TopTools_IndexedMapOfShape): BRepClass3d_BndBoxTreeSelectorPoint {.
    constructor, importcpp: "BRepClass3d_BndBoxTreeSelectorPoint(@)",
    header: "BRepClass3d_BndBoxTree.hxx".}
proc Reject*(this: BRepClass3d_BndBoxTreeSelectorPoint; theBox: Bnd_Box): Standard_Boolean {.
    noSideEffect, importcpp: "Reject", header: "BRepClass3d_BndBoxTree.hxx".}
proc Accept*(this: var BRepClass3d_BndBoxTreeSelectorPoint; theObj: Standard_Integer): Standard_Boolean {.
    importcpp: "Accept", header: "BRepClass3d_BndBoxTree.hxx".}
proc SetCurrentPoint*(this: var BRepClass3d_BndBoxTreeSelectorPoint; theP: gp_Pnt) {.
    importcpp: "SetCurrentPoint", header: "BRepClass3d_BndBoxTree.hxx".}
##  Class representing tree selector for line object.

type
  BRepClass3d_BndBoxTreeSelectorLine* {.importcpp: "BRepClass3d_BndBoxTreeSelectorLine",
                                       header: "BRepClass3d_BndBoxTree.hxx",
                                       bycopy.} = object of Selector
    ## shapes (vertices + edges)
    ## output result (edge vs line)
    ## output result (vertex vs line)

  BRepClass3d_BndBoxTreeSelectorLineEdgeParam* {.
      importcpp: "BRepClass3d_BndBoxTreeSelectorLine::EdgeParam",
      header: "BRepClass3d_BndBoxTree.hxx", bycopy.} = object
    myE* {.importc: "myE".}: TopoDS_Edge
    myParam* {.importc: "myParam".}: Standard_Real ## par on myE
    myLParam* {.importc: "myLParam".}: Standard_Real ## par on line

  BRepClass3d_BndBoxTreeSelectorLineVertParam* {.
      importcpp: "BRepClass3d_BndBoxTreeSelectorLine::VertParam",
      header: "BRepClass3d_BndBoxTree.hxx", bycopy.} = object
    myV* {.importc: "myV".}: TopoDS_Vertex
    myLParam* {.importc: "myLParam".}: Standard_Real ## par on line


proc constructBRepClass3d_BndBoxTreeSelectorLine*(
    theMapOfShape: TopTools_IndexedMapOfShape): BRepClass3d_BndBoxTreeSelectorLine {.
    constructor, importcpp: "BRepClass3d_BndBoxTreeSelectorLine(@)",
    header: "BRepClass3d_BndBoxTree.hxx".}
proc Reject*(this: BRepClass3d_BndBoxTreeSelectorLine; theBox: Bnd_Box): Standard_Boolean {.
    noSideEffect, importcpp: "Reject", header: "BRepClass3d_BndBoxTree.hxx".}
proc Accept*(this: var BRepClass3d_BndBoxTreeSelectorLine; theObj: Standard_Integer): Standard_Boolean {.
    importcpp: "Accept", header: "BRepClass3d_BndBoxTree.hxx".}
proc SetCurrentLine*(this: var BRepClass3d_BndBoxTreeSelectorLine; theL: gp_Lin;
                    theMaxParam: Standard_Real) {.importcpp: "SetCurrentLine",
    header: "BRepClass3d_BndBoxTree.hxx".}
proc GetEdgeParam*(this: BRepClass3d_BndBoxTreeSelectorLine; i: Standard_Integer;
                  theOutE: var TopoDS_Edge; theOutParam: var Standard_Real;
                  outLParam: var Standard_Real) {.noSideEffect,
    importcpp: "GetEdgeParam", header: "BRepClass3d_BndBoxTree.hxx".}
proc GetVertParam*(this: BRepClass3d_BndBoxTreeSelectorLine; i: Standard_Integer;
                  theOutV: var TopoDS_Vertex; outLParam: var Standard_Real) {.
    noSideEffect, importcpp: "GetVertParam", header: "BRepClass3d_BndBoxTree.hxx".}
proc GetNbEdgeParam*(this: BRepClass3d_BndBoxTreeSelectorLine): Standard_Integer {.
    noSideEffect, importcpp: "GetNbEdgeParam", header: "BRepClass3d_BndBoxTree.hxx".}
proc GetNbVertParam*(this: BRepClass3d_BndBoxTreeSelectorLine): Standard_Integer {.
    noSideEffect, importcpp: "GetNbVertParam", header: "BRepClass3d_BndBoxTree.hxx".}
proc ClearResults*(this: var BRepClass3d_BndBoxTreeSelectorLine) {.
    importcpp: "ClearResults", header: "BRepClass3d_BndBoxTree.hxx".}
proc IsCorrect*(this: BRepClass3d_BndBoxTreeSelectorLine): Standard_Boolean {.
    noSideEffect, importcpp: "IsCorrect", header: "BRepClass3d_BndBoxTree.hxx".}