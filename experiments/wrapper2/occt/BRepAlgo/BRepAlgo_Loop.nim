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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape, BRepAlgo_Image

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepAlgo_Loop* {.importcpp: "BRepAlgo_Loop", header: "BRepAlgo_Loop.hxx", bycopy.} = object


proc constructBRepAlgo_Loop*(): BRepAlgo_Loop {.constructor,
    importcpp: "BRepAlgo_Loop(@)", header: "BRepAlgo_Loop.hxx".}
proc Init*(this: var BRepAlgo_Loop; F: TopoDS_Face) {.importcpp: "Init",
    header: "BRepAlgo_Loop.hxx".}
proc AddEdge*(this: var BRepAlgo_Loop; E: var TopoDS_Edge; LV: TopTools_ListOfShape) {.
    importcpp: "AddEdge", header: "BRepAlgo_Loop.hxx".}
proc AddConstEdge*(this: var BRepAlgo_Loop; E: TopoDS_Edge) {.
    importcpp: "AddConstEdge", header: "BRepAlgo_Loop.hxx".}
proc AddConstEdges*(this: var BRepAlgo_Loop; LE: TopTools_ListOfShape) {.
    importcpp: "AddConstEdges", header: "BRepAlgo_Loop.hxx".}
proc SetImageVV*(this: var BRepAlgo_Loop; theImageVV: BRepAlgo_Image) {.
    importcpp: "SetImageVV", header: "BRepAlgo_Loop.hxx".}
proc Perform*(this: var BRepAlgo_Loop) {.importcpp: "Perform",
                                     header: "BRepAlgo_Loop.hxx".}
proc UpdateVEmap*(this: var BRepAlgo_Loop;
                 theVEmap: var TopTools_IndexedDataMapOfShapeListOfShape) {.
    importcpp: "UpdateVEmap", header: "BRepAlgo_Loop.hxx".}
proc CutEdge*(this: BRepAlgo_Loop; E: TopoDS_Edge; VonE: TopTools_ListOfShape;
             NE: var TopTools_ListOfShape) {.noSideEffect, importcpp: "CutEdge",
    header: "BRepAlgo_Loop.hxx".}
proc NewWires*(this: BRepAlgo_Loop): TopTools_ListOfShape {.noSideEffect,
    importcpp: "NewWires", header: "BRepAlgo_Loop.hxx".}
proc WiresToFaces*(this: var BRepAlgo_Loop) {.importcpp: "WiresToFaces",
    header: "BRepAlgo_Loop.hxx".}
proc NewFaces*(this: BRepAlgo_Loop): TopTools_ListOfShape {.noSideEffect,
    importcpp: "NewFaces", header: "BRepAlgo_Loop.hxx".}
proc NewEdges*(this: BRepAlgo_Loop; E: TopoDS_Edge): TopTools_ListOfShape {.
    noSideEffect, importcpp: "NewEdges", header: "BRepAlgo_Loop.hxx".}
proc GetVerticesForSubstitute*(this: BRepAlgo_Loop;
                              VerVerMap: var TopTools_DataMapOfShapeShape) {.
    noSideEffect, importcpp: "GetVerticesForSubstitute",
    header: "BRepAlgo_Loop.hxx".}
proc VerticesForSubstitute*(this: var BRepAlgo_Loop;
                           VerVerMap: var TopTools_DataMapOfShapeShape) {.
    importcpp: "VerticesForSubstitute", header: "BRepAlgo_Loop.hxx".}