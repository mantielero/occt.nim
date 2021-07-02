##  Created on: 1995-11-10
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepAlgoLoop* {.importcpp: "BRepAlgo_Loop", header: "BRepAlgo_Loop.hxx", bycopy.} = object


proc constructBRepAlgoLoop*(): BRepAlgoLoop {.constructor,
    importcpp: "BRepAlgo_Loop(@)", header: "BRepAlgo_Loop.hxx".}
proc init*(this: var BRepAlgoLoop; f: TopoDS_Face) {.importcpp: "Init",
    header: "BRepAlgo_Loop.hxx".}
proc addEdge*(this: var BRepAlgoLoop; e: var TopoDS_Edge; lv: TopToolsListOfShape) {.
    importcpp: "AddEdge", header: "BRepAlgo_Loop.hxx".}
proc addConstEdge*(this: var BRepAlgoLoop; e: TopoDS_Edge) {.
    importcpp: "AddConstEdge", header: "BRepAlgo_Loop.hxx".}
proc addConstEdges*(this: var BRepAlgoLoop; le: TopToolsListOfShape) {.
    importcpp: "AddConstEdges", header: "BRepAlgo_Loop.hxx".}
proc perform*(this: var BRepAlgoLoop) {.importcpp: "Perform",
                                    header: "BRepAlgo_Loop.hxx".}
proc cutEdge*(this: BRepAlgoLoop; e: TopoDS_Edge; vonE: TopToolsListOfShape;
             ne: var TopToolsListOfShape) {.noSideEffect, importcpp: "CutEdge",
    header: "BRepAlgo_Loop.hxx".}
proc newWires*(this: BRepAlgoLoop): TopToolsListOfShape {.noSideEffect,
    importcpp: "NewWires", header: "BRepAlgo_Loop.hxx".}
proc wiresToFaces*(this: var BRepAlgoLoop) {.importcpp: "WiresToFaces",
    header: "BRepAlgo_Loop.hxx".}
proc newFaces*(this: BRepAlgoLoop): TopToolsListOfShape {.noSideEffect,
    importcpp: "NewFaces", header: "BRepAlgo_Loop.hxx".}
proc newEdges*(this: BRepAlgoLoop; e: TopoDS_Edge): TopToolsListOfShape {.
    noSideEffect, importcpp: "NewEdges", header: "BRepAlgo_Loop.hxx".}
proc getVerticesForSubstitute*(this: BRepAlgoLoop;
                              verVerMap: var TopToolsDataMapOfShapeShape) {.
    noSideEffect, importcpp: "GetVerticesForSubstitute",
    header: "BRepAlgo_Loop.hxx".}
proc verticesForSubstitute*(this: var BRepAlgoLoop;
                           verVerMap: var TopToolsDataMapOfShapeShape) {.
    importcpp: "VerticesForSubstitute", header: "BRepAlgo_Loop.hxx".}

