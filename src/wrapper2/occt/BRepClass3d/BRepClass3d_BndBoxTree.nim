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

##  Typedef to reduce code complexity.

type
  BRepClass3dBndBoxTree* = NCollectionUBTree[StandardInteger, BndBox]

##  Class representing tree selector for point object.

type
  BRepClass3dBndBoxTreeSelectorPoint* {.importcpp: "BRepClass3d_BndBoxTreeSelectorPoint",
                                       header: "BRepClass3d_BndBoxTree.hxx",
                                       bycopy.} = object of Selector
    ## shapes (vertices + edges)


proc constructBRepClass3dBndBoxTreeSelectorPoint*(
    theMapOfShape: TopToolsIndexedMapOfShape): BRepClass3dBndBoxTreeSelectorPoint {.
    constructor, importcpp: "BRepClass3d_BndBoxTreeSelectorPoint(@)",
    header: "BRepClass3d_BndBoxTree.hxx".}
proc reject*(this: BRepClass3dBndBoxTreeSelectorPoint; theBox: BndBox): StandardBoolean {.
    noSideEffect, importcpp: "Reject", header: "BRepClass3d_BndBoxTree.hxx".}
proc accept*(this: var BRepClass3dBndBoxTreeSelectorPoint; theObj: StandardInteger): StandardBoolean {.
    importcpp: "Accept", header: "BRepClass3d_BndBoxTree.hxx".}
proc setCurrentPoint*(this: var BRepClass3dBndBoxTreeSelectorPoint; theP: GpPnt) {.
    importcpp: "SetCurrentPoint", header: "BRepClass3d_BndBoxTree.hxx".}
##  Class representing tree selector for line object.

type
  BRepClass3dBndBoxTreeSelectorLine* {.importcpp: "BRepClass3d_BndBoxTreeSelectorLine",
                                      header: "BRepClass3d_BndBoxTree.hxx", bycopy.} = object of Selector
    ## shapes (vertices + edges)
    ## output result (edge vs line)
    ## output result (vertex vs line)

  BRepClass3dBndBoxTreeSelectorLineEdgeParam* {.
      importcpp: "BRepClass3d_BndBoxTreeSelectorLine::EdgeParam",
      header: "BRepClass3d_BndBoxTree.hxx", bycopy.} = object
    myE* {.importc: "myE".}: TopoDS_Edge
    myParam* {.importc: "myParam".}: StandardReal ## par on myE
    myLParam* {.importc: "myLParam".}: StandardReal ## par on line

  BRepClass3dBndBoxTreeSelectorLineVertParam* {.
      importcpp: "BRepClass3d_BndBoxTreeSelectorLine::VertParam",
      header: "BRepClass3d_BndBoxTree.hxx", bycopy.} = object
    myV* {.importc: "myV".}: TopoDS_Vertex
    myLParam* {.importc: "myLParam".}: StandardReal ## par on line


proc constructBRepClass3dBndBoxTreeSelectorLine*(
    theMapOfShape: TopToolsIndexedMapOfShape): BRepClass3dBndBoxTreeSelectorLine {.
    constructor, importcpp: "BRepClass3d_BndBoxTreeSelectorLine(@)",
    header: "BRepClass3d_BndBoxTree.hxx".}
proc reject*(this: BRepClass3dBndBoxTreeSelectorLine; theBox: BndBox): StandardBoolean {.
    noSideEffect, importcpp: "Reject", header: "BRepClass3d_BndBoxTree.hxx".}
proc accept*(this: var BRepClass3dBndBoxTreeSelectorLine; theObj: StandardInteger): StandardBoolean {.
    importcpp: "Accept", header: "BRepClass3d_BndBoxTree.hxx".}
proc setCurrentLine*(this: var BRepClass3dBndBoxTreeSelectorLine; theL: GpLin;
                    theMaxParam: StandardReal) {.importcpp: "SetCurrentLine",
    header: "BRepClass3d_BndBoxTree.hxx".}
proc getEdgeParam*(this: BRepClass3dBndBoxTreeSelectorLine; i: StandardInteger;
                  theOutE: var TopoDS_Edge; theOutParam: var StandardReal;
                  outLParam: var StandardReal) {.noSideEffect,
    importcpp: "GetEdgeParam", header: "BRepClass3d_BndBoxTree.hxx".}
proc getVertParam*(this: BRepClass3dBndBoxTreeSelectorLine; i: StandardInteger;
                  theOutV: var TopoDS_Vertex; outLParam: var StandardReal) {.
    noSideEffect, importcpp: "GetVertParam", header: "BRepClass3d_BndBoxTree.hxx".}
proc getNbEdgeParam*(this: BRepClass3dBndBoxTreeSelectorLine): StandardInteger {.
    noSideEffect, importcpp: "GetNbEdgeParam", header: "BRepClass3d_BndBoxTree.hxx".}
proc getNbVertParam*(this: BRepClass3dBndBoxTreeSelectorLine): StandardInteger {.
    noSideEffect, importcpp: "GetNbVertParam", header: "BRepClass3d_BndBoxTree.hxx".}
proc clearResults*(this: var BRepClass3dBndBoxTreeSelectorLine) {.
    importcpp: "ClearResults", header: "BRepClass3d_BndBoxTree.hxx".}
proc isCorrect*(this: BRepClass3dBndBoxTreeSelectorLine): StandardBoolean {.
    noSideEffect, importcpp: "IsCorrect", header: "BRepClass3d_BndBoxTree.hxx".}

