##  Created on: 1998-11-26
##  Created by: Jean-Michel BOULCOURT
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRepToolFuseEdges* {.importcpp: "TopOpeBRepTool_FuseEdges",
                            header: "TopOpeBRepTool_FuseEdges.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Build
                                                                                 ## the
                                                                                 ## all
                                                                                 ## the
                                                                                 ## lists
                                                                                 ## of
                                                                                 ## edges
                                                                                 ## that
                                                                                 ## are
                                                                                 ## to
                                                                                 ## be
                                                                                 ## fused


proc `new`*(this: var TopOpeBRepToolFuseEdges; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_FuseEdges::operator new",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc `delete`*(this: var TopOpeBRepToolFuseEdges; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_FuseEdges::operator delete",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc `new[]`*(this: var TopOpeBRepToolFuseEdges; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_FuseEdges::operator new[]",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolFuseEdges; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_FuseEdges::operator delete[]",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc `new`*(this: var TopOpeBRepToolFuseEdges; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_FuseEdges::operator new",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc `delete`*(this: var TopOpeBRepToolFuseEdges; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_FuseEdges::operator delete",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc constructTopOpeBRepToolFuseEdges*(theShape: TopoDS_Shape;
                                      performNow: StandardBoolean = false): TopOpeBRepToolFuseEdges {.
    constructor, importcpp: "TopOpeBRepTool_FuseEdges(@)",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc avoidEdges*(this: var TopOpeBRepToolFuseEdges;
                theMapEdg: TopToolsIndexedMapOfShape) {.importcpp: "AvoidEdges",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc edges*(this: var TopOpeBRepToolFuseEdges;
           theMapLstEdg: var TopToolsDataMapOfIntegerListOfShape) {.
    importcpp: "Edges", header: "TopOpeBRepTool_FuseEdges.hxx".}
proc resultEdges*(this: var TopOpeBRepToolFuseEdges;
                 theMapEdg: var TopToolsDataMapOfIntegerShape) {.
    importcpp: "ResultEdges", header: "TopOpeBRepTool_FuseEdges.hxx".}
proc faces*(this: var TopOpeBRepToolFuseEdges;
           theMapFac: var TopToolsDataMapOfShapeShape) {.importcpp: "Faces",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc shape*(this: var TopOpeBRepToolFuseEdges): var TopoDS_Shape {.importcpp: "Shape",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc nbVertices*(this: var TopOpeBRepToolFuseEdges): int {.importcpp: "NbVertices",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc perform*(this: var TopOpeBRepToolFuseEdges) {.importcpp: "Perform",
    header: "TopOpeBRepTool_FuseEdges.hxx".}