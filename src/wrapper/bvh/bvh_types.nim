# PROVIDES: BVH_Box BVH_Bin BVH_AxisSelector BVH_AxisSelectorBVH_VecNt TheDerivedBox BVH_BaseBox BVH_BoxBVH_VecNt BoxMinMax BoxMinMaxBVH_VecNt BVH_BuildQueue BVH_BuildTool BVH_DistanceField BVH_DistanceFieldBVH_VecNt BoundData UpdateBoundTask MatrixOp BitPredicate BitComparator BVH_Ray BVH_RayBVH_VecNt BVH_SpatialMedianBuilder BVH_Tools BVH_ToolsBVH_VecNt BVH_BaseTraverse BVH_QuadTree VectorType MatrixType BVH_Vec2i BVH_Vec3i BVH_Vec4i BVH_Array2i BVH_Array3i BVH_Array4i BVH_Vec2f BVH_Vec3f BVH_Vec4f BVH_Array2f BVH_Array3f BVH_Array4f BVH_Vec2d BVH_Vec3d BVH_Vec4d BVH_Array2d BVH_Array3d BVH_Array4d BVH_Mat4f BVH_Mat4d VecComp BVH_PairDistanceBVH_VecNt BVH_LinearBuilderBVH_VecNt BVH_TransformBVH_MatNt BVH_RadixSorterBVH_VecNt BVH_TriangulationBVH_VecNt BVH_Set BVH_Sorter
# DEPENDS:  BVH_PrimitiveSet[cfloat, 3]  Pair[cuint, cint] BVH_Set BVH_BaseTraverse BVH_BaseTraverse BVH_Traverse BVH_ObjectSet BVH_PairTraverse BVH_PrimitiveSet StandardTransient BVH_BuilderTransient StandardTransient BVH_BoxSet BVH_Builder StandardTransient BVH_ObjectTransient BVH_Object StandardTransient BVH_Properties BVH_Builder BVH_Sorter BVH_Sorter BVH_QueueBuilder StandardTransient BVH_TreeBaseTransient BVH_PrimitiveSet


import ../../tkernel/standard/standard_types

type
    MetricType* = object # FIXME

const                         ## ! The optimal tree depth.
     ## ! Should be in sync with maximum stack size while traversing the tree - don't pass the trees of greater depth to OCCT algorithms!
  BVH_ConstantsMaxTreeDepth* = 32 ## ! Leaf node size optimal for complex nodes,
                               ## ! e.g. for upper-level BVH trees within multi-level structure (nodes point to another BVH trees).
  BVH_ConstantsLeafNodeSizeSingle* = 1 ## ! Average leaf node size (4 primitive per leaf), optimal for average tree nodes.
  BVH_ConstantsLeafNodeSizeAverage* = 4 ## ! Default leaf node size (5 primitives per leaf).
  BVH_ConstantsLeafNodeSizeDefault* = 5 ## ! Leaf node size (8 primitives per leaf), optimal for small tree nodes (e.g. triangles).
  BVH_ConstantsLeafNodeSizeSmall* = 8 ## ! The optimal number of bins for binned builder.
  BVH_ConstantsNbBinsOptimal* = 32 ## ! The maximum number of bins for binned builder (giving the best traversal time at cost of longer tree construction time).
  BVH_ConstantsNbBinsBest* = 48

## ! Minimum node size to split.

var THE_NODE_MIN_SIZE* {.importcpp: "BVH::THE_NODE_MIN_SIZE", header: "BVH_Constants.hxx".}: cdouble


type
  BVH_BoxNt* = object # FIXME

  QuadBvhHandle* = object # FIXME

  BVH_Tree*[T; N: static[cint]] {.importcpp: "BVH_Tree<\'0,\'1>",
                                   header: "BVH_Tree.hxx", bycopy.} = object

  BVH_TraverseBVH_VecNt* = object  # FIXME
  BVH_VecNt* = object              # FIXME

  BVH_Box*[T; N: static[cint]] {.importcpp: "BVH_Box<\'0,\'1>",
                              header: "BVH_Box.hxx", bycopy.} = object            

  BVH_Bin*[T; N: static[cint]] {.importcpp: "BVH_Bin<\'0,\'1>",
                              header: "BVH_BinnedBuilder.hxx", bycopy.} = object 
    count* {.importc: "Count".}: cint 
    box* {.importc: "Box".}: BVH_Box[T, N] 

  BVH_AxisSelector*[T; N: static[cint]] {.importcpp: "BVH::BVH_AxisSelector<\'0,\'1>",
                                       header: "BVH_BinnedBuilder.hxx", bycopy.} = object

  BVH_AxisSelectorBVH_VecNt*[T; N] = object

  TheDerivedBox*[T; N: static[cint]] {.importcpp: "TheDerivedBox<\'0,\'1>",
                                    header: "BVH_Box.hxx", bycopy.} = object

  BVH_BaseBox*[T; N: static[cint]; TheDerivedBox] {.
      importcpp: "BVH_BaseBox<\'0,\'1,\'2>", header: "BVH_Box.hxx", bycopy.} = object of RootObj

  BVH_BoxBVH_VecNt*[T; N] = object

  BoxMinMax*[T; N: static[cint]] {.importcpp: "BoxMinMax<\'0,\'1>",
                                header: "BVH_Box.hxx", bycopy.} = object

  BoxMinMaxBVH_VecNt*[T; N] = object

  BVH_BuildQueue* {.importcpp: "BVH_BuildQueue", header: "BVH_BuildQueue.hxx", bycopy.} = object 

  BVH_BuildTool* {.importcpp: "BVH_BuildTool", header: "BVH_BuildThread.hxx", bycopy.} = object 

  BVH_DistanceField*[T; N: static[cint]] {.importcpp: "BVH_DistanceField<\'0,\'1>",
                                        header: "BVH_DistanceField.hxx", bycopy.} = object 

  BVH_DistanceFieldBVH_VecNt*[T; N] = object

  BoundData*[T; N: static[cint]] {.importcpp: "BVH::BoundData<\'0,\'1>",
                                header: "BVH_LinearBuilder.hxx", bycopy.} = object
    # mySet* {.importc: "mySet".}: ptr BVH_Set[T, N] 
    # myBVH* {.importc: "myBVH".}: ptr BVH_Tree[T, N] 
    # myNode* {.importc: "myNode".}: cint 
    # myLevel* {.importc: "myLevel".}: cint 
    # myHeight* {.importc: "myHeight".}: ptr cint 

  UpdateBoundTask*[T; N: static[cint]] {.importcpp: "BVH::UpdateBoundTask<\'0,\'1>",
                                      header: "BVH_LinearBuilder.hxx", bycopy.} = object

  MatrixOp*[T; N: static[cint]] {.importcpp: "BVH::MatrixOp<\'0,\'1>",
                               header: "BVH_Properties.hxx", bycopy.} = object 

  BitPredicate* {.importcpp: "BVH::BitPredicate", header: "BVH_RadixSorter.hxx",
                 bycopy.} = object
    myBit* {.importc: "myBit".}: cuint 

  BitComparator* {.importcpp: "BVH::BitComparator", header: "BVH_RadixSorter.hxx",
                  bycopy.} = object
    myBit* {.importc: "myBit".}: cuint 

  BVH_Ray*[T; N: static[cint]] {.importcpp: "BVH_Ray<\'0,\'1>",
                              header: "BVH_Ray.hxx", bycopy.} = object
    origin* {.importc: "Origin".}: BVH_RayBVH_VecNt
    direct* {.importc: "Direct".}: BVH_RayBVH_VecNt

  BVH_RayBVH_VecNt*[T; N] = object

  BVH_SpatialMedianBuilder*[T; N: static[cint]] {.
      importcpp: "BVH_SpatialMedianBuilder<\'0,\'1>",
      header: "BVH_SpatialMedianBuilder.hxx", bycopy.} = object

  BVH_Tools*[T; N: static[cint]] {.importcpp: "BVH_Tools<\'0,\'1>",
                                header: "BVH_Tools.hxx", bycopy.} = object 

  BVH_ToolsBVH_VecNt*[T; N] = object

  BVH_BaseTraverse*[M:MetricType] {.importcpp: "BVH_BaseTraverse<\'0>",
                                 header: "BVH_Traverse.hxx", bycopy.} = object of RootObj  

  BVH_QuadTree* {.importcpp: "BVH_QuadTree", header: "BVH_Tree.hxx", bycopy.} = object

  VectorType*[T; N: static[cint]] {.importcpp: "BVH::VectorType<\'0,\'1>",
                                 header: "BVH_Types.hxx", bycopy.} = object 

  MatrixType*[T; N: static[cint]] {.importcpp: "BVH::MatrixType<\'0,\'1>",
                                 header: "BVH_Types.hxx", bycopy.} = object 

  BVH_Vec2i* = object

  BVH_Vec3i* = object

  BVH_Vec4i* = object

  BVH_Array2i* = object

  BVH_Array3i* = object

  BVH_Array4i* = object

  BVH_Vec2f* = object

  BVH_Vec3f* = object

  BVH_Vec4f* = object

  BVH_Array2f* = object

  BVH_Array3f* = object

  BVH_Array4f* = object

  BVH_Vec2d* = object

  BVH_Vec3d* = object

  BVH_Vec4d* = object

  BVH_Array2d* = object

  BVH_Array3d* = object

  BVH_Array4d* = object

  BVH_Mat4f* = object

  BVH_Mat4d* = object

  VecComp*[T; N: static[cint]] {.importcpp: "BVH::VecComp<\'0,\'1>",
                              header: "BVH_Types.hxx", bycopy.} = object 

  BVH_PairDistanceBVH_VecNt*[NumType; Dimension] = object

  BVH_LinearBuilderBVH_VecNt*[T; N] = object

  BVH_TransformBVH_MatNt*[T; N] = object

  BVH_RadixSorterBVH_VecNt*[T; N] = object

  BVH_TriangulationBVH_VecNt*[T; N] = object

  BVH_Set*[T; N: static[cint]] {.importcpp: "BVH_Set<\'0,\'1>",
                              header: "BVH_Set.hxx", bycopy.} = object of RootObj 

  BVH_Sorter*[T; N: static[cint]] {.importcpp: "BVH_Sorter<\'0,\'1>",
                                 header: "BVH_Sorter.hxx", bycopy.} = object of RootObj
  BVH_ObjectTransient* {.importcpp: "BVH_ObjectTransient",
                        header: "BVH_Object.hxx", bycopy.} = object of StandardTransient 

  BVH_Object*[T; N: static[cint]] {.importcpp: "BVH_Object<\'0,\'1>",
                                 header: "BVH_Object.hxx", bycopy.} = object of BVH_ObjectTransient 

  BVH_PrimitiveSet*[T; N: static[cint]] {.importcpp: "BVH_PrimitiveSet<\'0,\'1>",
                                       header: "BVH_PrimitiveSet.hxx", bycopy.} = object of BVH_Object[
      T, N]                    
  
  BVH_PrimitiveSet3d* = BVH_PrimitiveSet[cfloat, 3]  # FIXME

  Pair*[T:cuint; N:cint] = object # FIXME nim-cppstd
  BVH_EncodedLink* = Pair[cuint, cint]

  BVH_ObjectSet*[T; N: static[cint]] {.importcpp: "BVH_ObjectSet<\'0,\'1>",
                                    header: "BVH_ObjectSet.hxx", bycopy.} = object of BVH_Set[
      T, N]                    

  BVH_Traverse*[NumType; Dimension: static[cint]; BVHSetType; MetricType] {.
      importcpp: "BVH_Traverse<\'0,\'1,\'2,\'3>", header: "BVH_Traverse.hxx", bycopy.} = object of BVH_BaseTraverse[
      MetricType] 

  BVH_PairTraverse*[NumType; Dimension: static[cint]; BVHSetType; MetricType] {.
      importcpp: "BVH_PairTraverse<\'0,\'1,\'2,\'3>", header: "BVH_Traverse.hxx",
      bycopy.} = object of BVH_BaseTraverse[MetricType] 


  BVH_Distance*[NumType; Dimension: static[cint]; ObjectType; BVHSetType] {.
      importcpp: "BVH_Distance<\'0,\'1,\'2,\'3>", header: "BVH_Distance.hxx", bycopy.} = object of BVH_Traverse[
      NumType, Dimension, BVHSetType, NumType] 

  BVH_Geometry*[T; N: static[cint]] {.importcpp: "BVH_Geometry<\'0,\'1>",
                                   header: "BVH_Geometry.hxx", bycopy.} = object of BVH_ObjectSet[
      T, N] 

  BVH_PairDistance*[NumType; Dimension: static[cint]; BVHSetType] {.
      importcpp: "BVH_PairDistance<\'0,\'1,\'2>", header: "BVH_PairDistance.hxx",
      bycopy.} = object of BVH_PairTraverse[NumType, Dimension, BVHSetType, NumType] 

  BVH_BoxSet*[NumType; Dimension: static[cint]; DataType] {.
      importcpp: "BVH_BoxSet<\'0,\'1,\'2>", header: "BVH_BoxSet.hxx", bycopy.} = object of BVH_PrimitiveSet[
      NumType, Dimension] 

  BVH_BuilderTransient* {.importcpp: "BVH_BuilderTransient",
                         header: "BVH_Builder.hxx", bycopy.} = object of StandardTransient 

  BVH_Builder*[T; N: static[cint]] {.importcpp: "BVH_Builder<\'0,\'1>",
                                  header: "BVH_Builder.hxx", bycopy.} = object of BVH_BuilderTransient 

  BVH_BuildThread* {.importcpp: "BVH_BuildThread", header: "BVH_BuildThread.hxx",
                    bycopy.} = object of StandardTransient 

  BVH_IndexedBoxSet*[NumType; Dimension: static[cint]; DataType] {.
      importcpp: "BVH_IndexedBoxSet<\'0,\'1,\'2>",
      header: "BVH_IndexedBoxSet.hxx", bycopy.} = object of BVH_BoxSet[NumType,
      Dimension, DataType] 

  BVH_LinearBuilder*[T; N: static[cint]] {.importcpp: "BVH_LinearBuilder<\'0,\'1>",
                                        header: "BVH_LinearBuilder.hxx", bycopy.} = object of BVH_Builder[
      T, N]                    


  BVH_Properties* {.importcpp: "BVH_Properties", header: "BVH_Properties.hxx", bycopy.} = object of StandardTransient 

  BVH_Transform*[T; N: static[cint]] {.importcpp: "BVH_Transform<\'0,\'1>",
                                    header: "BVH_Properties.hxx", bycopy.} = object of BVH_Properties 

  BVH_QueueBuilder*[T; N: static[cint]] {.importcpp: "BVH_QueueBuilder<\'0,\'1>",
                                       header: "BVH_QueueBuilder.hxx", bycopy.} = object of BVH_Builder[
      T, N] 

  BVH_QuickSorter*[T; N: static[cint]] {.importcpp: "BVH_QuickSorter<\'0,\'1>",
                                      header: "BVH_QuickSorter.hxx", bycopy.} = object of BVH_Sorter[
      T, N]                    

  BVH_RadixSorter*[T; N: static[cint]] {.importcpp: "BVH_RadixSorter<\'0,\'1>",
                                      header: "BVH_RadixSorter.hxx", bycopy.} = object of BVH_Sorter[
      T, N]                    

  BVH_SweepPlaneBuilder*[T; N: static[cint]] {.
      importcpp: "BVH_SweepPlaneBuilder<\'0,\'1>",
      header: "BVH_SweepPlaneBuilder.hxx", bycopy.} = object of BVH_QueueBuilder[T, N] 

  BVH_TreeBaseTransient* {.importcpp: "BVH_TreeBaseTransient",
                          header: "BVH_Tree.hxx", bycopy.} = object of StandardTransient

  BVH_TreeBase*[T; N: static[cint]] {.importcpp: "BVH_TreeBase<\'0,\'1>",
                                   header: "BVH_Tree.hxx", bycopy.} = object of BVH_TreeBaseTransient 
    myNodeInfoBuffer* {.importc: "myNodeInfoBuffer".}: BVH_Array4i 
    myDepth* {.importc: "myDepth".}: cint

  BVH_Triangulation*[T; N: static[cint]] {.importcpp: "BVH_Triangulation<\'0,\'1>",
                                        header: "BVH_Triangulation.hxx", bycopy.} = object of BVH_PrimitiveSet[
      T, N]                    


