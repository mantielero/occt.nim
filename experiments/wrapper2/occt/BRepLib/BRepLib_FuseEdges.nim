##  Created on: 2007-09-10
##  Created by: Igor FEOKTISTOV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_DataMapOfIntegerListOfShape,
  ../TopTools/TopTools_DataMapOfIntegerShape,
  ../TopTools/TopTools_DataMapOfShapeShape, ../Standard/Standard_Integer,
  ../TopTools/TopTools_IndexedMapOfShape, ../TopAbs/TopAbs_ShapeEnum,
  ../TopTools/TopTools_MapOfShape, ../TopTools/TopTools_ListOfShape

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
type
  BRepLib_FuseEdges* {.importcpp: "BRepLib_FuseEdges",
                      header: "BRepLib_FuseEdges.hxx", bycopy.} = object ## ! Initialise members  and build  construction of map
                                                                    ## ! of ancestors.
                                                                    ## ! Build the all the lists of edges that are to be fused


proc constructBRepLib_FuseEdges*(theShape: TopoDS_Shape;
                                PerformNow: Standard_Boolean = Standard_False): BRepLib_FuseEdges {.
    constructor, importcpp: "BRepLib_FuseEdges(@)", header: "BRepLib_FuseEdges.hxx".}
proc AvoidEdges*(this: var BRepLib_FuseEdges; theMapEdg: TopTools_IndexedMapOfShape) {.
    importcpp: "AvoidEdges", header: "BRepLib_FuseEdges.hxx".}
proc SetConcatBSpl*(this: var BRepLib_FuseEdges;
                   theConcatBSpl: Standard_Boolean = Standard_True) {.
    importcpp: "SetConcatBSpl", header: "BRepLib_FuseEdges.hxx".}
proc Edges*(this: var BRepLib_FuseEdges;
           theMapLstEdg: var TopTools_DataMapOfIntegerListOfShape) {.
    importcpp: "Edges", header: "BRepLib_FuseEdges.hxx".}
proc ResultEdges*(this: var BRepLib_FuseEdges;
                 theMapEdg: var TopTools_DataMapOfIntegerShape) {.
    importcpp: "ResultEdges", header: "BRepLib_FuseEdges.hxx".}
proc Faces*(this: var BRepLib_FuseEdges; theMapFac: var TopTools_DataMapOfShapeShape) {.
    importcpp: "Faces", header: "BRepLib_FuseEdges.hxx".}
proc Shape*(this: var BRepLib_FuseEdges): var TopoDS_Shape {.importcpp: "Shape",
    header: "BRepLib_FuseEdges.hxx".}
proc NbVertices*(this: var BRepLib_FuseEdges): Standard_Integer {.
    importcpp: "NbVertices", header: "BRepLib_FuseEdges.hxx".}
proc Perform*(this: var BRepLib_FuseEdges) {.importcpp: "Perform",
    header: "BRepLib_FuseEdges.hxx".}