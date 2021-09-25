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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
type
  BRepLibFuseEdges* {.importcpp: "BRepLib_FuseEdges",
                     header: "BRepLib_FuseEdges.hxx", bycopy.} = object ## ! Initialise members  and build  construction of map
                                                                   ## ! of ancestors.
                                                                   ## ! Build the all the lists of edges that are to be fused


proc constructBRepLibFuseEdges*(theShape: TopoDS_Shape; performNow: bool = false): BRepLibFuseEdges {.
    constructor, importcpp: "BRepLib_FuseEdges(@)", header: "BRepLib_FuseEdges.hxx".}
proc avoidEdges*(this: var BRepLibFuseEdges; theMapEdg: TopToolsIndexedMapOfShape) {.
    importcpp: "AvoidEdges", header: "BRepLib_FuseEdges.hxx".}
proc setConcatBSpl*(this: var BRepLibFuseEdges; theConcatBSpl: bool = true) {.
    importcpp: "SetConcatBSpl", header: "BRepLib_FuseEdges.hxx".}
proc edges*(this: var BRepLibFuseEdges;
           theMapLstEdg: var TopToolsDataMapOfIntegerListOfShape) {.
    importcpp: "Edges", header: "BRepLib_FuseEdges.hxx".}
proc resultEdges*(this: var BRepLibFuseEdges;
                 theMapEdg: var TopToolsDataMapOfIntegerShape) {.
    importcpp: "ResultEdges", header: "BRepLib_FuseEdges.hxx".}
proc faces*(this: var BRepLibFuseEdges; theMapFac: var TopToolsDataMapOfShapeShape) {.
    importcpp: "Faces", header: "BRepLib_FuseEdges.hxx".}
proc shape*(this: var BRepLibFuseEdges): var TopoDS_Shape {.importcpp: "Shape",
    header: "BRepLib_FuseEdges.hxx".}
proc nbVertices*(this: var BRepLibFuseEdges): int {.importcpp: "NbVertices",
    header: "BRepLib_FuseEdges.hxx".}
proc perform*(this: var BRepLibFuseEdges) {.importcpp: "Perform",
                                        header: "BRepLib_FuseEdges.hxx".}
