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
  TopOpeBRepTool_FuseEdges* {.importcpp: "TopOpeBRepTool_FuseEdges",
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


proc constructTopOpeBRepTool_FuseEdges*(theShape: TopoDS_Shape; PerformNow: Standard_Boolean = Standard_False): TopOpeBRepTool_FuseEdges {.
    constructor, importcpp: "TopOpeBRepTool_FuseEdges(@)",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc AvoidEdges*(this: var TopOpeBRepTool_FuseEdges;
                theMapEdg: TopTools_IndexedMapOfShape) {.importcpp: "AvoidEdges",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc Edges*(this: var TopOpeBRepTool_FuseEdges;
           theMapLstEdg: var TopTools_DataMapOfIntegerListOfShape) {.
    importcpp: "Edges", header: "TopOpeBRepTool_FuseEdges.hxx".}
proc ResultEdges*(this: var TopOpeBRepTool_FuseEdges;
                 theMapEdg: var TopTools_DataMapOfIntegerShape) {.
    importcpp: "ResultEdges", header: "TopOpeBRepTool_FuseEdges.hxx".}
proc Faces*(this: var TopOpeBRepTool_FuseEdges;
           theMapFac: var TopTools_DataMapOfShapeShape) {.importcpp: "Faces",
    header: "TopOpeBRepTool_FuseEdges.hxx".}
proc Shape*(this: var TopOpeBRepTool_FuseEdges): var TopoDS_Shape {.
    importcpp: "Shape", header: "TopOpeBRepTool_FuseEdges.hxx".}
proc NbVertices*(this: var TopOpeBRepTool_FuseEdges): Standard_Integer {.
    importcpp: "NbVertices", header: "TopOpeBRepTool_FuseEdges.hxx".}
proc Perform*(this: var TopOpeBRepTool_FuseEdges) {.importcpp: "Perform",
    header: "TopOpeBRepTool_FuseEdges.hxx".}