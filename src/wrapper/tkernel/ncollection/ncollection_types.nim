# PROVIDES: PtrdiffT RandomAccessIteratorTag TheItemType NCollectionArray1 NCollectionArray1valueType NCollectionArray2 NCollectionArray2valueType NCollectionArray2Iterator NCollectionDelListNode NCollectionBaseList NCollectionBaseListIterator NCollectionDelMapNode NCollectionBaseMap NCollectionBaseMapIterator NCollectionSeqNode NCollectionDelSeqNode NCollectionBaseSequence NCollectionBaseSequenceIterator NCollectionBaseVector NCollectionCellFilterAction NCollectionCellFilter NCollectionCellFilterTarget NCollectionCellFilterPoint NCollectionCellFilterInspectorXYZPoint NCollectionCellFilterInspectorXY NCollectionCellFilterInspectorXYPoint NCollectionDoubleMapIterator TheObjType TheBndType TreeNode NCollectionEBTree TheKeyType NCollectionLerp NCollectionListNode NCollectionLocalArray NCollectionMapIterator NCollectionMat4 NCollectionSparseArrayBase NCollectionSparseArrayBaseIterator NCollectionStdAllocator NCollectionStdAllocatorvalueType NCollectionStdAllocatorpointer NCollectionStdAllocatorconstPointer NCollectionStdAllocatorreference NCollectionStdAllocatorconstReference NCollectionStdAllocatorsizeType NCollectionStdAllocatordifferenceType NCollectionStlIterator NCollectionUBTree NCollectionUBTreeSelector NCollectionUBTreeTreeNode NCollectionUBTreeFiller NCollectionUBTreeFillerObjBnd NCollectionUBTreeFillerUBTreeNode StandardUtf32Char StandardWideChar NCollectionUtfIterator NCollectionUtfString NCollectionVec2 NCollectionVec3 NCollectionVec4 NCollectionVectorvalueType BidirectionalIteratorTag NCollectionSequencevalueType ForwardIteratorTag NCollectionDataMapkeyType NCollectionDataMapvalueType NCollectionDoubleMapkey1Type NCollectionDoubleMapkey2Type NCollectionMapkeyType NCollectionHandleelementType NCollectionIncAllocatoralignedT NCollectionIndexedDataMapkeyType NCollectionIndexedDataMapvalueType NCollectionIndexedDataMapIterator NCollectionIndexedMapkeyType NCollectionIndexedMapIterator TheValueType NCollectionListvalueType
# DEPENDS:  NCollectionStlIterator[RandomAccessIteratorTag,  NCollectionStlIterator[  NCollectionStlIterator[ForwardIteratorTag,  NCollectionStlIterator[ForwardIteratorTag,  object ## ! Returns hash code for the given key, in the range [1, theUpperBound]  NCollectionUBTree[TheObjType, TheBndType]  NCollectionStlIterator[ForwardIteratorTag,  NCollectionStlIterator[  NCollectionStlIterator[ForwardIteratorTag,  NCollectionStlIterator[ForwardIteratorTag,  NCollectionStlIterator[BidirectionalIteratorTag,  NCollectionStlIterator[  NCollectionStdAllocator[U]  NCollectionUBTree[TheObjType, TheBndType] NCollectionBaseVector  NCollectionStlIterator[RandomAccessIteratorTag,  NCollectionStlIterator[ NCollectionBaseSequence NCollectionSeqNode NCollectionSparseArrayBase NCollectionSparseArrayBaseIterator NCollectionBaseListIterator NCollectionListNode NCollectionBaseMap NCollectionTListNode NCollectionBaseMap NCollectionTListNode NCollectionBaseMap NCollectionTListNode NCollectionSparseArrayConstIterator NCollectionBaseAllocator NCollectionBaseAllocator StandardTransient RootObj## HandleStandardTransient NCollectionBaseAllocator NCollectionBaseAllocator NCollectionBaseMap NCollectionBaseMap NCollectionBaseList  NCollectionTListNode[TheItemType]  NCollectionStlIterator[ForwardIteratorTag,  NCollectionStlIterator[ForwardIteratorTag, StandardTransient NCollectionBaseAllocator

#import tkernel/ncollection/ncollection_types

import tkernel/standard/standard_types

type
  PtrdiffT* {.importcpp:"std::ptrdiff_t".} = object
  NCollectionBaseAllocator* {.importcpp: "NCollection_BaseAllocator",
                             header: "NCollection_BaseAllocator.hxx", bycopy.} = object of StandardTransient

  RandomAccessIteratorTag* {.importcpp:"std::random_access_iterator_tag".} = object

  TheItemType* = object

  NCollectionArray1*[TheItemType] {.importcpp: "NCollection_Array1<\'0>",
                                   header: "NCollection_Array1.hxx", bycopy.} = object of RootObj 
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
    
    


  HandleNCollectionBaseAllocator* = Handle[NCollectionBaseAllocator]

  NCollectionArray1valueType*[TheItemType] = TheItemType

  NCollectionArray2*[TheItemType] {.importcpp: "NCollection_Array2<\'0>",
                                   header: "NCollection_Array2.hxx", bycopy.} = object of RootObj 
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
    
    
    
    

  NCollectionArray2valueType*[TheItemType] = TheItemType

  NCollectionArray2Iterator*[TheItemType] {.
      importcpp: "NCollection_Array2<\'0>::Iterator",
      header: "NCollection_Array2.hxx", bycopy.} = object of RootObj 
    
    
    

  NCollectionDelListNode* = proc (a1: ptr NCollectionListNode;
                               theAl: var Handle[NCollectionBaseAllocator]) {.cdecl.}

  NCollectionBaseList* {.importcpp: "NCollection_BaseList",
                        header: "NCollection_BaseList.hxx", bycopy.} = object of RootObj 
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
    
    
    
    

  NCollectionBaseListIterator* {.importcpp: "NCollection_BaseList::Iterator",
                                header: "NCollection_BaseList.hxx", bycopy.} = object of RootObj 
    myCurrent* {.importc: "myCurrent".}: ptr NCollectionListNode 
    myPrevious* {.importc: "myPrevious".}: ptr NCollectionListNode 

  NCollectionDelMapNode* = proc (a1: ptr NCollectionListNode;
                              theAl: var Handle[NCollectionBaseAllocator]) {.cdecl.}

  NCollectionBaseMap* {.importcpp: "NCollection_BaseMap",
                       header: "NCollection_BaseMap.hxx", bycopy.} = object of RootObj 
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
    

  NCollectionBaseMapIterator* {.importcpp: "NCollection_BaseMap::Iterator",
                               header: "NCollection_BaseMap.hxx", bycopy.} = object of RootObj 
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
    
    
    
    

  NCollectionSeqNode* {.importcpp: "NCollection_SeqNode",
                       header: "NCollection_BaseSequence.hxx", bycopy.} = object of RootObj 

  NCollectionDelSeqNode* = proc (a1: ptr NCollectionSeqNode;
                              theAl: var Handle[NCollectionBaseAllocator]) {.cdecl.}

  NCollectionBaseSequence* {.importcpp: "NCollection_BaseSequence",
                            header: "NCollection_BaseSequence.hxx", bycopy.} = object of RootObj 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 

  NCollectionBaseSequenceIterator* {.importcpp: "NCollection_BaseSequence::Iterator",
                                    header: "NCollection_BaseSequence.hxx", bycopy.} = object of RootObj 
                                                                                         
                                                                                         
                                                                                         
    
    

  NCollectionBaseVector* {.importcpp: "NCollection_BaseVector",
                          header: "NCollection_BaseVector.hxx", bycopy.} = object of RootObj 
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             

  NCollectionCellFilterAction* {.size: sizeof(cint),
                                importcpp: "NCollection_CellFilter_Action",
                                header: "NCollection_CellFilter.hxx".} = enum
    CellFilterKeep = 0,         
    CellFilterPurge = 1

  NCollectionCellFilter*[Inspector] {.importcpp: "NCollection_CellFilter<\'0>",
                                     header: "NCollection_CellFilter.hxx", bycopy.} = object 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        

  NCollectionCellFilterTarget* {.importcpp:"typename Inspector::Target".} = object

  NCollectionCellFilterPoint* {.importcpp:"typename Inspector::Point".} = object

  NCollectionCellFilterInspectorXYZPoint* = XyzObj

  NCollectionCellFilterInspectorXY* {.importcpp: "NCollection_CellFilter_InspectorXY",
                                     header: "NCollection_CellFilter.hxx", bycopy.} = object 
                                                                                        
                                                                                        
                                                                                        

  NCollectionCellFilterInspectorXYPoint* = XyObj

  NCollectionDoubleMapIterator*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>::Iterator",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of RootObj 
                                                                                      
                                                                                      
                                                                                      

  TheObjType* = object

  TheBndType* = object

  TreeNode* {.importcpp:"typename UBTree::TreeNode".} = object

  NCollectionEBTree*[TheObjType; TheBndType] {.
      importcpp: "NCollection_EBTree<\'0,\'1>", header: "NCollection_EBTree.hxx",
      bycopy.} = object of RootObj

  TheKeyType* = object

  NCollectionLerp*[T] {.importcpp: "NCollection_Lerp<\'0>",
                       header: "NCollection_Lerp.hxx", bycopy.} = object 
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    

  NCollectionListNode* {.importcpp: "NCollection_ListNode",
                        header: "NCollection_ListNode.hxx", bycopy.} = object of RootObj 
                                                                         
                                                                         
    

  NCollectionLocalArray*[TheItem; Max_Array_Size: static[cint]] {.
      importcpp: "NCollection_LocalArray<\'0,\'1>",
      header: "NCollection_LocalArray.hxx", bycopy.} = object

  NCollectionMapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::Iterator",
      header: "NCollection_Map.hxx", bycopy.} = object of RootObj 
                                                                          

  NCollectionMat4*[ElementT] {.importcpp: "NCollection_Mat4<\'0>",
                              header: "NCollection_Mat4.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           
                                                                           

  NCollectionSparseArrayBase* {.importcpp: "NCollection_SparseArrayBase",
                               header: "NCollection_SparseArrayBase.hxx", bycopy.} = object of RootObj 
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
    
    
    
    
    

  NCollectionSparseArrayBaseIterator* {.importcpp: "NCollection_SparseArrayBase::Iterator", header: "NCollection_SparseArrayBase.hxx",
                                       bycopy.} = object of RootObj 
                                                      
                                                      
                                                      

  NCollectionStdAllocator*[T] {.importcpp: "NCollection_StdAllocator<\'0>",
                               header: "NCollection_StdAllocator.hxx", bycopy.} = object

  NCollectionStdAllocatorvalueType*[T] = T

  NCollectionStdAllocatorpointer* = ptr NCollectionStdAllocatorvalueType

  NCollectionStdAllocatorconstPointer* = ptr NCollectionStdAllocatorvalueType

  NCollectionStdAllocatorreference* = var NCollectionStdAllocatorvalueType

  NCollectionStdAllocatorconstReference* = NCollectionStdAllocatorvalueType

  NCollectionStdAllocatorsizeType* = csize_t

  NCollectionStdAllocatordifferenceType* = PtrdiffT

  NCollectionStlIterator*[Category; BaseIterator; ItemType;
                          IsConstant: static[bool]] {.
      importcpp: "NCollection_StlIterator<\'0,\'1,\'2,\'3>",
      header: "NCollection_StlIterator.hxx", bycopy.} = object 
    myIterator* {.importc: "myIterator".}: BaseIterator

  NCollectionUBTree*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>", header: "NCollection_UBTree.hxx",
      bycopy.} = object         
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
    
    
    

  NCollectionUBTreeSelector*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>::Selector",
      header: "NCollection_UBTree.hxx", bycopy.} = object 
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     

  NCollectionUBTreeTreeNode*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>::TreeNode",
      header: "NCollection_UBTree.hxx", bycopy.} = object
    
    
    
    

  NCollectionUBTreeFiller*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTreeFiller<\'0,\'1>",
      header: "NCollection_UBTreeFiller.hxx", bycopy.} = object 
                                                           
                                                           
                                                           
                                                           
    

  NCollectionUBTreeFillerObjBnd*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTreeFiller<\'0,\'1>::ObjBnd",
      header: "NCollection_UBTreeFiller.hxx", bycopy.} = object
    myObj* {.importc: "myObj".}: TheObjType
    myBnd* {.importc: "myBnd".}: TheBndType

  NCollectionUBTreeFillerUBTreeNode* = TreeNode

  StandardUtf32Char* = object

  StandardWideChar*  = object

  NCollectionUtfIterator*[Type] {.importcpp: "NCollection_UtfIterator<\'0>",
                                 header: "NCollection_UtfIterator.hxx", bycopy.} = object 
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     

  NCollectionUtfString*[Type] {.importcpp: "NCollection_UtfString<\'0>",
                               header: "NCollection_UtfString.hxx", bycopy.} = object 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 

  NCollectionVec2*[ElementT] {.importcpp: "NCollection_Vec2<\'0>",
                              header: "NCollection_Vec2.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           

  NCollectionVec3*[ElementT] {.importcpp: "NCollection_Vec3<\'0>",
                              header: "NCollection_Vec3.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           
    

  NCollectionVec4*[ElementT] {.importcpp: "NCollection_Vec4<\'0>",
                              header: "NCollection_Vec4.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           
    

  NCollectionVectorvalueType*[TheItemType] = TheItemType

  BidirectionalIteratorTag* {.importcpp:"std::bidirectional_iterator_tag".} = object

  NCollectionSequencevalueType*[TheItemType] = TheItemType

  ForwardIteratorTag* {.importcpp:"std::forward_iterator_tag".} = object

  NCollectionDataMapkeyType*[TheKeyType] = TheKeyType

  NCollectionDataMapvalueType*[TheItemType] = TheItemType

  NCollectionDoubleMapkey1Type*[TheKey1Type] = TheKey1Type

  NCollectionDoubleMapkey2Type*[TheKey2Type] = TheKey2Type

  NCollectionMapkeyType*[TheKeyType] = TheKeyType

  NCollectionHandleelementType*[T] = T

  NCollectionIncAllocatoralignedT* = pointer

  NCollectionIndexedDataMapkeyType*[TheKeyType] = TheKeyType

  NCollectionIndexedDataMapvalueType*[TheItemType] = TheItemType

  NCollectionIndexedDataMapIterator*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_IndexedDataMap<\'0,\'1,\'2>::Iterator",
      header: "NCollection_IndexedDataMap.hxx", bycopy.} = object 
    
    

  NCollectionIndexedMapkeyType*[TheKeyType] = TheKeyType

  NCollectionIndexedMapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>::Iterator",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object 
    
    

  TheValueType* = object

  NCollectionListvalueType*[TheItemType] = TheItemType

  NCollectionArray1Iterator*[TheItemType] {.
      importcpp: "NCollection_Array1<\'0>::Iterator",
      header: "NCollection_Array1.hxx", bycopy.} = object of RootObj 
    
    





  NCollectionArray1constIterator* = NCollectionStlIterator[
      RandomAccessIteratorTag, NCollectionArray1Iterator, TheItemType, true]



  NCollectionDataMapIterator*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>::Iterator",
      header: "NCollection_DataMap.hxx", bycopy.} = object of RootObj 
                                                                                  
                                                                                  
                                                                                  





  NCollectionDataMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionDataMapIterator, TheItemType, true]



  NCollectionDefaultHasher*[TheKeyType] {.
      importcpp: "NCollection_DefaultHasher<\'0>",
      header: "NCollection_DefaultHasher.hxx", bycopy.} = object 
                                                            
                                                            
                                                            



  NCollectionEBTreeUBTree* = NCollectionUBTree[TheObjType, TheBndType]


  NCollectionEBTreeTreeNode* = TreeNode





  NCollectionIndexedDataMapconstIterator* = NCollectionStlIterator[
      ForwardIteratorTag, NCollectionIndexedDataMapIterator, TheItemType, true]



  NCollectionIndexedMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionIndexedMapIterator, TheKeyType, true]



  NCollectionMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionMapIterator, TheKeyType, true]



  NCollectionSequenceIterator*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Iterator",
      header: "NCollection_Sequence.hxx", bycopy.} = object of RootObj 
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    





  NCollectionSequenceconstIterator* = NCollectionStlIterator[
      BidirectionalIteratorTag, NCollectionSequenceIterator, TheItemType, true]



  NCollectionStdAllocatorrebind*[T; U] {.importcpp: "NCollection_StdAllocator<\'0>::rebind<\'1>",
                                       header: "NCollection_StdAllocator.hxx",
                                       bycopy.} = object






  NCollectionUBTreeFillerUBTree* = NCollectionUBTree[TheObjType, TheBndType]


  NCollectionVector*[TheItemType] {.importcpp: "NCollection_Vector<\'0>",
                                   header: "NCollection_Vector.hxx", bycopy.} = object of NCollectionBaseVector 
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         


  NCollectionVectorIterator*[TheItemType] {.
      importcpp: "NCollection_Vector<\'0>::Iterator",
      header: "NCollection_Vector.hxx", bycopy.} = object of RootObj 
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                





  NCollectionVectorconstIterator* = NCollectionStlIterator[
      RandomAccessIteratorTag, NCollectionVectorIterator, TheItemType, true]



  NCollectionSequence*[TheItemType] {.importcpp: "NCollection_Sequence<\'0>",
                                     header: "NCollection_Sequence.hxx", bycopy.} = object of NCollectionBaseSequence 
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               


  NCollectionSequenceNode*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Node",
      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollectionSeqNode 
                                                                           



  NCollectionSparseArray*[TheItemType] {.importcpp: "NCollection_SparseArray<\'0>",
                                        header: "NCollection_SparseArray.hxx",
                                        bycopy.} = object of NCollectionSparseArrayBase 
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   



  NCollectionSparseArrayConstIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::ConstIterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of NCollectionSparseArrayBaseIterator 



  NCollectionTListIterator*[TheItemType] {.
      importcpp: "NCollection_TListIterator<\'0>",
      header: "NCollection_TListIterator.hxx", bycopy.} = object of NCollectionBaseListIterator 
                                                                      



  NCollectionTListNode*[TheItemType] {.importcpp: "NCollection_TListNode<\'0>",
                                      header: "NCollection_TListNode.hxx", bycopy.} = object of NCollectionListNode 
                                                                                                             
                                                                                                             
    



  NCollectionDataMap*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollectionBaseMap 
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          
                                                                          


  NCollectionDataMapDataMapNode*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>::DataMapNode",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollectionTListNode[
      TheItemType]            



  NCollectionDoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollectionBaseMap 
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            


  NCollectionDoubleMapDoubleMapNode*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>::DoubleMapNode",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollectionTListNode[
      TheKey2Type]            



  NCollectionMap*[TheKeyType; Hasher] {.importcpp: "NCollection_Map<\'0,\'1>",
                                      header: "NCollection_Map.hxx", bycopy.} = object of NCollectionBaseMap 
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      


  NCollectionMapMapNode*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::MapNode",
      header: "NCollection_Map.hxx", bycopy.} = object of NCollectionTListNode[
      TheKeyType]             



  NCollectionSparseArrayIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::Iterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of NCollectionSparseArrayConstIterator 
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               



  NCollectionAccAllocator* {.importcpp: "NCollection_AccAllocator",
                            header: "NCollection_AccAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
    



  NCollectionAlignedAllocator* {.importcpp: "NCollection_AlignedAllocator",
                                header: "NCollection_AlignedAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator 
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
    



  NCollectionBuffer* {.importcpp: "NCollection_Buffer",
                      header: "NCollection_Buffer.hxx", bycopy.} = object of StandardTransient 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
    
    
    



  NCollectionCellFilterInspectorXYZ* {.importcpp: "NCollection_CellFilter_InspectorXYZ",
                                      header: "NCollection_CellFilter.hxx", bycopy.} = object of RootObj
                                                                                         
                                                                                         
                                                                                         



  NCollectionHandle*[T] {.importcpp: "NCollection_Handle<\'0>",
                         header: "NCollection_Handle.hxx", bycopy.} = object of HandleStandardTransient





  NCollectionHeapAllocator* {.importcpp: "NCollection_HeapAllocator",
                             header: "NCollection_HeapAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator 
                                                                                                             
                                                                                                             
                                                                                                             



  NCollectionIncAllocator* {.importcpp: "NCollection_IncAllocator::NCollection_IncAllocator",
                            header: "NCollection_IncAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           


  NCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_IndexedDataMap<\'0,\'1,\'2>",
      header: "NCollection_IndexedDataMap.hxx", bycopy.} = object of NCollectionBaseMap 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 


  NCollectionIndexedMap*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object of NCollectionBaseMap 
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             


  NCollectionList*[TheItemType] {.importcpp: "NCollection_List<\'0>",
                                 header: "NCollection_List.hxx", bycopy.} = object of NCollectionBaseList 
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   


  NCollectionListListNode* = NCollectionTListNode[TheItemType]


  NCollectionListIterator* = NCollectionTListIterator[TheItemType]




  NCollectionListconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionListIterator, TheItemType, true]



  NCollectionShared*[T] {.importcpp: "NCollection_Shared<\'0>",
                         header: "NCollection_Shared.hxx", bycopy.} = object of StandardTransient 
                                                                                           
                                                                                           
                                                                                           

  



  NCollectionWinHeapAllocator* {.importcpp: "NCollection_WinHeapAllocator",
                                header: "NCollection_WinHeapAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator 
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   
                                                                                                                   








