type
  NCollectionAccAllocator* {.importcpp: "NCollection_AccAllocator",
                            header: "NCollection_AccAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator ##  --------- PUBLIC CONSTANTS ---------
                                                                                                           ## ! Alignment of all allocated objects: 4 bytes
                                                                                                           ## ! Constructor
                                                                                                           ## ! Size value aligned to a 4 byte boundary
                                                                                                           ## ! Calculate a key for the data map basing on the given address
    ##  Declaration of CASCADE RTTI
type
  NCollectionAlignedAllocator* {.importcpp: "NCollection_AlignedAllocator",
                                header: "NCollection_AlignedAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator ##
                                                                                                                   ## !
                                                                                                                   ## Constructor.
                                                                                                                   ## The
                                                                                                                   ## alignment
                                                                                                                   ## should
                                                                                                                   ## be
                                                                                                                   ## specified
                                                                                                                   ## explicitly:
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## 16
                                                                                                                   ## bytes
                                                                                                                   ## for
                                                                                                                   ## SSE
                                                                                                                   ## instructions
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## 32
                                                                                                                   ## bytes
                                                                                                                   ## for
                                                                                                                   ## AVX
                                                                                                                   ## instructions
    ## !< alignment in bytes
type
  PtrdiffT* {.importcpp:"std::ptrdiff_t".} = object
  RandomAccessIteratorTag* {.importcpp:"std::random_access_iterator_tag".} = object
  TheItemType* = object
  NCollectionArray1*[TheItemType] {.importcpp: "NCollection_Array1<\'0>",
                                   header: "NCollection_Array1.hxx", bycopy.} = object of RootObj ##
                                                                                  ## !
                                                                                  ## STL-compliant
                                                                                  ## typedef
                                                                                  ## for
                                                                                  ## value
                                                                                  ## type
                                                                                  ##
                                                                                  ## !
                                                                                  ## Implementation
                                                                                  ## of
                                                                                  ## the
                                                                                  ## Iterator
                                                                                  ## interface.
                                                                                  ##
                                                                                  ## ----------
                                                                                  ## PUBLIC
                                                                                  ## METHODS
                                                                                  ## ------------
                                                                                  ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor;
                                                                                  ## should
                                                                                  ## be
                                                                                  ## used
                                                                                  ## with
                                                                                  ## caution.
                                                                                  ##
                                                                                  ## !
                                                                                  ## @sa
                                                                                  ## methods
                                                                                  ## Resize()
                                                                                  ## and
                                                                                  ## Move().
                                                                                  ##
                                                                                  ## ----------
                                                                                  ## PROTECTED
                                                                                  ## FIELDS
                                                                                  ## -----------
    ## !< Flag showing who allocated the array
    ## !< Pointer to '0'th array item
  NCollectionArray1valueType*[TheItemType] = TheItemType
  NCollectionArray1Iterator*[TheItemType] {.
      importcpp: "NCollection_Array1<\'0>::Iterator",
      header: "NCollection_Array1.hxx", bycopy.} = object of RootObj ## ! Empty constructor - for later Init
    ## !< Pointer to the current element in the array
    ## !< Pointer to the past-the-end element in the array
type
#  NCollectionArray1iterator* = NCollectionStlIterator[RandomAccessIteratorTag,
#      NCollectionArray1Iterator, TheItemType, False]
  NCollectionArray1constIterator* = NCollectionStlIterator[
      RandomAccessIteratorTag, NCollectionArray1Iterator, TheItemType, true]
type
  NCollectionArray2*[TheItemType] {.importcpp: "NCollection_Array2<\'0>",
                                   header: "NCollection_Array2.hxx", bycopy.} = object of RootObj ##
                                                                                  ## !
                                                                                  ## STL-compliant
                                                                                  ## typedef
                                                                                  ## for
                                                                                  ## value
                                                                                  ## type
                                                                                  ##
                                                                                  ## ****************
                                                                                  ## Implementation
                                                                                  ## of
                                                                                  ## the
                                                                                  ## Iterator
                                                                                  ## interface.
                                                                                  ##
                                                                                  ## ----------
                                                                                  ## PUBLIC
                                                                                  ## METHODS
                                                                                  ## ------------
                                                                                  ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor;
                                                                                  ## should
                                                                                  ## be
                                                                                  ## used
                                                                                  ## with
                                                                                  ## caution.
                                                                                  ##
                                                                                  ## !
                                                                                  ## @sa
                                                                                  ## methods
                                                                                  ## Resize()
                                                                                  ## and
                                                                                  ## Move().
                                                                                  ##
                                                                                  ## -----------
                                                                                  ## PRIVATE
                                                                                  ## METHODS
                                                                                  ## -----------
                                                                                  ##
                                                                                  ## !
                                                                                  ## Allocate
                                                                                  ## memory
                                                                                  ## for
                                                                                  ## the
                                                                                  ## array,
                                                                                  ## set
                                                                                  ## up
                                                                                  ## indirection
                                                                                  ## table
                                                                                  ##
                                                                                  ## ----------
                                                                                  ## PROTECTED
                                                                                  ## FIELDS
                                                                                  ## -----------
    ## !< Pointer to the row pointers table
    ## !< Pointer to the memory array
    ## !< Flag showing who allocated the array
    ##  ----------- FRIEND CLASSES ------------
  NCollectionArray2valueType*[TheItemType] = TheItemType
  NCollectionArray2Iterator*[TheItemType] {.
      importcpp: "NCollection_Array2<\'0>::Iterator",
      header: "NCollection_Array2.hxx", bycopy.} = object of RootObj ## ! Empty constructor - for later Init
    ## !< Index of the current item
    ## !< Total amount of items
    ## !< Pointer to the array being iterated
type
  NCollectionDelListNode* = proc (a1: ptr NCollectionListNode;
                               theAl: var Handle[NCollectionBaseAllocator]) {.cdecl.}
##  ********************************************************** BaseList class
type
  NCollectionBaseList* {.importcpp: "NCollection_BaseList",
                        header: "NCollection_BaseList.hxx", bycopy.} = object of RootObj ## ! Memory
                                                                         ## allocation
                                                                         ##
                                                                         ## ---------- PUBLIC METHODS
                                                                         ## ------------
                                                                         ##
                                                                         ## ******** Extent
                                                                         ##
                                                                         ## Purpose: Returns the number of nodes in the list
                                                                         ##
                                                                         ## ---------
                                                                         ## PROTECTED METHODS
                                                                         ## ----------
                                                                         ##
                                                                         ## ********
                                                                         ## Constructor
                                                                         ##
                                                                         ## Purpose:
                                                                         ## Initializes an empty list
                                                                         ##
                                                                         ## ------------
                                                                         ## PROTECTED FIELDS
                                                                         ## ------------
    ##  Pointer to the head
    ##  Pointer to the tail
    ##  Actual length
    ##  ------------ FRIEND CLASSES ------------
  NCollectionBaseListIterator* {.importcpp: "NCollection_BaseList::Iterator",
                                header: "NCollection_BaseList.hxx", bycopy.} = object of RootObj ##  ******** Empty constructor
    myCurrent* {.importc: "myCurrent".}: ptr NCollectionListNode ##  Pointer to the current node
    myPrevious* {.importc: "myPrevious".}: ptr NCollectionListNode ##  Pointer to the previous one
type
  NCollectionDelMapNode* = proc (a1: ptr NCollectionListNode;
                              theAl: var Handle[NCollectionBaseAllocator]) {.cdecl.}
## *
##  Purpose:     This is a base class for all Maps:
##                 Map
##                 DataMap
##                 DoubleMap
##                 IndexedMap
##                 IndexedDataMap
##               Provides utilitites for managing the buckets.
##
type
  NCollectionBaseMap* {.importcpp: "NCollection_BaseMap",
                       header: "NCollection_BaseMap.hxx", bycopy.} = object of RootObj ## ! Memory
                                                                       ## allocation
                                                                       ##
                                                                       ## **************************************** Class Iterator
                                                                       ## ****************
                                                                       ##
                                                                       ## ---------- PUBLIC METHODS
                                                                       ## ------------
                                                                       ## ! NbBuckets
                                                                       ##  -------- PROTECTED METHODS
                                                                       ## -----------
                                                                       ## !
                                                                       ## Constructor
                                                                       ##  --------- PROTECTED FIELDS
                                                                       ## -----------
                                                                       ##
                                                                       ## ---------- PRIVATE FIELDS
                                                                       ## ------------
    ##  ---------- FRIEND CLASSES ------------
  NCollectionBaseMapIterator* {.importcpp: "NCollection_BaseMap::Iterator",
                               header: "NCollection_BaseMap.hxx", bycopy.} = object of RootObj ## !
                                                                               ## Empty
                                                                               ## constructor
                                                                               ## !
                                                                               ## Initialize
                                                                               ## !
                                                                               ## PMore
                                                                               ##
                                                                               ## ----------
                                                                               ## PRIVATE
                                                                               ## FIELDS
                                                                               ## ------------
    ## !< Total buckets in the map
    ## !< Location in memory
    ## !< Current bucket
    ## !< Current node
type
  NCollectionSeqNode* {.importcpp: "NCollection_SeqNode",
                       header: "NCollection_BaseSequence.hxx", bycopy.} = object of RootObj ##  define new operator for use with NCollection allocators
type
  NCollectionDelSeqNode* = proc (a1: ptr NCollectionSeqNode;
                              theAl: var Handle[NCollectionBaseAllocator]) {.cdecl.}
## *
##  Purpose:     This  is  a base  class  for  the  Sequence.  It  deals with
##               an indexed bidirectional list of NCollection_SeqNode's.
##
type
  NCollectionBaseSequence* {.importcpp: "NCollection_BaseSequence",
                            header: "NCollection_BaseSequence.hxx", bycopy.} = object of RootObj ##
                                                                                 ## !
                                                                                 ## Memory
                                                                                 ## allocation
                                                                                 ##
                                                                                 ## Methods
                                                                                 ## PUBLIC
                                                                                 ##
                                                                                 ##
                                                                                 ## Methods
                                                                                 ## PROTECTED
                                                                                 ##
                                                                                 ##
                                                                                 ## Fields
                                                                                 ## PROTECTED
                                                                                 ##
                                                                                 ##
                                                                                 ## Methods
                                                                                 ## PRIVATE
                                                                                 ##
  NCollectionBaseSequenceIterator* {.importcpp: "NCollection_BaseSequence::Iterator",
                                    header: "NCollection_BaseSequence.hxx", bycopy.} = object of RootObj ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
    ## !< Pointer to the current node
    ## !< Pointer to the previous node
type
  NCollectionBaseVector* {.importcpp: "NCollection_BaseVector",
                          header: "NCollection_BaseVector.hxx", bycopy.} = object of RootObj ## !
                                                                             ## Memory
                                                                             ## allocation
                                                                             ##
                                                                             ## Auxiliary
                                                                             ## structure for
                                                                             ## memory
                                                                             ## blocks
                                                                             ## !
                                                                             ## @name
                                                                             ## Block
                                                                             ## initializer
                                                                             ## !
                                                                             ## @name
                                                                             ## protected
                                                                             ## methods
                                                                             ## !
                                                                             ## Empty
                                                                             ## constructor
                                                                             ## !
                                                                             ## @name
                                                                             ## public API
                                                                             ## !
                                                                             ## Empty the
                                                                             ## vector of its
                                                                             ## objects
                                                                             ## !
                                                                             ## @name
                                                                             ## Protected
                                                                             ## fields
type
  NCollectionBuffer* {.importcpp: "NCollection_Buffer",
                      header: "NCollection_Buffer.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Default
                                                                                        ## constructor.
                                                                                        ##
                                                                                        ## !
                                                                                        ## When
                                                                                        ## theData
                                                                                        ## is
                                                                                        ## NULL
                                                                                        ## but
                                                                                        ## theSize
                                                                                        ## is
                                                                                        ## not
                                                                                        ## 0
                                                                                        ## than
                                                                                        ## buffer
                                                                                        ## of
                                                                                        ## specified
                                                                                        ## size
                                                                                        ## will
                                                                                        ## be
                                                                                        ## allocated.
                                                                                        ##
                                                                                        ## !
                                                                                        ## @param
                                                                                        ## theAlloc
                                                                                        ## memory
                                                                                        ## allocator
                                                                                        ##
                                                                                        ## !
                                                                                        ## @param
                                                                                        ## theSize
                                                                                        ## buffer
                                                                                        ## size
                                                                                        ##
                                                                                        ## !
                                                                                        ## @param
                                                                                        ## theData
                                                                                        ## buffer
                                                                                        ## data
                                                                                        ## allocated
                                                                                        ## by
                                                                                        ## theAlloc
    ## !< data pointer
    ## !< buffer length in bytes
    ## !< buffer allocator
type
  NCollectionCellFilterAction* {.size: sizeof(cint),
                                importcpp: "NCollection_CellFilter_Action",
                                header: "NCollection_CellFilter.hxx".} = enum
    CellFilterKeep = 0,         ## !< Target is needed and should be kept
    CellFilterPurge = 1
## *
##  A data structure for sorting geometric objects (called targets) in
##  n-dimensional space into cells, with associated algorithm for fast checking
##  of coincidence (overlapping, intersection, etc.) with other objects
##  (called here bullets).
##
##  Description
##
##  The algorithm is based on hash map, thus it has linear time of initialization
##  (O(N) where N is number of cells covered by added targets) and constant-time
##  search for one bullet (more precisely, O(M) where M is number of cells covered
##  by the bullet).
##
##  The idea behind the algorithm is to separate each co-ordinate of the space
##  into equal-size cells. Note that this works well when cell size is
##  approximately equal to the characteristic size of the involved objects
##  (targets and bullets; including tolerance eventually used for coincidence
##  check).
##
##  Usage
##
##  The target objects to be searched are added to the tool by methods Add();
##  each target is classified as belonging to some cell(s). The data on cells
##  (list of targets found in each one) are stored in the hash map with key being
##  cumulative index of the cell by all co-ordinates.
##  Thus the time needed to find targets in some cell is O(1) * O(number of
##  targets in the cell).
##
##  As soon as all the targets are added, the algorithm is ready to check for
##  coincidence.
##  To find the targets coincident with any given bullet, it checks all the
##  candidate targets in the cell(s) covered by the bullet object
##  (methods Inspect()).
##
##  The methods Add() and Inspect() have two flavours each: one accepts
##  single point identifying one cell, another accept two points specifying
##  the range of cells. It should be noted that normally at least one of these
##  methods is called as for range of cells: either due to objects having non-
##  zero size, or in order to account for the tolerance when objects are points.
##
##  The set of targets can be modified during the process: new targets can be
##  added by Add(), existing targets can be removed by Remove().
##
##  Implementation
##
##  The algorithm is implemented as template class, thus it is capable to
##  work with objects of any type. The only argument of the template should be
##  the specific class providing all necessary features required by the
##  algorithm:
##
##  - typedef "Target" defining type of target objects.
##    This type must have copy constructor
##
##  - typedef "Point" defining type of geometrical points used
##
##  - enum Dimension whose value must be dimension of the point
##
##  - method Coord() returning value of the i-th coordinate of the point:
##
##    static Standard_Real Coord (int i, const Point& thePnt);
##
##    Note that index i is from 0 to Dimension-1.
##
##  - method IsEqual() used by Remove() to identify objects to be removed:
##
##    Standard_Boolean IsEqual (const Target& theT1, const Target& theT2);
##
##  - method Inspect() performing necessary actions on the candidate target
##    object (usially comparison with the currently checked bullet object):
##
##    NCollection_CellFilter_Action Inspect (const Target& theObject);
##
##    The returned value can be used to command CellFilter
##    to remove the inspected item from the current cell; this allows
##    to exclude the items that has been processed and are not needed any
##    more in further search (for better performance).
##
##    Note that method Inspect() can be const and/or virtual.
##
type
  NCollectionCellFilter*[Inspector] {.importcpp: "NCollection_CellFilter<\'0>",
                                     header: "NCollection_CellFilter.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Constructor;
                                                                                        ## initialized
                                                                                        ## by
                                                                                        ## dimension
                                                                                        ## count
                                                                                        ## and
                                                                                        ## cell
                                                                                        ## size.
                                                                                        ##
                                                                                        ## !
                                                                                        ##
                                                                                        ## !
                                                                                        ## Note:
                                                                                        ## the
                                                                                        ## cell
                                                                                        ## size
                                                                                        ## must
                                                                                        ## be
                                                                                        ## ensured
                                                                                        ## to
                                                                                        ## be
                                                                                        ## greater
                                                                                        ## than
                                                                                        ##
                                                                                        ## !
                                                                                        ## maximal
                                                                                        ## co-ordinate
                                                                                        ## of
                                                                                        ## the
                                                                                        ## involved
                                                                                        ## points
                                                                                        ## divided
                                                                                        ## by
                                                                                        ## INT_MAX,
                                                                                        ##
                                                                                        ## !
                                                                                        ## in
                                                                                        ## order
                                                                                        ## to
                                                                                        ## avoid
                                                                                        ## integer
                                                                                        ## overflow
                                                                                        ## of
                                                                                        ## cell
                                                                                        ## index.
                                                                                        ##
                                                                                        ## !
                                                                                        ##
                                                                                        ## !
                                                                                        ## By
                                                                                        ## default
                                                                                        ## cell
                                                                                        ## size
                                                                                        ## is
                                                                                        ## 0,
                                                                                        ## which
                                                                                        ## is
                                                                                        ## invalid;
                                                                                        ## thus
                                                                                        ## if
                                                                                        ## default
                                                                                        ##
                                                                                        ## !
                                                                                        ## constructor
                                                                                        ## is
                                                                                        ## used,
                                                                                        ## the
                                                                                        ## tool
                                                                                        ## must
                                                                                        ## be
                                                                                        ## initialized
                                                                                        ## later
                                                                                        ## with
                                                                                        ##
                                                                                        ## !
                                                                                        ## appropriate
                                                                                        ## cell
                                                                                        ## size
                                                                                        ## by
                                                                                        ## call
                                                                                        ## to
                                                                                        ## Reset()
                                                                                        ##
                                                                                        ## !
                                                                                        ## Constructor
                                                                                        ## when
                                                                                        ## dimension
                                                                                        ## count
                                                                                        ## is
                                                                                        ## unknown
                                                                                        ## at
                                                                                        ## compilation
                                                                                        ## time.
                                                                                        ##
                                                                                        ## *
                                                                                        ##
                                                                                        ## Auxiliary
                                                                                        ## class
                                                                                        ## for
                                                                                        ## storing
                                                                                        ## points
                                                                                        ## belonging
                                                                                        ## to
                                                                                        ## the
                                                                                        ## cell
                                                                                        ## as
                                                                                        ## the
                                                                                        ## list
                                                                                        ##
                                                                                        ##
                                                                                        ## !
                                                                                        ## Reset
                                                                                        ## allocator
                                                                                        ## to
                                                                                        ## the
                                                                                        ## new
                                                                                        ## one
  NCollectionCellFilterTarget* {.importcpp:"typename Inspector::Target".} = object
  NCollectionCellFilterPoint* {.importcpp:"typename Inspector::Point".} = object
type
  NCollectionCellFilterInspectorXYZ* {.importcpp: "NCollection_CellFilter_InspectorXYZ",
                                      header: "NCollection_CellFilter.hxx", bycopy.} = object of RootObj##
                                                                                         ## !
                                                                                         ## Points
                                                                                         ## dimension
type
  NCollectionCellFilterInspectorXYZPoint* = XyzObj
type
  NCollectionCellFilterInspectorXY* {.importcpp: "NCollection_CellFilter_InspectorXY",
                                     header: "NCollection_CellFilter.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Points
                                                                                        ## dimension
type
  NCollectionCellFilterInspectorXYPoint* = XyObj
type
  ForwardIteratorTag* {.importcpp:"std::forward_iterator_tag".} = object
  NCollectionDataMap*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollectionBaseMap ## !
                                                                          ## STL-compliant
                                                                          ## typedef for key type
                                                                          ##
                                                                          ## ****************
                                                                          ## Adaptation of the
                                                                          ## TListNode to the
                                                                          ## DATAmap
                                                                          ##
                                                                          ## ****************
                                                                          ## Implementation of the
                                                                          ## Iterator
                                                                          ## interface.
                                                                          ##
                                                                          ## ---------- PUBLIC
                                                                          ## METHODS
                                                                          ## ------------
                                                                          ## ! Empty
                                                                          ## Constructor.
                                                                          ##
                                                                          ## ----------
                                                                          ## PROTECTED
                                                                          ## METHODS
                                                                          ## ----------
                                                                          ## ! Lookup for
                                                                          ## particular key in map.
                                                                          ## Returns true if key is found and
                                                                          ## !
                                                                          ## thepNode points to binded node.
                                                                          ## Returns false if key is not found,
                                                                          ## !
                                                                          ## thehNode value is this case is not
                                                                          ## usable.
  NCollectionDataMapkeyType*[TheKeyType] = TheKeyType
  NCollectionDataMapvalueType*[TheItemType] = TheItemType
  NCollectionDataMapDataMapNode*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>::DataMapNode",
      header: "NCollection_DataMap.hxx", bycopy.} = object of NCollectionTListNode[
      TheItemType]            ## ! Constructor with 'Next'
type
  NCollectionDataMapIterator*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_DataMap<\'0,\'1,\'2>::Iterator",
      header: "NCollection_DataMap.hxx", bycopy.} = object of RootObj ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor
type
#  NCollectionDataMapiterator* = NCollectionStlIterator[ForwardIteratorTag,
#      NCollectionDataMapIterator, TheItemType, False]
  NCollectionDataMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionDataMapIterator, TheItemType, true]
type
  NCollectionDefaultHasher*[TheKeyType] {.
      importcpp: "NCollection_DefaultHasher<\'0>",
      header: "NCollection_DefaultHasher.hxx", bycopy.} = object ## ! Returns hash code for the given key, in the range [1, theUpperBound]
                                                            ## ! @param theKey the key which hash code is to be computed
                                                            ## ! @param theUpperBound the upper bound of the range a computing hash code must be within
                                                            ## ! @return a computed hash code, in the range [1, theUpperBound]
type
  NCollectionDoubleMap*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollectionBaseMap ## !
                                                                            ## STL-compliant
                                                                            ## typedef for key1 type
                                                                            ##
                                                                            ## ****************
                                                                            ## Adaptation of the
                                                                            ## TListNode to the
                                                                            ## DOUBLEmap
                                                                            ##
                                                                            ## ****************
                                                                            ## Implementation of the
                                                                            ## Iterator
                                                                            ## interface.
                                                                            ##
                                                                            ## ----------
                                                                            ## PUBLIC
                                                                            ## METHODS
                                                                            ## ------------
                                                                            ## !
                                                                            ## Empty
                                                                            ## constructor.
  NCollectionDoubleMapkey1Type*[TheKey1Type] = TheKey1Type
  NCollectionDoubleMapkey2Type*[TheKey2Type] = TheKey2Type
  NCollectionDoubleMapDoubleMapNode*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>::DoubleMapNode",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of NCollectionTListNode[
      TheKey2Type]            ## ! Constructor with 'Next'
type
  NCollectionDoubleMapIterator*[TheKey1Type; TheKey2Type; Hasher1; Hasher2] {.
      importcpp: "NCollection_DoubleMap<\'0,\'1,\'2,\'3>::Iterator",
      header: "NCollection_DoubleMap.hxx", bycopy.} = object of RootObj ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor
type
  TheObjType* = object
  TheBndType* = object
  TreeNode* {.importcpp:"typename UBTree::TreeNode".} = object
  NCollectionEBTree*[TheObjType; TheBndType] {.
      importcpp: "NCollection_EBTree<\'0,\'1>", header: "NCollection_EBTree.hxx",
      bycopy.} = object of RootObj
  NCollectionEBTreeUBTree* = NCollectionUBTree[TheObjType, TheBndType]
  NCollectionEBTreeTreeNode* = TreeNode
type
  NCollectionHandle*[T] {.importcpp: "NCollection_Handle<\'0>",
                         header: "NCollection_Handle.hxx", bycopy.} = object of HandleStandardTransient
#      StandardTransient] ## ! Internal adaptor class wrapping actual type
#                        ## ! and enhancing it by reference counter inherited from
#                        ## ! Standard_Transient
  NCollectionHandleelementType*[T] = T
type
  NCollectionHeapAllocator* {.importcpp: "NCollection_HeapAllocator",
                             header: "NCollection_HeapAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator ##  ---------- PUBLIC METHODS ----------
                                                                                                             ## ! Constructor - prohibited
                                                                                                             ## ! Copy constructor - prohibited
                                                                                                             ##  Declaration of CASCADE RTTI
type
  NCollectionIncAllocator* {.importcpp: "NCollection_IncAllocator::NCollection_IncAllocator",
                            header: "NCollection_IncAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator ##  The type defining the alignement of allocated objects
                                                                                                           ##  Prohibited methods
                                                                                                           ##  ----- PROTECTED CLASS IBlock -------
                                                                                                           ##  --------- PROTECTED FIELDS ---------
                                                                                                           ##  Declaration of CASCADE RTTI
  NCollectionIncAllocatoralignedT* = pointer
type
  NCollectionIndexedDataMap*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_IndexedDataMap<\'0,\'1,\'2>",
      header: "NCollection_IndexedDataMap.hxx", bycopy.} = object of NCollectionBaseMap ##
                                                                                 ## !
                                                                                 ## STL-compliant
                                                                                 ## typedef
                                                                                 ## for
                                                                                 ## key
                                                                                 ## type
                                                                                 ##
                                                                                 ## !
                                                                                 ## Adaptation
                                                                                 ## of
                                                                                 ## the
                                                                                 ## TListNode
                                                                                 ## to
                                                                                 ## the
                                                                                 ## INDEXEDDatamap
                                                                                 ##
                                                                                 ## !
                                                                                 ## Implementation
                                                                                 ## of
                                                                                 ## the
                                                                                 ## Iterator
                                                                                 ## interface.
                                                                                 ##
                                                                                 ## ----------
                                                                                 ## PUBLIC
                                                                                 ## METHODS
                                                                                 ## ------------
                                                                                 ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor.
                                                                                 ##
                                                                                 ## -----------
                                                                                 ## PRIVATE
                                                                                 ## METHODS
                                                                                 ## -----------
  NCollectionIndexedDataMapkeyType*[TheKeyType] = TheKeyType
  NCollectionIndexedDataMapvalueType*[TheItemType] = TheItemType
  NCollectionIndexedDataMapIterator*[TheKeyType; TheItemType; Hasher] {.
      importcpp: "NCollection_IndexedDataMap<\'0,\'1,\'2>::Iterator",
      header: "NCollection_IndexedDataMap.hxx", bycopy.} = object ## ! Empty constructor
    ## !< Pointer to current node
    ## !< Current index
type
#  NCollectionIndexedDataMapiterator* = NCollectionStlIterator[ForwardIteratorTag,
#      NCollectionIndexedDataMapIterator, TheItemType, False]
  NCollectionIndexedDataMapconstIterator* = NCollectionStlIterator[
      ForwardIteratorTag, NCollectionIndexedDataMapIterator, TheItemType, true]
type
  NCollectionIndexedMap*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object of NCollectionBaseMap ## !
                                                                             ## STL-compliant
                                                                             ## typedef for key
                                                                             ## type
                                                                             ## !
                                                                             ## Adaptation of the
                                                                             ## TListNode to the
                                                                             ## INDEXEDmap
                                                                             ##
                                                                             ## ****************
                                                                             ## Implementation of the
                                                                             ## Iterator
                                                                             ## interface.
                                                                             ##
                                                                             ## ----------
                                                                             ## PUBLIC
                                                                             ## METHODS
                                                                             ## ------------
                                                                             ## !
                                                                             ## Empty
                                                                             ## constructor.
  NCollectionIndexedMapkeyType*[TheKeyType] = TheKeyType
  NCollectionIndexedMapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_IndexedMap<\'0,\'1>::Iterator",
      header: "NCollection_IndexedMap.hxx", bycopy.} = object ## ! Empty constructor
    ##  Pointer to the map being iterated
    ##  Current index
type
  TheKeyType* = object
  NCollectionIndexedMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionIndexedMapIterator, TheKeyType, true]
type
  NCollectionLerp*[T] {.importcpp: "NCollection_Lerp<\'0>",
                       header: "NCollection_Lerp.hxx", bycopy.} = object ## ! Compute interpolated value between two values.
                                                                    ## ! @param theStart first  value
                                                                    ## ! @param theEnd   second value
                                                                    ## ! @param theT normalized
                                                                    ## interpolation coefficient within [0, 1] range,
                                                                    ## !             with 0 pointing to theStart and 1 to theEnd.
                                                                    ## ! Empty constructor
type
  TheValueType* = object
  NCollectionList*[TheItemType] {.importcpp: "NCollection_List<\'0>",
                                 header: "NCollection_List.hxx", bycopy.} = object of NCollectionBaseList ##
                                                                                                   ## !
                                                                                                   ## STL-compliant
                                                                                                   ## typedef
                                                                                                   ## for
                                                                                                   ## value
                                                                                                   ## type
                                                                                                   ##
                                                                                                   ## ----------
                                                                                                   ## PUBLIC
                                                                                                   ## METHODS
                                                                                                   ## ------------
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor.
                                                                                                   ##
                                                                                                   ## -----------
                                                                                                   ## PRIVATE
                                                                                                   ## METHODS
                                                                                                   ## -----------
  NCollectionListvalueType*[TheItemType] = TheItemType
  NCollectionListListNode* = NCollectionTListNode[TheItemType]
  NCollectionListIterator* = NCollectionTListIterator[TheItemType]
#  NCollectionListiterator* = NCollectionStlIterator[ForwardIteratorTag,
#      NCollectionListIterator, TheItemType, False]
  NCollectionListconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionListIterator, TheItemType, true]
type
  NCollectionListNode* {.importcpp: "NCollection_ListNode",
                        header: "NCollection_ListNode.hxx", bycopy.} = object of RootObj ##  define new operator for use with NCollection allocators
                                                                         ## ! The only constructor
                                                                         ## ! operator= - forbidden
    ## !< Pointer to the next node
type
  NCollectionLocalArray*[TheItem; Max_Array_Size: static[cint]] {.
      importcpp: "NCollection_LocalArray<\'0,\'1>",
      header: "NCollection_LocalArray.hxx", bycopy.} = object
type
  NCollectionMap*[TheKeyType; Hasher] {.importcpp: "NCollection_Map<\'0,\'1>",
                                      header: "NCollection_Map.hxx", bycopy.} = object of NCollectionBaseMap ##
                                                                                                      ## !
                                                                                                      ## STL-compliant
                                                                                                      ## typedef
                                                                                                      ## for
                                                                                                      ## key
                                                                                                      ## type
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Adaptation
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## TListNode
                                                                                                      ## to
                                                                                                      ## the
                                                                                                      ## map
                                                                                                      ## notations
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Implementation
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## Iterator
                                                                                                      ## interface.
                                                                                                      ##
                                                                                                      ## ----------
                                                                                                      ## PUBLIC
                                                                                                      ## METHODS
                                                                                                      ## ------------
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor.
                                                                                                      ##
                                                                                                      ## !@name
                                                                                                      ## Boolean
                                                                                                      ## operations
                                                                                                      ## with
                                                                                                      ## maps
                                                                                                      ## as
                                                                                                      ## sets
                                                                                                      ## of
                                                                                                      ## keys
                                                                                                      ##
                                                                                                      ## !@{
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @return
                                                                                                      ## true
                                                                                                      ## if
                                                                                                      ## two
                                                                                                      ## maps
                                                                                                      ## contains
                                                                                                      ## exactly
                                                                                                      ## the
                                                                                                      ## same
                                                                                                      ## keys
  NCollectionMapkeyType*[TheKeyType] = TheKeyType
  NCollectionMapMapNode*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::MapNode",
      header: "NCollection_Map.hxx", bycopy.} = object of NCollectionTListNode[
      TheKeyType]             ## ! Constructor with 'Next'
type
  NCollectionMapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::Iterator",
      header: "NCollection_Map.hxx", bycopy.} = object of RootObj ## ! Empty
                                                                          ## constructor
type
  NCollectionMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionMapIterator, TheKeyType, true]
type
  NCollectionMat4*[ElementT] {.importcpp: "NCollection_Mat4<\'0>",
                              header: "NCollection_Mat4.hxx", bycopy.} = object ## ! Get
                                                                           ## number of rows.
                                                                           ## !
                                                                           ## @return
                                                                           ## number of rows.
type
  BidirectionalIteratorTag* {.importcpp:"std::bidirectional_iterator_tag".} = object
  NCollectionSequence*[TheItemType] {.importcpp: "NCollection_Sequence<\'0>",
                                     header: "NCollection_Sequence.hxx", bycopy.} = object of NCollectionBaseSequence ##
                                                                                                               ## !
                                                                                                               ## STL-compliant
                                                                                                               ## typedef
                                                                                                               ## for
                                                                                                               ## value
                                                                                                               ## type
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## Class
                                                                                                               ## defining
                                                                                                               ## sequence
                                                                                                               ## node
                                                                                                               ## -
                                                                                                               ## for
                                                                                                               ## internal
                                                                                                               ## use
                                                                                                               ## by
                                                                                                               ## Sequence
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## Implementation
                                                                                                               ## of
                                                                                                               ## the
                                                                                                               ## Iterator
                                                                                                               ## interface.
                                                                                                               ##
                                                                                                               ## ----------
                                                                                                               ## PUBLIC
                                                                                                               ## METHODS
                                                                                                               ## ------------
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor.
  NCollectionSequencevalueType*[TheItemType] = TheItemType
  NCollectionSequenceNode*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Node",
      header: "NCollection_Sequence.hxx", bycopy.} = object of NCollectionSeqNode ## !
                                                                           ## Constructor
type
  NCollectionSequenceIterator*[TheItemType] {.
      importcpp: "NCollection_Sequence<\'0>::Iterator",
      header: "NCollection_Sequence.hxx", bycopy.} = object of RootObj ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor
                                                                                    ## -
                                                                                    ## for
                                                                                    ## later
                                                                                    ## Init
type
#  NCollectionSequenceiterator* = NCollectionStlIterator[BidirectionalIteratorTag,
#      NCollectionSequenceIterator, TheItemType, False]
  NCollectionSequenceconstIterator* = NCollectionStlIterator[
      BidirectionalIteratorTag, NCollectionSequenceIterator, TheItemType, true]
type
  NCollectionShared*[T] {.importcpp: "NCollection_Shared<\'0>",
                         header: "NCollection_Shared.hxx", bycopy.} = object of StandardTransient ##
                                                                                           ## !
                                                                                           ## Default
                                                                                           ## constructor
type
  NCollectionSparseArray*[TheItemType] {.importcpp: "NCollection_SparseArray<\'0>",
                                        header: "NCollection_SparseArray.hxx",
                                        bycopy.} = object of NCollectionSparseArrayBase ##
                                                                                   ## !
                                                                                   ## Constructor;
                                                                                   ## accepts
                                                                                   ## size
                                                                                   ## of
                                                                                   ## blocks
                                                                                   ##
                                                                                   ## !@name
                                                                                   ## Array-like
                                                                                   ## interface
                                                                                   ## (in
                                                                                   ## addition
                                                                                   ## to
                                                                                   ## inherited
                                                                                   ## methods)
                                                                                   ##
                                                                                   ## !@{
                                                                                   ##
                                                                                   ## !
                                                                                   ## Direct
                                                                                   ## const
                                                                                   ## access
                                                                                   ## to
                                                                                   ## the
                                                                                   ## item
                                                                                   ##
                                                                                   ## !@name
                                                                                   ## DataMap-like
                                                                                   ## interface
                                                                                   ##
                                                                                   ## !@{
                                                                                   ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## number
                                                                                   ## of
                                                                                   ## items
                                                                                   ## in
                                                                                   ## the
                                                                                   ## array
                                                                                   ##
                                                                                   ## Iterator
                                                                                   ## interface
                                                                                   ##
                                                                                   ## *
                                                                                   ##
                                                                                   ## Implementation
                                                                                   ## of
                                                                                   ## type-specific
                                                                                   ## const
                                                                                   ## Iterator
                                                                                   ## class
                                                                                   ##
                                                                                   ##
                                                                                   ## Implementation
                                                                                   ## of
                                                                                   ## virtual
                                                                                   ## methods
                                                                                   ## providing
                                                                                   ## type-specific
                                                                                   ## behaviour
                                                                                   ##
                                                                                   ## !
                                                                                   ## Create
                                                                                   ## new
                                                                                   ## item
                                                                                   ## at
                                                                                   ## the
                                                                                   ## specified
                                                                                   ## address
                                                                                   ## with
                                                                                   ## default
                                                                                   ## constructor
                                                                                   ##
                                                                                   ## virtual
                                                                                   ## void
                                                                                   ## createItem
                                                                                   ## (Standard_Address
                                                                                   ## theAddress)
                                                                                   ##
                                                                                   ## {
                                                                                   ##
                                                                                   ## new
                                                                                   ## (theAddress)
                                                                                   ## TheItemType;
                                                                                   ##
                                                                                   ## }
                                                                                   ##
                                                                                   ## !
                                                                                   ## Create
                                                                                   ## new
                                                                                   ## item
                                                                                   ## at
                                                                                   ## the
                                                                                   ## specified
                                                                                   ## address
                                                                                   ## with
                                                                                   ## copy
                                                                                   ## constructor
                                                                                   ##
                                                                                   ## !
                                                                                   ## from
                                                                                   ## existing
                                                                                   ## item
type
  NCollectionSparseArrayConstIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::ConstIterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of NCollectionSparseArrayBaseIterator ## ! Empty constructor - for later Init
type
  NCollectionSparseArrayIterator*[TheItemType] {.
      importcpp: "NCollection_SparseArray<\'0>::Iterator",
      header: "NCollection_SparseArray.hxx", bycopy.} = object of NCollectionSparseArrayConstIterator ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor
                                                                                               ## -
                                                                                               ## for
                                                                                               ## later
                                                                                               ## Init
type
  NCollectionSparseArrayBase* {.importcpp: "NCollection_SparseArrayBase",
                               header: "NCollection_SparseArrayBase.hxx", bycopy.} = object of RootObj ## !@name Type-independent public interface
                                                                                       ## !@{
                                                                                       ## ! Clears all the data
                                                                                       ## *
                                                                                       ##  The block of data contains array of items, counter
                                                                                       ##  and bit field, allocated as single piece of memory addressed
                                                                                       ##  from the blocks array (myData).
                                                                                       ##
                                                                                       ##  The Block structure provides a logical view on the block,
                                                                                       ##  and provides methods to work with bit map.
                                                                                       ##
                                                                                       ##  Note that NCollection_SparseArrayBase class takes responsibility
                                                                                       ##  for correct allocation/deallocation of all the data.
                                                                                       ##
                                                                                       ## *
                                                                                       ##  Iterator
                                                                                       ##
                                                                                       ##  Copy constructor and assignment operator are private thus not accessible
                                                                                       ##  Object life
                                                                                       ## ! Constructor; initialized by size of item and of block (in items)
                                                                                       ##  Data access interface for descendants
                                                                                       ## ! Creates Block structure for block pointed by theAddr
                                                                                       ##  Methods to be provided by descendant
                                                                                       ## ! Create new item at the specified address with default constructor
                                                                                       ##   virtual void createItem (Standard_Address theAddress) = 0;
                                                                                       ## ! Create new item at the specified address with copy constructor
                                                                                       ## ! from existing item
                                                                                       ##  Implementation of memory allocation/deallocation and access mechanics
                                                                                       ## ! Allocate space for at least iBlock+1 blocks
    ## !< size of item
    ## !< block size (in items)
    ## !< allocated size of blocks table
    ## !< number of currently defined items
    ## !< array of pointers to data blocks
type
  NCollectionSparseArrayBaseIterator* {.importcpp: "NCollection_SparseArrayBase::Iterator", header: "NCollection_SparseArrayBase.hxx",
                                       bycopy.} = object of RootObj ##  Public interface
                                                      ## ! Restart iterations on the same array
                                                      ##  Methods for descendant
                                                      ## ! Empty constructor
type
  NCollectionStdAllocator*[T] {.importcpp: "NCollection_StdAllocator<\'0>",
                               header: "NCollection_StdAllocator.hxx", bycopy.} = object
  NCollectionStdAllocatorvalueType*[T] = T
  NCollectionStdAllocatorpointer* = ptr NCollectionStdAllocatorvalueType
  NCollectionStdAllocatorconstPointer* = ptr NCollectionStdAllocatorvalueType
  NCollectionStdAllocatorreference* = var NCollectionStdAllocatorvalueType
  NCollectionStdAllocatorconstReference* = NCollectionStdAllocatorvalueType
  NCollectionStdAllocatorsizeType* = csize_t
  NCollectionStdAllocatordifferenceType* = PtrdiffT
  NCollectionStdAllocatorrebind*[T; U] {.importcpp: "NCollection_StdAllocator<\'0>::rebind<\'1>",
                                       header: "NCollection_StdAllocator.hxx",
                                       bycopy.} = object
#  NCollectionStdAllocatorrebindother* = NCollectionStdAllocator[U]
#proc newNCollectionStdAllocator*[T](): NCollectionStdAllocator[T] {.cdecl,
#    constructor, importcpp: "NCollection_StdAllocator<\'*0>(@)", header: "NCollection_StdAllocator.hxx".}
type
  NCollectionStlIterator*[Category; BaseIterator; ItemType;
                          IsConstant: static[bool]] {.
      importcpp: "NCollection_StlIterator<\'0,\'1,\'2,\'3>",
      header: "NCollection_StlIterator.hxx", bycopy.} = object ## ! Default constructor
    myIterator* {.importc: "myIterator".}: BaseIterator
type
  NCollectionTListIterator*[TheItemType] {.
      importcpp: "NCollection_TListIterator<\'0>",
      header: "NCollection_TListIterator.hxx", bycopy.} = object of NCollectionBaseListIterator ## ! Empty
                                                                      ## constructor - for later Init
type
  NCollectionTListNode*[TheItemType] {.importcpp: "NCollection_TListNode<\'0>",
                                      header: "NCollection_TListNode.hxx", bycopy.} = object of NCollectionListNode ##
                                                                                                             ## !
                                                                                                             ## Constructor
    ## !< The item stored in the node
type
  NCollectionUBTree*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>", header: "NCollection_UBTree.hxx",
      bycopy.} = object         ## ! Memory allocation
                     ##  ---------- PUBLIC TYPES ----------
                     ## *
                     ##  Class defining the minimal interface of selector.
                     ##
                     ##  ---------- PROTECTED METHODS ----------
                     ## *
                     ##  @return
                     ##    the last added node
                     ##
                     ##  ---------- PRIVATE METHODS ----------
                     ## / Copy constructor (prohibited).
    ## /< root of the tree
    ## /< the last added node
    ## /< Allocator for TreeNode
  NCollectionUBTreeSelector*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>::Selector",
      header: "NCollection_UBTree.hxx", bycopy.} = object ## *
                                                     ##  Constructor
                                                     ##
                                                     ## *
                                                     ##  The method Accept() should set this flag if the selection process
                                                     ##  is to be stopped
                                                     ##
type
  NCollectionUBTreeTreeNode*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>::TreeNode",
      header: "NCollection_UBTree.hxx", bycopy.} = object
    ## /< bounding geometry
    ## /< the object
    ## /< 2 children forming a b-tree
    ## /< the pointer to a parent node
type
  NCollectionUBTreeFiller*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTreeFiller<\'0,\'1>",
      header: "NCollection_UBTreeFiller.hxx", bycopy.} = object ##  ---------- PUBLIC TYPES ----------
                                                           ## ! Structure of pair (object, bnd box)
                                                           ##  Assignment operator is made empty and private in order to
                                                           ##  avoid warning on MSVC (C4512)
                                                           ##  ---------- PRIVATE FIELDS ----------
    ## !< random number generator
  NCollectionUBTreeFillerObjBnd*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTreeFiller<\'0,\'1>::ObjBnd",
      header: "NCollection_UBTreeFiller.hxx", bycopy.} = object
    myObj* {.importc: "myObj".}: TheObjType
    myBnd* {.importc: "myBnd".}: TheBndType
type
  NCollectionUBTreeFillerUBTree* = NCollectionUBTree[TheObjType, TheBndType]
  NCollectionUBTreeFillerUBTreeNode* = TreeNode
type
  StandardUtf32Char* = object
  StandardWideChar*  = object
  NCollectionUtfIterator*[Type] {.importcpp: "NCollection_UtfIterator<\'0>",
                                 header: "NCollection_UtfIterator.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructor.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theString
                                                                                     ## buffer
                                                                                     ## to
                                                                                     ## iterate
type
  NCollectionUtfString*[Type] {.importcpp: "NCollection_UtfString<\'0>",
                               header: "NCollection_UtfString.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## @name
                                                                                 ## assign
                                                                                 ## operators
                                                                                 ##
                                                                                 ## !
                                                                                 ## Copy
                                                                                 ## from
                                                                                 ## another
                                                                                 ## string.
                                                                                 ##
                                                                                 ## !
                                                                                 ## @name
                                                                                 ## compare
                                                                                 ## operators
type
  NCollectionVec2*[ElementT] {.importcpp: "NCollection_Vec2<\'0>",
                              header: "NCollection_Vec2.hxx", bycopy.} = object ## !
                                                                           ## Returns the
                                                                           ## number of
                                                                           ## components.
type
  NCollectionVec3*[ElementT] {.importcpp: "NCollection_Vec3<\'0>",
                              header: "NCollection_Vec3.hxx", bycopy.} = object ## !
                                                                           ## Returns the
                                                                           ## number of
                                                                           ## components.
    ## !< define the vector as array to avoid structure alignment issues
#proc length*[ElementT](): cint {.cdecl, importcpp: "NCollection_Vec3::Length(@)",
#                              header: "NCollection_Vec3.hxx".}
type
  NCollectionVec4*[ElementT] {.importcpp: "NCollection_Vec4<\'0>",
                              header: "NCollection_Vec4.hxx", bycopy.} = object ## !
                                                                           ## Returns the
                                                                           ## number of
                                                                           ## components.
    ## !< define the vector as array to avoid structure alignment issues
type
  NCollectionVector*[TheItemType] {.importcpp: "NCollection_Vector<\'0>",
                                   header: "NCollection_Vector.hxx", bycopy.} = object of NCollectionBaseVector ##
                                                                                                         ## !
                                                                                                         ## STL-compliant
                                                                                                         ## typedef
                                                                                                         ## for
                                                                                                         ## value
                                                                                                         ## type
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Nested
                                                                                                         ## class
                                                                                                         ## Iterator
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @name
                                                                                                         ## public
                                                                                                         ## methods
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Constructor
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @name
                                                                                                         ## private
                                                                                                         ## methods
  NCollectionVectorvalueType*[TheItemType] = TheItemType
  NCollectionVectorIterator*[TheItemType] {.
      importcpp: "NCollection_Vector<\'0>::Iterator",
      header: "NCollection_Vector.hxx", bycopy.} = object of RootObj ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor
                                                                                ## -
                                                                                ## for
                                                                                ## later
                                                                                ## Init
type
#  NCollectionVectoriterator* = NCollectionStlIterator[RandomAccessIteratorTag,
#      NCollectionVectorIterator, TheItemType, False]
  NCollectionVectorconstIterator* = NCollectionStlIterator[
      RandomAccessIteratorTag, NCollectionVectorIterator, TheItemType, true]
type
  NCollectionWinHeapAllocator* {.importcpp: "NCollection_WinHeapAllocator",
                                header: "NCollection_WinHeapAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator ##
                                                                                                                   ## !
                                                                                                                   ## Main
                                                                                                                   ## constructor
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Copy
                                                                                                                   ## constructor
                                                                                                                   ## -
                                                                                                                   ## prohibited
#    when (defined(win32) or defined(win32)):
#      discard
