import breplib_types
import ../../tkbrep/topods/topods_types
import ../../tkbrep/toptools/toptools_types
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

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"


proc newBRepLib_FuseEdges*(theShape: TopoDS_Shape; PerformNow: bool = false): BRepLib_FuseEdges {.
    cdecl, constructor, importcpp: "BRepLib_FuseEdges(@)".}
proc AvoidEdges*(this: var BRepLib_FuseEdges; theMapEdg: TopTools_IndexedMapOfShape) {.
    cdecl, importcpp: "AvoidEdges".}
proc SetConcatBSpl*(this: var BRepLib_FuseEdges; theConcatBSpl: bool = true) {.cdecl,
    importcpp: "SetConcatBSpl".}
proc Edges*(this: var BRepLib_FuseEdges;
           theMapLstEdg: var TopTools_DataMapOfIntegerListOfShape) {.cdecl,
    importcpp: "Edges".}
proc ResultEdges*(this: var BRepLib_FuseEdges;
                 theMapEdg: var TopTools_DataMapOfIntegerShape) {.cdecl,
    importcpp: "ResultEdges".}
proc Faces*(this: var BRepLib_FuseEdges; theMapFac: var TopTools_DataMapOfShapeShape) {.
    cdecl, importcpp: "Faces".}
proc Shape*(this: var BRepLib_FuseEdges): var TopoDS_Shape {.cdecl, importcpp: "Shape",
    .}
proc NbVertices*(this: var BRepLib_FuseEdges): cint {.cdecl, importcpp: "NbVertices",
    .}
proc Perform*(this: var BRepLib_FuseEdges) {.cdecl, importcpp: "Perform",
    .}