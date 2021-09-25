##  Created on: 2016-04-07
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

## !!!Ignored construct:  # _IMeshData_Types_HeaderFile [NewLine] # _IMeshData_Types_HeaderFile [NewLine] # < NCollection_DataMap . hxx > [NewLine] # < NCollection_Vector . hxx > [NewLine] # < NCollection_Sequence . hxx > [NewLine] # < NCollection_List . hxx > [NewLine] # < NCollection_Shared . hxx > [NewLine] # < TopTools_ShapeMapHasher . hxx > [NewLine] # < TopoDS_Shape . hxx > [NewLine] # < NCollection_DefineAlloc . hxx > [NewLine] # < NCollection_StdAllocator . hxx > [NewLine] # < IMeshData_ParametersListArrayAdaptor . hxx > [NewLine] # < TColStd_PackedMapOfInteger . hxx > [NewLine] # < TColStd_MapIteratorOfPackedMapOfInteger . hxx > [NewLine] # < Precision . hxx > [NewLine] # < NCollection_EBTree . hxx > [NewLine] # < Bnd_Box2d . hxx > [NewLine] # < NCollection_CellFilter . hxx > [NewLine] # < NCollection_IndexedDataMap . hxx > [NewLine] # < NCollection_UBTreeFiller . hxx > [NewLine] # < NCollection_IndexedMap . hxx > [NewLine] # < BRepMesh_OrientedEdge . hxx > [NewLine] # < BRepMesh_Vertex . hxx > [NewLine] # < Bnd_B2d . hxx > [NewLine] # < BRepMesh_Circle . hxx > [NewLine] # < BRepMesh_Triangle . hxx > [NewLine] # < BRepMesh_PairOfIndex . hxx > [NewLine] # < BRepMesh_Edge . hxx > [NewLine] # < memory > [NewLine] # < queue > [NewLine] # < list > [NewLine] class IMeshData_Shape ;
## Error: did not expect [NewLine]!!!

discard "forward decl of IMeshData_Face"
discard "forward decl of IMeshData_Wire"
discard "forward decl of IMeshData_Edge"
discard "forward decl of IMeshData_Curve"
discard "forward decl of IMeshData_PCurve"
discard "forward decl of IMeshData_Model"
discard "forward decl of BRepMesh_VertexInspector"
discard "forward decl of BRepMesh_CircleInspector"
const
  DEFINE_INC_ALLOC* = void

proc delete*(a1: pointer): Operator =
  discard

## !!!Ignored construct:  [NewLine] namespace IMeshData { ! Default size for memory block allocated by IncAllocator. *
##  The idea here is that blocks of the given size are returned to the system
##  rather than retained in the malloc heap, at least on WIN32 and WIN64 platforms.
##  # _WIN64 [NewLine] const size_t MEMORY_BLOCK_SIZE_HUGE = 1024 * 1024 ; # [NewLine] const size_t MEMORY_BLOCK_SIZE_HUGE = 512 * 1024 ; # [NewLine] typedef IMeshData_Edge * IEdgePtr ; typedef IMeshData_Face * IFacePtr ; typedef opencascade :: handle < IMeshData_Edge > IEdgeHandle ; typedef opencascade :: handle < IMeshData_Wire > IWireHandle ; typedef opencascade :: handle < IMeshData_Face > IFaceHandle ; typedef opencascade :: handle < IMeshData_Curve > ICurveHandle ; typedef opencascade :: handle < IMeshData_PCurve > IPCurveHandle ; typedef IMeshData_ParametersListArrayAdaptor < ICurveHandle > ICurveArrayAdaptor ; typedef opencascade :: handle < ICurveArrayAdaptor > ICurveArrayAdaptorHandle ; typedef NCollection_Shared < NCollection_EBTree < Standard_Integer , Bnd_Box2d > > BndBox2dTree ; typedef NCollection_UBTreeFiller < Standard_Integer , Bnd_Box2d > BndBox2dTreeFiller ;  Vectors typedef NCollection_Shared < NCollection_Vector < IFaceHandle > > VectorOfIFaceHandles ; typedef NCollection_Shared < NCollection_Vector < IWireHandle > > VectorOfIWireHandles ; typedef NCollection_Shared < NCollection_Vector < IEdgeHandle > > VectorOfIEdgeHandles ; typedef NCollection_Shared < NCollection_Vector < IPCurveHandle > > VectorOfIPCurveHandles ; typedef NCollection_Shared < NCollection_Vector < IEdgePtr > > VectorOfIEdgePtrs ; typedef NCollection_Shared < NCollection_Vector < Standard_Boolean > > VectorOfBoolean ; typedef NCollection_Shared < NCollection_Vector < Standard_Integer > > VectorOfInteger ; typedef NCollection_Shared < NCollection_Vector < TopAbs_Orientation > > VectorOfOrientation ; typedef NCollection_Shared < NCollection_Vector < BRepMesh_Triangle > > VectorOfElements ; typedef NCollection_Shared < NCollection_Vector < BRepMesh_Circle > > VectorOfCircle ; typedef NCollection_Shared < NCollection_Array1 < BRepMesh_Vertex > > Array1OfVertexOfDelaun ; typedef NCollection_Shared < NCollection_Vector < BRepMesh_Vertex > > VectorOfVertex ;  Sequences typedef NCollection_Shared < NCollection_Sequence < Bnd_B2d > > SequenceOfBndB2d ; typedef NCollection_Shared < NCollection_Sequence < Standard_Integer > > SequenceOfInteger ; typedef NCollection_Shared < NCollection_Sequence < Standard_Real > > SequenceOfReal ; namespace Model { typedef std :: deque < gp_Pnt , NCollection_StdAllocator < gp_Pnt > > SequenceOfPnt ; typedef std :: deque < gp_Pnt2d , NCollection_StdAllocator < gp_Pnt2d > > SequenceOfPnt2d ; typedef std :: deque < Standard_Real , NCollection_StdAllocator < Standard_Real > > SequenceOfReal ; typedef std :: deque < Standard_Integer , NCollection_StdAllocator < Standard_Integer > > SequenceOfInteger ; }  Lists typedef NCollection_Shared < NCollection_List < Standard_Integer > > ListOfInteger ; typedef NCollection_Shared < NCollection_List < gp_Pnt2d > > ListOfPnt2d ; typedef NCollection_Shared < NCollection_List < IPCurveHandle > > ListOfIPCurves ; typedef NCollection_Shared < TColStd_PackedMapOfInteger > MapOfInteger ; typedef TColStd_MapIteratorOfPackedMapOfInteger IteratorOfMapOfInteger ; typedef NCollection_CellFilter < BRepMesh_CircleInspector > CircleCellFilter ; typedef NCollection_CellFilter < BRepMesh_VertexInspector > VertexCellFilter ;  Data Maps template < typename Type > struct WeakEqual { static Standard_Boolean IsEqual ( const Type * theFirst , const Type * theSecond ) { return ( theFirst == theSecond ) ; } ! Computes a hash code for the given pointer, in the range [1, theUpperBound]
## ! @param thePointer the pointer which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound] static Standard_Integer HashCode ( const Type * const thePointer , Standard_Integer theUpperBound ) { return :: HashCode ( thePointer , theUpperBound ) ; } } ; typedef NCollection_Shared < NCollection_DataMap < TopoDS_Shape , Standard_Integer , TopTools_ShapeMapHasher > > DMapOfShapeInteger ; typedef NCollection_Shared < NCollection_DataMap < IFacePtr , ListOfInteger , WeakEqual < IMeshData_Face > > > DMapOfIFacePtrsListOfInteger ; typedef NCollection_Shared < NCollection_Map < IEdgePtr , WeakEqual < IMeshData_Edge > > > MapOfIEdgePtr ; typedef NCollection_Shared < NCollection_Map < IFacePtr , WeakEqual < IMeshData_Face > > > MapOfIFacePtr ; typedef NCollection_Shared < NCollection_Map < BRepMesh_OrientedEdge > > MapOfOrientedEdges ; typedef NCollection_Shared < NCollection_Map < Standard_Real > > MapOfReal ; typedef NCollection_Shared < NCollection_IndexedDataMap < IFacePtr , ListOfIPCurves , WeakEqual < IMeshData_Face > > > IDMapOfIFacePtrsListOfIPCurves ; typedef NCollection_Shared < NCollection_DataMap < IFacePtr , opencascade :: handle < MapOfIEdgePtr > , WeakEqual < IMeshData_Face > > > DMapOfIFacePtrsMapOfIEdgePtrs ; typedef NCollection_Shared < NCollection_IndexedDataMap < BRepMesh_Edge , BRepMesh_PairOfIndex > > IDMapOfLink ; typedef NCollection_Shared < NCollection_DataMap < Standard_Integer , ListOfInteger > > DMapOfIntegerListOfInteger ; typedef NCollection_Shared < NCollection_DataMap < Standard_Integer , Standard_Integer > > MapOfIntegerInteger ; typedef NCollection_Shared < NCollection_IndexedMap < Standard_Real > > IMapOfReal ; typedef NCollection_Shared < NCollection_Array1 < Standard_Integer > > Array1OfInteger ; } # [NewLine]
## Error: did not expect [NewLine]!!!

