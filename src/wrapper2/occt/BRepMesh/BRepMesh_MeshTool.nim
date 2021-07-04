##  Created on: 2016-08-22
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  ../Standard/Standard_Transient, ../Standard/Standard_DefineHandle,
  BRepMesh_DataStructureOfDelaun, BRepMesh_CircleTool, ../gp/gp_Lin2d,
  ../IMeshData/IMeshData_Types, BRepMesh_Edge

## ! Auxiliary tool providing API for manipulation with BRepMesh_DataStructureOfDelaun.

type
  BRepMesh_MeshTool* {.importcpp: "BRepMesh_MeshTool",
                      header: "BRepMesh_MeshTool.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Helper
                                                                                        ## functor
                                                                                        ## intended
                                                                                        ## to
                                                                                        ## separate
                                                                                        ## points
                                                                                        ## to
                                                                                        ## left
                                                                                        ## and
                                                                                        ## right
                                                                                        ## from
                                                                                        ## the
                                                                                        ## constraint.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## True
                                                                                        ## if
                                                                                        ## the
                                                                                        ## given
                                                                                        ## point
                                                                                        ## lies
                                                                                        ## within
                                                                                        ## circumcircle
                                                                                        ## of
                                                                                        ## the
                                                                                        ## given
                                                                                        ## triangle.

  BRepMesh_MeshToolNodeClassifier* {.importcpp: "BRepMesh_MeshTool::NodeClassifier",
                                    header: "BRepMesh_MeshTool.hxx", bycopy.} = object


proc constructBRepMesh_MeshToolNodeClassifier*(theConstraint: BRepMesh_Edge;
    theStructure: handle[BRepMesh_DataStructureOfDelaun]): BRepMesh_MeshToolNodeClassifier {.
    constructor, importcpp: "BRepMesh_MeshTool::NodeClassifier(@)",
    header: "BRepMesh_MeshTool.hxx".}
proc IsAbove*(this: BRepMesh_MeshToolNodeClassifier; theNodeIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsAbove", header: "BRepMesh_MeshTool.hxx".}
proc constructBRepMesh_MeshTool*(theStructure: handle[
    BRepMesh_DataStructureOfDelaun]): BRepMesh_MeshTool {.constructor,
    importcpp: "BRepMesh_MeshTool(@)", header: "BRepMesh_MeshTool.hxx".}
proc destroyBRepMesh_MeshTool*(this: var BRepMesh_MeshTool) {.
    importcpp: "#.~BRepMesh_MeshTool()", header: "BRepMesh_MeshTool.hxx".}
proc GetStructure*(this: BRepMesh_MeshTool): handle[BRepMesh_DataStructureOfDelaun] {.
    noSideEffect, importcpp: "GetStructure", header: "BRepMesh_MeshTool.hxx".}
proc DumpTriangles*(this: var BRepMesh_MeshTool; theFileName: Standard_CString;
                   theTriangles: ptr MapOfInteger) {.importcpp: "DumpTriangles",
    header: "BRepMesh_MeshTool.hxx".}
proc AddAndLegalizeTriangle*(this: var BRepMesh_MeshTool;
                            thePoint1: Standard_Integer;
                            thePoint2: Standard_Integer;
                            thePoint3: Standard_Integer) {.
    importcpp: "AddAndLegalizeTriangle", header: "BRepMesh_MeshTool.hxx".}
proc AddTriangle*(this: var BRepMesh_MeshTool; thePoint1: Standard_Integer;
                 thePoint2: Standard_Integer; thePoint3: Standard_Integer;
                 theEdges: array[3, Standard_Integer]) {.importcpp: "AddTriangle",
    header: "BRepMesh_MeshTool.hxx".}
proc AddLink*(this: var BRepMesh_MeshTool; theFirstNode: Standard_Integer;
             theLastNode: Standard_Integer; theLinkIndex: var Standard_Integer;
             theLinkOri: var Standard_Boolean) {.importcpp: "AddLink",
    header: "BRepMesh_MeshTool.hxx".}
proc Legalize*(this: var BRepMesh_MeshTool; theLinkIndex: Standard_Integer) {.
    importcpp: "Legalize", header: "BRepMesh_MeshTool.hxx".}
proc EraseItemsConnectedTo*(this: var BRepMesh_MeshTool;
                           theNodeIndex: Standard_Integer) {.
    importcpp: "EraseItemsConnectedTo", header: "BRepMesh_MeshTool.hxx".}
proc CleanFrontierLinks*(this: var BRepMesh_MeshTool) {.
    importcpp: "CleanFrontierLinks", header: "BRepMesh_MeshTool.hxx".}
proc EraseTriangles*(this: var BRepMesh_MeshTool; theTriangles: MapOfInteger;
                    theLoopEdges: var MapOfIntegerInteger) {.
    importcpp: "EraseTriangles", header: "BRepMesh_MeshTool.hxx".}
proc EraseTriangle*(this: var BRepMesh_MeshTool; theTriangleIndex: Standard_Integer;
                   theLoopEdges: var MapOfIntegerInteger) {.
    importcpp: "EraseTriangle", header: "BRepMesh_MeshTool.hxx".}
proc EraseFreeLinks*(this: var BRepMesh_MeshTool) {.importcpp: "EraseFreeLinks",
    header: "BRepMesh_MeshTool.hxx".}
proc EraseFreeLinks*(this: var BRepMesh_MeshTool; theLinks: MapOfIntegerInteger) {.
    importcpp: "EraseFreeLinks", header: "BRepMesh_MeshTool.hxx".}
proc GetEdgesByType*(this: BRepMesh_MeshTool; theEdgeType: BRepMesh_DegreeOfFreedom): handle[
    MapOfInteger] {.noSideEffect, importcpp: "GetEdgesByType",
                   header: "BRepMesh_MeshTool.hxx".}
type
  BRepMesh_MeshToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_MeshTool::get_type_name(@)",
                              header: "BRepMesh_MeshTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_MeshTool::get_type_descriptor(@)",
    header: "BRepMesh_MeshTool.hxx".}
proc DynamicType*(this: BRepMesh_MeshTool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_MeshTool.hxx".}