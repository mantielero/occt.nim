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

## ! Auxiliary tool providing API for manipulation with BRepMesh_DataStructureOfDelaun.

type
  BRepMeshMeshTool* {.importcpp: "BRepMesh_MeshTool",
                     header: "BRepMesh_MeshTool.hxx", bycopy.} = object of StandardTransient ##
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
    bRepMeshDataStructureOfDelaun* {.importc: "BRepMesh_DataStructureOfDelaun".}: Handle
    standardType* {.importc: "Standard_Type".}: Handle

  BRepMeshMeshToolNodeClassifier* {.importcpp: "BRepMesh_MeshTool::NodeClassifier",
                                   header: "BRepMesh_MeshTool.hxx", bycopy.} = object


## !!!Ignored construct:  public : NodeClassifier ( const BRepMesh_Edge & theConstraint , const Handle ( BRepMesh_DataStructureOfDelaun ) & theStructure ) : myStructure ( theStructure ) { const BRepMesh_Vertex & aVertex1 = myStructure -> GetNode ( theConstraint . FirstNode ( ) ) ; const BRepMesh_Vertex & aVertex2 = myStructure -> GetNode ( theConstraint . LastNode ( ) ) ; myConstraint . SetLocation ( aVertex1 . Coord ( ) ) ; myConstraint . SetDirection ( gp_Vec2d ( aVertex1 . Coord ( ) , aVertex2 . Coord ( ) ) ) ; mySign = myConstraint . Direction ( ) . X ( ) > 0 ; } Standard_Boolean IsAbove ( const Standard_Integer theNodeIndex ) const { const BRepMesh_Vertex & aVertex = myStructure -> GetNode ( theNodeIndex ) ; const gp_Vec2d aNodeVec ( myConstraint . Location ( ) , aVertex . Coord ( ) ) ; if ( aNodeVec . SquareMagnitude ( ) > gp :: Resolution ( ) ) { const Standard_Real aCross = aNodeVec . Crossed ( myConstraint . Direction ( ) ) ; if ( Abs ( aCross ) > gp :: Resolution ( ) ) { return mySign ? aCross < 0.0 : aCross > 0.0 ; } } return Standard_False ; } private : NodeClassifier ( const NodeClassifier & theOther ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  & myStructure ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  ! Constructor.
## ! Initializes tool by the given data structure. BRepMesh_MeshTool ( const Handle ( BRepMesh_DataStructureOfDelaun ) & theStructure ) ;
## Error: token expected: ) but got: &!!!

proc destroyBRepMeshMeshTool*(this: var BRepMeshMeshTool) {.
    importcpp: "#.~BRepMesh_MeshTool()", header: "BRepMesh_MeshTool.hxx".}
## !!!Ignored construct:  & GetStructure ( ) const { return myStructure ; } ! Dumps triangles to specified file. void DumpTriangles ( const Standard_CString theFileName , IMeshData :: MapOfInteger * theTriangles ) ;
## Error: identifier expected, but got: &!!!

proc addAndLegalizeTriangle*(this: var BRepMeshMeshTool; thePoint1: int;
                            thePoint2: int; thePoint3: int) {.
    importcpp: "AddAndLegalizeTriangle", header: "BRepMesh_MeshTool.hxx".}
proc addTriangle*(this: var BRepMeshMeshTool; thePoint1: int; thePoint2: int;
                 thePoint3: int; theEdges: array[3, int]) {.importcpp: "AddTriangle",
    header: "BRepMesh_MeshTool.hxx".}
proc addLink*(this: var BRepMeshMeshTool; theFirstNode: int; theLastNode: int;
             theLinkIndex: var int; theLinkOri: var bool) {.importcpp: "AddLink",
    header: "BRepMesh_MeshTool.hxx".}
proc legalize*(this: var BRepMeshMeshTool; theLinkIndex: int) {.importcpp: "Legalize",
    header: "BRepMesh_MeshTool.hxx".}
proc eraseItemsConnectedTo*(this: var BRepMeshMeshTool; theNodeIndex: int) {.
    importcpp: "EraseItemsConnectedTo", header: "BRepMesh_MeshTool.hxx".}
proc cleanFrontierLinks*(this: var BRepMeshMeshTool) {.
    importcpp: "CleanFrontierLinks", header: "BRepMesh_MeshTool.hxx".}
proc eraseTriangles*(this: var BRepMeshMeshTool; theTriangles: MapOfInteger;
                    theLoopEdges: var MapOfIntegerInteger) {.
    importcpp: "EraseTriangles", header: "BRepMesh_MeshTool.hxx".}
proc eraseTriangle*(this: var BRepMeshMeshTool; theTriangleIndex: int;
                   theLoopEdges: var MapOfIntegerInteger) {.
    importcpp: "EraseTriangle", header: "BRepMesh_MeshTool.hxx".}
proc eraseFreeLinks*(this: var BRepMeshMeshTool) {.importcpp: "EraseFreeLinks",
    header: "BRepMesh_MeshTool.hxx".}
proc eraseFreeLinks*(this: var BRepMeshMeshTool; theLinks: MapOfIntegerInteger) {.
    importcpp: "EraseFreeLinks", header: "BRepMesh_MeshTool.hxx".}
## !!!Ignored construct:  ! Gives the list of edges with type defined by input parameter. Handle ( IMeshData :: MapOfInteger ) GetEdgesByType ( const BRepMesh_DegreeOfFreedom theEdgeType ) const ;
## Error: token expected: ) but got: ::!!!

type
  BRepMeshMeshToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_MeshTool::get_type_name(@)",
                            header: "BRepMesh_MeshTool.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  myStructure ;
## Error: identifier expected, but got: ;!!!














































