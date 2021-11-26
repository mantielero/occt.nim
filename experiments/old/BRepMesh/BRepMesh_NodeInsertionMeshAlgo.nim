##  Created on: 2016-07-07
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

## ! Extends base meshing algo in order to enable possibility
## ! of addition of free vertices into the mesh.

type
  BRepMeshNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo] {.
      importcpp: "BRepMesh_NodeInsertionMeshAlgo<\'0,\'1>",
      header: "BRepMesh_NodeInsertionMeshAlgo.hxx", bycopy.} = object of BaseAlgo ## !
                                                                           ## Constructor.


proc constructBRepMeshNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo](): BRepMeshNodeInsertionMeshAlgo[
    RangeSplitter, BaseAlgo] {.constructor, importcpp: "BRepMesh_NodeInsertionMeshAlgo<\'*0,\'*1>(@)",
                             header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}
proc destroyBRepMeshNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo](
    this: var BRepMeshNodeInsertionMeshAlgo[RangeSplitter, BaseAlgo]) {.
    importcpp: "#.~BRepMesh_NodeInsertionMeshAlgo()",
    header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}
proc perform*[RangeSplitter; BaseAlgo](this: var BRepMeshNodeInsertionMeshAlgo[
    RangeSplitter, BaseAlgo]; theDFace: IFaceHandle;
                                     theParameters: IMeshToolsParameters;
                                     theRange: MessageProgressRange) {.
    importcpp: "Perform", header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}
## !!!Ignored construct:  & getClassifier ( ) const { return myClassifier ; } private : ! Creates collection of points representing discrete wire. Handle ( SequenceOfPnt2d ) collectWirePoints ( const IMeshData :: IWireHandle & theDWire , const Handle ( NCollection_IncAllocator ) & theAllocator ) { Handle ( SequenceOfPnt2d ) aWirePoints = new SequenceOfPnt2d ( theAllocator ) ; for ( Standard_Integer aEdgeIt = 0 ; aEdgeIt < theDWire -> EdgesNb ( ) ; ++ aEdgeIt ) { const IMeshData :: IEdgeHandle aDEdge = theDWire -> GetEdge ( aEdgeIt ) ; const IMeshData :: IPCurveHandle & aPCurve = aDEdge -> GetPCurve ( this -> getDFace ( ) . get ( ) , theDWire -> GetEdgeOrientation ( aEdgeIt ) ) ; Standard_Integer aPointIt , aEndIndex , aInc ; if ( aPCurve -> IsForward ( ) ) {  For an infinite cylinder (for example)
##  aPCurve->ParametersNb() == 0 aEndIndex = aPCurve -> ParametersNb ( ) - 1 ; aPointIt = Min ( 0 , aEndIndex ) ; aInc = 1 ; } else {  For an infinite cylinder (for example)
##  aPCurve->ParametersNb() == 0 aPointIt = aPCurve -> ParametersNb ( ) - 1 ; aEndIndex = Min ( 0 , aPointIt ) ; aInc = - 1 ; }  For an infinite cylinder (for example)
##  this cycle will not be executed. for ( ; aPointIt != aEndIndex ; aPointIt += aInc ) { const gp_Pnt2d & aPnt2d = aPCurve -> GetPoint ( aPointIt ) ; aWirePoints -> Append ( & aPnt2d ) ; myRangeSplitter . AddPoint ( aPnt2d ) ; } } return aWirePoints ; } ! Iterates over internal vertices of a face and
## ! creates corresponding nodes in data structure. void insertInternalVertices ( ) { TopExp_Explorer aExplorer ( this -> getDFace ( ) -> GetFace ( ) , TopAbs_VERTEX , TopAbs_EDGE ) ; for ( ; aExplorer . More ( ) ; aExplorer . Next ( ) ) { const TopoDS_Vertex & aVertex = TopoDS :: Vertex ( aExplorer . Current ( ) ) ; if ( aVertex . Orientation ( ) != TopAbs_INTERNAL ) { continue ; } insertInternalVertex ( aVertex ) ; } } ! Inserts the given vertex into mesh. void insertInternalVertex ( const TopoDS_Vertex & theVertex ) { try { OCC_CATCH_SIGNALS gp_Pnt2d aPnt2d = BRep_Tool :: Parameters ( theVertex , this -> getDFace ( ) -> GetFace ( ) ) ;  check UV values for internal vertices if ( myClassifier -> Perform ( aPnt2d ) != TopAbs_IN ) return ; this -> registerNode ( BRep_Tool :: Pnt ( theVertex ) , aPnt2d , BRepMesh_Fixed , Standard_False ) ; } catch ( Standard_Failure const & ) { } } private : RangeSplitter myRangeSplitter ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  myClassifier ;
## Error: identifier expected, but got: ;!!!














































