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
                                                                                 ## Initialise
                                                                                 ## members
                                                                                 ## and
                                                                                 ## build
                                                                                 ## construction
                                                                                 ## of
                                                                                 ## map
                                                                                 ##
                                                                                 ## !
                                                                                 ## of
                                                                                 ## ancestors.
                                                                                 ##
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


proc newTopOpeBRepToolFuseEdges*(theShape: TopoDS_Shape; performNow: bool = false): TopOpeBRepToolFuseEdges {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_FuseEdges(@)", dynlib: tkbool.}
proc avoidEdges*(this: var TopOpeBRepToolFuseEdges;
                theMapEdg: TopToolsIndexedMapOfShape) {.cdecl,
    importcpp: "AvoidEdges", dynlib: tkbool.}
proc edges*(this: var TopOpeBRepToolFuseEdges;
           theMapLstEdg: var TopToolsDataMapOfIntegerListOfShape) {.cdecl,
    importcpp: "Edges", dynlib: tkbool.}
proc resultEdges*(this: var TopOpeBRepToolFuseEdges;
                 theMapEdg: var TopToolsDataMapOfIntegerShape) {.cdecl,
    importcpp: "ResultEdges", dynlib: tkbool.}
proc faces*(this: var TopOpeBRepToolFuseEdges;
           theMapFac: var TopToolsDataMapOfShapeShape) {.cdecl, importcpp: "Faces",
    dynlib: tkbool.}
proc shape*(this: var TopOpeBRepToolFuseEdges): var TopoDS_Shape {.cdecl,
    importcpp: "Shape", dynlib: tkbool.}
proc nbVertices*(this: var TopOpeBRepToolFuseEdges): cint {.cdecl,
    importcpp: "NbVertices", dynlib: tkbool.}
proc perform*(this: var TopOpeBRepToolFuseEdges) {.cdecl, importcpp: "Perform",
    dynlib: tkbool.}