type
  BVH_Bin*[T; N: static[cint]] {.importcpp: "BVH_Bin<\'0,\'1>",
                              header: "BVH_BinnedBuilder.hxx", bycopy.} = object ## !
                                                                            ## Creates new node bin.
    count* {.importc: "Count".}: cint ## !< Number of primitives in the bin
    box* {.importc: "Box".}: BVH_Box[T, N] ## !< AABB of primitives in the bin
type
  BVH_AxisSelector*[T; N: static[cint]] {.importcpp: "BVH::BVH_AxisSelector<\'0,\'1>",
                                       header: "BVH_BinnedBuilder.hxx", bycopy.} = object
  BVH_AxisSelectorBVH_VecNt*[T; N] = object
type
  TheDerivedBox*[T; N: static[cint]] {.importcpp: "TheDerivedBox<\'0,\'1>",
                                    header: "BVH_Box.hxx", bycopy.} = object
  BVH_BaseBox*[T; N: static[cint]; TheDerivedBox] {.
      importcpp: "BVH_BaseBox<\'0,\'1,\'2>", header: "BVH_Box.hxx", bycopy.} = object of RootObj
##  forward declaration
type
  BVH_Box*[T; N: static[cint]] {.importcpp: "BVH_Box<\'0,\'1>",
                              header: "BVH_Box.hxx", bycopy.} = object            ## ! Creates uninitialized bounding box.
                  ## ! Clears bounding box.
                  ## ! Checks if the Box is out of the other box.
    ## !< Minimum point of bounding box
    ## !< Maximum point of bounding box
    ## !< Is bounding box initialized?
  BVH_BoxBVH_VecNt*[T; N] = object
type
  BoxMinMax*[T; N: static[cint]] {.importcpp: "BoxMinMax<\'0,\'1>",
                                header: "BVH_Box.hxx", bycopy.} = object
  BoxMinMaxBVH_VecNt*[T; N] = object
type
  BVH_BoxSet*[NumType; Dimension: static[cint]; DataType] {.
      importcpp: "BVH_BoxSet<\'0,\'1,\'2>", header: "BVH_BoxSet.hxx", bycopy.} = object of BVH_PrimitiveSet[
      NumType, Dimension] ## ! @name Constructors
                        ## ! Empty constructor for use the default BVH_Builder
                        ## ! @name Setting expected size of the BVH
                        ## ! Sets the expected size of BVH tree
                        ## ! @name Adding elements in BVH
                        ## ! Adds the element into BVH
                        ## ! @name BVH construction
                        ## ! BVH construction
                        ## ! @name Clearing the elements and boxes
                        ## ! Clears the vectors of elements and boxes
                        ## ! @name Necessary overrides for BVH construction
                        ## ! Make inherited method Box() visible to avoid CLang warning
                        ## ! @name Fields
    ## !< Elements
    ## !< Boxes for the elements
type
  BVH_BuilderTransient* {.importcpp: "BVH_BuilderTransient",
                         header: "BVH_Builder.hxx", bycopy.} = object of StandardTransient ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## the
                                                                                    ## maximum
                                                                                    ## depth
                                                                                    ## of
                                                                                    ## constructed
                                                                                    ## BVH.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Creates
                                                                                    ## new
                                                                                    ## abstract
                                                                                    ## BVH
                                                                                    ## builder.
    ## !< Maximum depth of constructed BVH
    ## !< Maximum number of objects per leaf
    ## !< Parallel execution flag.
type
  BVH_Builder*[T; N: static[cint]] {.importcpp: "BVH_Builder<\'0,\'1>",
                                  header: "BVH_Builder.hxx", bycopy.} = object of BVH_BuilderTransient ##
                                                                                                ## !
                                                                                                ## Builds
                                                                                                ## BVH
                                                                                                ## using
                                                                                                ## specific
                                                                                                ## algorithm.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## new
                                                                                                ## abstract
                                                                                                ## BVH
                                                                                                ## builder.
type
  BVH_BuildQueue* {.importcpp: "BVH_BuildQueue", header: "BVH_BuildQueue.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## new
                                                                                         ## BVH
                                                                                         ## build
                                                                                         ## queue.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## current
                                                                                         ## size
                                                                                         ## of
                                                                                         ## BVH
                                                                                         ## build
                                                                                         ## queue.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Queue
                                                                                         ## of
                                                                                         ## BVH
                                                                                         ## nodes
                                                                                         ## to
                                                                                         ## build.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Manages
                                                                                         ## access
                                                                                         ## serialization
                                                                                         ## of
                                                                                         ## working
                                                                                         ## threads.
    ## ! Number of active build threads.
type
  BVH_BuildTool* {.importcpp: "BVH_BuildTool", header: "BVH_BuildThread.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Performs
                                                                                        ## splitting
                                                                                        ## of
                                                                                        ## the
                                                                                        ## given
                                                                                        ## BVH
                                                                                        ## node.
type
  BVH_BuildThread* {.importcpp: "BVH_BuildThread", header: "BVH_BuildThread.hxx",
                    bycopy.} = object of StandardTransient ## ! Creates new BVH build thread.
                                                      ## ! Executes BVH build thread.
                                                      ## ! Data needed to build the BVH.
    ## ! Reference to BVH build queue.
    ## ! Thread to execute work items.
type
  BVH_Distance*[NumType; Dimension: static[cint]; ObjectType; BVHSetType] {.
      importcpp: "BVH_Distance<\'0,\'1,\'2,\'3>", header: "BVH_Distance.hxx", bycopy.} = object of BVH_Traverse[
      NumType, Dimension, BVHSetType, NumType] ## ! @name Constructor
                                           ## ! Constructor
                                           ## ! @name Setting object for distance computation
                                           ## ! Sets the object to which the distance is required
                                           ## ! @name Compute the distance
                                           ## ! Computes the distance between object and BVH tree
                                           ## ! @name Accessing the results
                                           ## ! Returns IsDone flag
                                           ## ! @name Definition of the rules for tree descend
                                           ## ! Compares the two metrics and chooses the best one
                                           ## ! @name Fields
    ## !< Distance
    ## !< State of the algorithm
    ## !< Object to compute the distance to
type
  BVH_DistanceField*[T; N: static[cint]] {.importcpp: "BVH_DistanceField<\'0,\'1>",
                                        header: "BVH_DistanceField.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## empty
                                                                                      ## 3D
                                                                                      ## distance
                                                                                      ## field.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## packed
                                                                                      ## voxel
                                                                                      ## data.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Performs
                                                                                      ## building
                                                                                      ## of
                                                                                      ## distance
                                                                                      ## field
                                                                                      ## for
                                                                                      ## the
                                                                                      ## given
                                                                                      ## Z
                                                                                      ## slices.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Array
                                                                                      ## of
                                                                                      ## voxels.
    ## ! Size of single voxel.
    ## ! Minimum corner of voxel grid.
    ## ! Maximum corner of voxel grid.
    ## ! Size of voxel grid in X dimension.
    ## ! Size of voxel grid in Y dimension.
    ## ! Size of voxel grid in Z dimension.
    ## ! Size of voxel grid in maximum dimension.
    ## ! Enables/disables signing of distance field.
  BVH_DistanceFieldBVH_VecNt*[T; N] = object
type
  BVH_Geometry*[T; N: static[cint]] {.importcpp: "BVH_Geometry<\'0,\'1>",
                                   header: "BVH_Geometry.hxx", bycopy.} = object of BVH_ObjectSet[
      T, N] ## ! Creates uninitialized BVH geometry.
          ## ! Returns TRUE if geometry state should be updated.
          ## ! Updates internal geometry state.
    ## !< Is geometry state outdated?
    ## !< Constructed hight-level BVH
    ## !< Builder for hight-level BVH
    ## !< Cached bounding box of geometric objects
type
  BVH_IndexedBoxSet*[NumType; Dimension: static[cint]; DataType] {.
      importcpp: "BVH_IndexedBoxSet<\'0,\'1,\'2>",
      header: "BVH_IndexedBoxSet.hxx", bycopy.} = object of BVH_BoxSet[NumType,
      Dimension, DataType] ## ! @name Constructors
                         ## ! Empty constructor for use the default BVH_Builder
                         ## ! @name Setting expected size of the BVH
                         ## ! Sets the expected size of BVH tree
                         ## ! @name Adding elements in BVH
                         ## ! Adds the element into BVH
                         ## ! @name Clearing the elements and boxes
                         ## ! Clears the vectors of elements and boxes
                         ## ! @name Necessary overrides for BVH construction
                         ## ! Make inherited method Box() visible to avoid CLang warning
                         ## ! @name Fields
type
  BVH_LinearBuilder*[T; N: static[cint]] {.importcpp: "BVH_LinearBuilder<\'0,\'1>",
                                        header: "BVH_LinearBuilder.hxx", bycopy.} = object of BVH_Builder[
      T, N]                    ## ! Creates binned LBVH builder.
          ## ! Emits hierarchy from sorted Morton codes.
  BVH_LinearBuilderBVH_VecNt*[T; N] = object
type
  BoundData*[T; N: static[cint]] {.importcpp: "BVH::BoundData<\'0,\'1>",
                                header: "BVH_LinearBuilder.hxx", bycopy.} = object
    mySet* {.importc: "mySet".}: ptr BVH_Set[T, N] ## !< Set of geometric objects
    myBVH* {.importc: "myBVH".}: ptr BVH_Tree[T, N] ## !< BVH tree built over the set
    myNode* {.importc: "myNode".}: cint ## !< BVH node to update bounding box
    myLevel* {.importc: "myLevel".}: cint ## !< Level of the processed BVH node
    myHeight* {.importc: "myHeight".}: ptr cint ## !< Height of the processed BVH node
## ! Task for parallel bounds updating.
type
  UpdateBoundTask*[T; N: static[cint]] {.importcpp: "BVH::UpdateBoundTask<\'0,\'1>",
                                      header: "BVH_LinearBuilder.hxx", bycopy.} = object
type
  BVH_ObjectTransient* {.importcpp: "BVH_ObjectTransient",
                        header: "BVH_Object.hxx", bycopy.} = object of StandardTransient ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## properties
                                                                                  ## of
                                                                                  ## the
                                                                                  ## geometric
                                                                                  ## object.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## new
                                                                                  ## abstract
                                                                                  ## geometric
                                                                                  ## object.
    ## !< Marks internal object state as outdated
    ## !< Generic properties assigned to the object
type
  BVH_Object*[T; N: static[cint]] {.importcpp: "BVH_Object<\'0,\'1>",
                                 header: "BVH_Object.hxx", bycopy.} = object of BVH_ObjectTransient ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## new
                                                                                             ## abstract
                                                                                             ## geometric
                                                                                             ## object.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## AABB
                                                                                             ## of
                                                                                             ## the
                                                                                             ## geometric
                                                                                             ## object.
type
  BVH_ObjectSet*[T; N: static[cint]] {.importcpp: "BVH_ObjectSet<\'0,\'1>",
                                    header: "BVH_ObjectSet.hxx", bycopy.} = object of BVH_Set[
      T, N]                    ## ! Type of array of geometric objects.
          ## ! Creates new set of geometric objects.
          ## ! Removes all geometric objects.
          ## ! Return total number of objects.
    ## !< Array of geometric objects
type
  BVH_PairDistance*[NumType; Dimension: static[cint]; BVHSetType] {.
      importcpp: "BVH_PairDistance<\'0,\'1,\'2>", header: "BVH_PairDistance.hxx",
      bycopy.} = object of BVH_PairTraverse[NumType, Dimension, BVHSetType, NumType] ## !
                                                                             ## @name
                                                                             ## Constructor
                                                                             ## !
                                                                             ## Constructor
                                                                             ## !
                                                                             ## @name
                                                                             ## Compute the
                                                                             ## distance
                                                                             ## !
                                                                             ## Computes the
                                                                             ## distance
                                                                             ## between two BVH
                                                                             ## trees
                                                                             ## !
                                                                             ## @name
                                                                             ## Accessing the
                                                                             ## results
                                                                             ## !
                                                                             ## Returns
                                                                             ## IsDone
                                                                             ## flag
                                                                             ## !
                                                                             ## @name
                                                                             ## Definition of the
                                                                             ## rules for
                                                                             ## tree
                                                                             ## descend
                                                                             ## !
                                                                             ## Compares the two
                                                                             ## metrics and
                                                                             ## chooses the
                                                                             ## best one
                                                                             ## !
                                                                             ## @name
                                                                             ## Fields
    ## !< Square distance
    ## !< State of the algorithm
  BVH_PairDistanceBVH_VecNt*[NumType; Dimension] = object
type
  BVH_PrimitiveSet*[T; N: static[cint]] {.importcpp: "BVH_PrimitiveSet<\'0,\'1>",
                                       header: "BVH_PrimitiveSet.hxx", bycopy.} = object of BVH_Object[
      T, N]                    ## ! Returns AABB of primitive set.
          ## ! Updates BVH of primitive set.
    ## !< Constructed bottom-level BVH
    ## !< Builder for bottom-level BVH
    ## !< Cached bounding box of geometric primitives
## using statement
type
  BVH_Properties* {.importcpp: "BVH_Properties", header: "BVH_Properties.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Releases
                                                                                                            ## resources
                                                                                                            ## of
                                                                                                            ## object
                                                                                                            ## properties.
type
  BVH_Transform*[T; N: static[cint]] {.importcpp: "BVH_Transform<\'0,\'1>",
                                    header: "BVH_Properties.hxx", bycopy.} = object of BVH_Properties ##
                                                                                               ## !
                                                                                               ## Type
                                                                                               ## of
                                                                                               ## transformation
                                                                                               ## matrix.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## new
                                                                                               ## identity
                                                                                               ## transformation.
    ## !< Transformation matrix
    ## !< Inversed transformation matrix
  BVH_TransformBVH_MatNt*[T; N] = object
type
  MatrixOp*[T; N: static[cint]] {.importcpp: "BVH::MatrixOp<\'0,\'1>",
                               header: "BVH_Properties.hxx", bycopy.} = object ##  Not implemented
##    template<class T> struct MatrixOp<T, 4>
##    {
##      typedef typename BVH::MatrixType<T, 4>::Type BVH_Mat4t;
##
##      static void Inverse (const BVH_Mat4t& theIn,
##                           BVH_Mat4t&       theOut)
##      {
##        theIn.Inverted (theOut);
##      }
##
##      typedef typename BVH::VectorType<T, 4>::Type BVH_Vec4t;
##
##      static BVH_Vec4t Multiply (const BVH_Mat4t& theMat,
##                                 const BVH_Vec4t& theVec)
##      {
##        BVH_Vec4t aOut = theMat * theVec;
##        return aOut * static_cast<T> (1.0 / aOut.w());
##      }
##    };
type
  BVH_QueueBuilder*[T; N: static[cint]] {.importcpp: "BVH_QueueBuilder<\'0,\'1>",
                                       header: "BVH_QueueBuilder.hxx", bycopy.} = object of BVH_Builder[
      T, N] ## ! Creates new BVH queue based builder.
          ## ! Builds BVH using specific algorithm.
          ## ! Stores range of primitives belonging to a BVH node.
          ## ! Performs splitting of the given BVH node.
          ##    virtual typename BVH_QueueBuilder<T, N>::BVH_ChildNodes buildNode (BVH_Set<T, N>*         theSet,
          ##                                                                       BVH_Tree<T, N>*        theBVH,
          ##                                                                       const Standard_Integer theNode) const = 0;
          ## ! Processes child nodes of the splitted BVH node.
    ## !< Number of threads used to build BVH
type
  BVH_QuickSorter*[T; N: static[cint]] {.importcpp: "BVH_QuickSorter<\'0,\'1>",
                                      header: "BVH_QuickSorter.hxx", bycopy.} = object of BVH_Sorter[
      T, N]                    ## ! Creates new BVH quick sorter for the given axis.
          ## ! Axis used to arrange the primitives (X - 0, Y - 1, Z - 2).
type
  BVH_EncodedLink* = Pair[cuint, cint]
## ! Performs radix sort of a BVH primitive set using
## ! 10-bit Morton codes (or 1024 x 1024 x 1024 grid).
type
  BVH_RadixSorter*[T; N: static[cint]] {.importcpp: "BVH_RadixSorter<\'0,\'1>",
                                      header: "BVH_RadixSorter.hxx", bycopy.} = object of BVH_Sorter[
      T, N]                    ## ! Creates new BVH radix sorter for the given AABB.
          ## ! Axis-aligned bounding box (AABB) to perform sorting.
    ## ! Morton codes assigned to BVH primitives.
  BVH_RadixSorterBVH_VecNt*[T; N] = object
type
  BitPredicate* {.importcpp: "BVH::BitPredicate", header: "BVH_RadixSorter.hxx",
                 bycopy.} = object
    myBit* {.importc: "myBit".}: cuint ## ! Creates new radix sort predicate.
type
  BitComparator* {.importcpp: "BVH::BitComparator", header: "BVH_RadixSorter.hxx",
                  bycopy.} = object
    myBit* {.importc: "myBit".}: cuint ## ! Creates new STL comparator.
type
  BVH_Ray*[T; N: static[cint]] {.importcpp: "BVH_Ray<\'0,\'1>",
                              header: "BVH_Ray.hxx", bycopy.} = object
    origin* {.importc: "Origin".}: BVH_RayBVH_VecNt
    direct* {.importc: "Direct".}: BVH_RayBVH_VecNt
  BVH_RayBVH_VecNt*[T; N] = object
type
  BVH_Set*[T; N: static[cint]] {.importcpp: "BVH_Set<\'0,\'1>",
                              header: "BVH_Set.hxx", bycopy.} = object of RootObj ## ! Creates new abstract set of objects.
                                                                  ## ! Returns total number of objects.
#  BVH_SetBVH_BoxNt* = BVH_Box[T, N]
type
  BVH_Sorter*[T; N: static[cint]] {.importcpp: "BVH_Sorter<\'0,\'1>",
                                 header: "BVH_Sorter.hxx", bycopy.} = object of RootObj## ! Performs default
                                                                        ## initialization.
type
  BVH_SpatialMedianBuilder*[T; N: static[cint]] {.
      importcpp: "BVH_SpatialMedianBuilder<\'0,\'1>",
      header: "BVH_SpatialMedianBuilder.hxx", bycopy.} = object
type
  BVH_SweepPlaneBuilder*[T; N: static[cint]] {.
      importcpp: "BVH_SweepPlaneBuilder<\'0,\'1>",
      header: "BVH_SweepPlaneBuilder.hxx", bycopy.} = object of BVH_QueueBuilder[T, N] ## !
                                                                               ## Creates
                                                                               ## sweep
                                                                               ## plane
                                                                               ## SAH
                                                                               ## BVH
                                                                               ## builder.
                                                                               ## !
                                                                               ## Performs
                                                                               ## splitting
                                                                               ## of
                                                                               ## the
                                                                               ## given
                                                                               ## BVH
                                                                               ## node.
                                                                               ##
                                                                               ## typename
                                                                               ## BVH_QueueBuilder<T,
                                                                               ## N>::BVH_ChildNodes
                                                                               ## buildNode
                                                                               ## (BVH_Set<T,
                                                                               ## N>*
                                                                               ## theSet,
                                                                               ##
                                                                               ## BVH_Tree<T,
                                                                               ## N>*
                                                                               ## theBVH,
                                                                               ##
                                                                               ## const
                                                                               ## Standard_Integer
                                                                               ## theNode)
                                                                               ## const
                                                                               ## Standard_OVERRIDE
                                                                               ##    {
                                                                               ##
                                                                               ## const
                                                                               ## Standard_Integer
                                                                               ## aNodeBegPrimitive =
                                                                               ## theBVH->BegPrimitive
                                                                               ## (theNode);
                                                                               ##
                                                                               ## const
                                                                               ## Standard_Integer
                                                                               ## aNodeEndPrimitive =
                                                                               ## theBVH->EndPrimitive
                                                                               ## (theNode);
                                                                               ##
                                                                               ## const
                                                                               ## Standard_Integer
                                                                               ## aNodeNbPrimitives =
                                                                               ## theBVH->NbPrimitives
                                                                               ## (theNode);
                                                                               ##
                                                                               ## if
                                                                               ## (aNodeEndPrimitive -
                                                                               ## aNodeBegPrimitive <
                                                                               ## BVH_Builder<T,
                                                                               ## N>::myLeafNodeSize)
                                                                               ##      {
                                                                               ##
                                                                               ## return
                                                                               ## typename
                                                                               ## BVH_QueueBuilder<T,
                                                                               ## N>::BVH_ChildNodes();
                                                                               ## //
                                                                               ## node
                                                                               ## does
                                                                               ## not
                                                                               ## require
                                                                               ## partitioning
                                                                               ##      }
                                                                               ##
                                                                               ##
                                                                               ## //
                                                                               ## Parameters
                                                                               ## for
                                                                               ## storing
                                                                               ## best
                                                                               ## split
                                                                               ##
                                                                               ## Standard_Integer
                                                                               ## aMinSplitAxis =
                                                                               ## -1;
                                                                               ##
                                                                               ## Standard_Integer
                                                                               ## aMinSplitIndex =
                                                                               ## 0;
                                                                               ##
                                                                               ##
                                                                               ## NCollection_Array1<Standard_Real>
                                                                               ## aLftSet
                                                                               ## (0,
                                                                               ## aNodeNbPrimitives -
                                                                               ## 1);
                                                                               ##
                                                                               ## NCollection_Array1<Standard_Real>
                                                                               ## aRghSet
                                                                               ## (0,
                                                                               ## aNodeNbPrimitives -
                                                                               ## 1);
                                                                               ##
                                                                               ## Standard_Real
                                                                               ## aMinSplitCost =
                                                                               ## std::numeric_limits<Standard_Real>::max();
                                                                               ##
                                                                               ##
                                                                               ## //
                                                                               ## Find
                                                                               ## best
                                                                               ## split
                                                                               ##
                                                                               ## for
                                                                               ## (Standard_Integer
                                                                               ## anAxis =
                                                                               ## 0;
                                                                               ## anAxis <
                                                                               ## (N < 4 ? N :
                                                                               ## 3);
                                                                               ## ++anAxis)
                                                                               ##      {
                                                                               ##
                                                                               ## const T
                                                                               ## aNodeSize =
                                                                               ## BVH::VecComp<T,
                                                                               ## N>::Get
                                                                               ## (theBVH->MaxPoint
                                                                               ## (theNode),
                                                                               ## anAxis) -
                                                                               ##
                                                                               ## BVH::VecComp<T,
                                                                               ## N>::Get
                                                                               ## (theBVH->MinPoint
                                                                               ## (theNode),
                                                                               ## anAxis);
                                                                               ##
                                                                               ## if
                                                                               ## (aNodeSize
                                                                               ## <=
                                                                               ## BVH::THE_NODE_MIN_SIZE)
                                                                               ##        {
                                                                               ##
                                                                               ## continue;
                                                                               ##        }
                                                                               ##
                                                                               ##
                                                                               ## BVH_QuickSorter<T,
                                                                               ## N>
                                                                               ## (anAxis).Perform
                                                                               ## (theSet,
                                                                               ## aNodeBegPrimitive,
                                                                               ## aNodeEndPrimitive);
                                                                               ##
                                                                               ## BVH_Box<T,
                                                                               ## N>
                                                                               ## aLftBox;
                                                                               ##
                                                                               ## BVH_Box<T,
                                                                               ## N>
                                                                               ## aRghBox;
                                                                               ##
                                                                               ## aLftSet.ChangeFirst() =
                                                                               ## std::numeric_limits<T>::max();
                                                                               ##
                                                                               ## aRghSet.ChangeFirst() =
                                                                               ## std::numeric_limits<T>::max();
                                                                               ##
                                                                               ##
                                                                               ## //
                                                                               ## Sweep
                                                                               ## from
                                                                               ## left
                                                                               ##
                                                                               ## for
                                                                               ## (Standard_Integer
                                                                               ## anIndex =
                                                                               ## 1;
                                                                               ## anIndex <
                                                                               ## aNodeNbPrimitives;
                                                                               ## ++anIndex)
                                                                               ##        {
                                                                               ##
                                                                               ## aLftBox.Combine
                                                                               ## (theSet->Box
                                                                               ## (anIndex +
                                                                               ## aNodeBegPrimitive -
                                                                               ## 1));
                                                                               ##
                                                                               ## aLftSet
                                                                               ## (anIndex) =
                                                                               ## static_cast<Standard_Real>
                                                                               ## (aLftBox.Area());
                                                                               ##        }
                                                                               ##
                                                                               ##
                                                                               ## //
                                                                               ## Sweep
                                                                               ## from
                                                                               ## right
                                                                               ##
                                                                               ## for
                                                                               ## (Standard_Integer
                                                                               ## anIndex =
                                                                               ## 1;
                                                                               ## anIndex <
                                                                               ## aNodeNbPrimitives;
                                                                               ## ++anIndex)
                                                                               ##        {
                                                                               ##
                                                                               ## aRghBox.Combine
                                                                               ## (theSet->Box
                                                                               ## (aNodeEndPrimitive -
                                                                               ## anIndex +
                                                                               ## 1));
                                                                               ##
                                                                               ## aRghSet
                                                                               ## (anIndex) =
                                                                               ## static_cast<Standard_Real>
                                                                               ## (aRghBox.Area());
                                                                               ##        }
                                                                               ##
                                                                               ##
                                                                               ## //
                                                                               ## Find
                                                                               ## best
                                                                               ## split
                                                                               ## using
                                                                               ## simplified
                                                                               ## SAH
                                                                               ##
                                                                               ## for
                                                                               ## (Standard_Integer
                                                                               ## aNbLft =
                                                                               ## 1,
                                                                               ## aNbRgh =
                                                                               ## aNodeNbPrimitives -
                                                                               ## 1;
                                                                               ## aNbLft <
                                                                               ## aNodeNbPrimitives;
                                                                               ## ++aNbLft,
                                                                               ## --aNbRgh)
                                                                               ##        {
                                                                               ##
                                                                               ## Standard_Real
                                                                               ## aCost =
                                                                               ## (aLftSet
                                                                               ## (aNbLft)
                                                                               ## /* /
                                                                               ## aNodeArea
                                                                               ## */) *
                                                                               ## aNbLft +
                                                                               ##
                                                                               ## (aRghSet
                                                                               ## (aNbRgh)
                                                                               ## /* /
                                                                               ## aNodeArea
                                                                               ## */) *
                                                                               ## aNbRgh;
                                                                               ##
                                                                               ## if
                                                                               ## (aCost <
                                                                               ## aMinSplitCost)
                                                                               ##          {
                                                                               ##
                                                                               ## aMinSplitCost =
                                                                               ## aCost;
                                                                               ##
                                                                               ## aMinSplitAxis =
                                                                               ## anAxis;
                                                                               ##
                                                                               ## aMinSplitIndex =
                                                                               ## aNbLft;
                                                                               ##          }
                                                                               ##        }
                                                                               ##      }
                                                                               ##
                                                                               ##
                                                                               ## if
                                                                               ## (aMinSplitAxis
                                                                               ## ==
                                                                               ## -1)
                                                                               ##      {
                                                                               ##
                                                                               ## return
                                                                               ## typename
                                                                               ## BVH_QueueBuilder<T,
                                                                               ## N>::BVH_ChildNodes();
                                                                               ## //
                                                                               ## failed
                                                                               ## to
                                                                               ## find
                                                                               ## split
                                                                               ## axis
                                                                               ##      }
                                                                               ##
                                                                               ##
                                                                               ## theBVH->SetInner
                                                                               ## (theNode);
                                                                               ##
                                                                               ## if
                                                                               ## (aMinSplitAxis
                                                                               ## !=
                                                                               ## (N < 4 ? N - 1 :
                                                                               ## 2))
                                                                               ##      {
                                                                               ##
                                                                               ## BVH_QuickSorter<T,
                                                                               ## N>
                                                                               ## (aMinSplitAxis).Perform
                                                                               ## (theSet,
                                                                               ## aNodeBegPrimitive,
                                                                               ## aNodeEndPrimitive);
                                                                               ##      }
                                                                               ##
                                                                               ##
                                                                               ## BVH_Box<T,
                                                                               ## N>
                                                                               ## aMinSplitBoxLft;
                                                                               ##
                                                                               ## BVH_Box<T,
                                                                               ## N>
                                                                               ## aMinSplitBoxRgh;
                                                                               ##
                                                                               ##
                                                                               ## //
                                                                               ## Compute
                                                                               ## bounding
                                                                               ## boxes
                                                                               ## for
                                                                               ## selected
                                                                               ## split
                                                                               ## plane
                                                                               ##
                                                                               ## for
                                                                               ## (Standard_Integer
                                                                               ## anIndex =
                                                                               ## aNodeBegPrimitive;
                                                                               ## anIndex <
                                                                               ## aMinSplitIndex +
                                                                               ## aNodeBegPrimitive;
                                                                               ## ++anIndex)
                                                                               ##      {
                                                                               ##
                                                                               ## aMinSplitBoxLft.Combine
                                                                               ## (theSet->Box
                                                                               ## (anIndex));
                                                                               ##      }
                                                                               ##
                                                                               ##
                                                                               ## for
                                                                               ## (Standard_Integer
                                                                               ## anIndex =
                                                                               ## aNodeEndPrimitive;
                                                                               ## anIndex
                                                                               ## >=
                                                                               ## aMinSplitIndex +
                                                                               ## aNodeBegPrimitive;
                                                                               ## --anIndex)
                                                                               ##      {
                                                                               ##
                                                                               ## aMinSplitBoxRgh.Combine
                                                                               ## (theSet->Box
                                                                               ## (anIndex));
                                                                               ##      }
                                                                               ##
                                                                               ##
                                                                               ## const
                                                                               ## Standard_Integer
                                                                               ## aMiddle =
                                                                               ## aNodeBegPrimitive +
                                                                               ## aMinSplitIndex;
                                                                               ##
                                                                               ## typedef
                                                                               ## typename
                                                                               ## BVH_QueueBuilder<T,
                                                                               ## N>::BVH_PrimitiveRange
                                                                               ## Range;
                                                                               ##
                                                                               ## return
                                                                               ## typename
                                                                               ## BVH_QueueBuilder<T,
                                                                               ## N>::BVH_ChildNodes
                                                                               ## (aMinSplitBoxLft,
                                                                               ##
                                                                               ## aMinSplitBoxRgh,
                                                                               ##
                                                                               ## Range
                                                                               ## (aNodeBegPrimitive,
                                                                               ## aMiddle -
                                                                               ## 1),
                                                                               ##
                                                                               ## Range
                                                                               ## (aMiddle,
                                                                               ## aNodeEndPrimitive));
                                                                               ##    }
                                                                               ##
type
  BVH_Tools*[T; N: static[cint]] {.importcpp: "BVH_Tools<\'0,\'1>",
                                header: "BVH_Tools.hxx", bycopy.} = object ## ! @name public types
                                                                      ## ! @name Box-Box Square distance
                                                                      ## ! Computes Square distance between Axis aligned bounding boxes
                                                                      ## ! @name Point-Box Square distance
                                                                      ## ! Computes square distance between point and bounding box
                                                                      ## ! @name Point-Box projection
                                                                      ## ! Computes projection of point on bounding box
                                                                      ## ! @name
                                                                      ## Point-Triangle Square distance
                                                                      ## ! Computes square distance between point and triangle
                                                                      ## ! @name Ray-Box
                                                                      ## Intersection
                                                                      ## ! Computes hit time of ray-box
                                                                      ## intersection
  BVH_ToolsBVH_VecNt*[T; N] = object
type
  BVH_BaseTraverse*[MetricType] {.importcpp: "BVH_BaseTraverse<\'0>",
                                 header: "BVH_Traverse.hxx", bycopy.} = object of RootObj  ## ! @name
                                                                          ## Metrics
                                                                          ## comparison for
                                                                          ## choosing the best branch
                                                                          ## !
                                                                          ## Compares the two
                                                                          ## metrics and
                                                                          ## chooses the best one.
                                                                          ## !
                                                                          ## Returns true if the first metric is better than the
                                                                          ## second,
                                                                          ## ! false
                                                                          ## otherwise.
                                                                          ## ! @name
                                                                          ## Rejection of the node by metric
                                                                          ## !
                                                                          ## Rejects the node by the metric
                                                                          ## ! @name
                                                                          ## Condition to stop the
                                                                          ## descend
                                                                          ## !
                                                                          ## Returns the flag
                                                                          ## controlling the tree
                                                                          ## descend.
                                                                          ## !
                                                                          ## Returns true if the tree
                                                                          ## descend should be
                                                                          ## stopped.
                                                                          ## ! @name
                                                                          ## Constructors
                                                                          ## !
                                                                          ## Constructor
type
  BVH_Traverse*[NumType; Dimension: static[cint]; BVHSetType; MetricType] {.
      importcpp: "BVH_Traverse<\'0,\'1,\'2,\'3>", header: "BVH_Traverse.hxx", bycopy.} = object of BVH_BaseTraverse[
      MetricType] ## ! @name public types
                 ## ! @name Constructor
                 ## ! Constructor
                 ## ! @name Setting the set to access the elements and BVH tree
                 ## ! Sets the BVH Set containing the BVH tree
                 ## ! @name Rules for Accept/Reject
                 ## ! Basing on the given metric, checks if the whole branch may be
                 ## ! accepted without any further checks.
                 ## ! Returns true if the metric is accepted, false otherwise.
                 ## ! @name Selection
                 ## ! Selection of the elements from the BVH tree by the
                 ## ! rules defined in Accept/Reject methods.
                 ## ! The method requires the BVHSet containing BVH tree to be set.
                 ## ! Returns the number of accepted elements.
                 ## ! @name Fields
#  BVH_TraverseBVH_VecNt*[NumType; Dimension] = BVH_VecNt[NumType, Dimension]
type
  BVH_PairTraverse*[NumType; Dimension: static[cint]; BVHSetType; MetricType] {.
      importcpp: "BVH_PairTraverse<\'0,\'1,\'2,\'3>", header: "BVH_Traverse.hxx",
      bycopy.} = object of BVH_BaseTraverse[MetricType] ## ! @name public types
                                                   ## ! @name Constructor
                                                   ## ! Constructor
                                                   ## ! @name Setting the sets to access the elements and BVH trees
                                                   ## ! Sets the BVH Sets containing the BVH trees
                                                   ## ! @name Rules for Accept/Reject
                                                   ## ! Rejection of the pair of nodes by bounding boxes.
                                                   ## ! Metric is computed to choose the best branch.
                                                   ## ! Returns true if the pair of nodes should be rejected, false otherwise.
                                                   ## ! @name Selection
                                                   ## ! Selection of the pairs of elements of two BVH trees by the
                                                   ## ! rules defined in Accept/Reject methods.
                                                   ## ! The method requires the BVHSets containing BVH trees to be set.
                                                   ## ! Returns the number of accepted pairs of elements.
                                                   ## ! @name Fields
#  BVH_PairTraverseBVH_VecNt*[NumType; Dimension] = BVH_VecNt[NumType, Dimension]
type
  BVH_TreeBaseTransient* {.importcpp: "BVH_TreeBaseTransient",
                          header: "BVH_Tree.hxx", bycopy.} = object of StandardTransient
## ! Stores parameters of bounding volume hierarchy (BVH).
## ! Bounding volume hierarchy (BVH) organizes geometric objects in
## ! the tree based on spatial relationships. Each node in the tree
## ! contains an axis-aligned bounding box of all the objects below
## ! it. Bounding volume hierarchies are used in many algorithms to
## ! support efficient operations on the sets of geometric objects,
## ! such as collision detection, ray-tracing, searching of nearest
## ! objects, and view frustum culling.
type
  BVH_TreeBase*[T; N: static[cint]] {.importcpp: "BVH_TreeBase<\'0,\'1>",
                                   header: "BVH_Tree.hxx", bycopy.} = object of BVH_TreeBaseTransient ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## custom
                                                                                               ## data
                                                                                               ## types
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## general
                                                                                               ## methods
                                                                                               ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## new
                                                                                               ## empty
                                                                                               ## BVH
                                                                                               ## tree.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## methods
                                                                                               ## for
                                                                                               ## accessing
                                                                                               ## individual
                                                                                               ## nodes
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## minimum
                                                                                               ## point
                                                                                               ## of
                                                                                               ## the
                                                                                               ## given
                                                                                               ## node.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## methods
                                                                                               ## for
                                                                                               ## accessing
                                                                                               ## serialized
                                                                                               ## tree
                                                                                               ## data
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## array
                                                                                               ## of
                                                                                               ## node
                                                                                               ## data
                                                                                               ## records.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## protected
                                                                                               ## fields
                                                                                               ##
                                                                                               ## !
                                                                                               ## Array
                                                                                               ## of
                                                                                               ## node
                                                                                               ## data
                                                                                               ## records.
    myNodeInfoBuffer* {.importc: "myNodeInfoBuffer".}: BVH_Array4i ## ! Array of node minimum points.
                                                               ##    typename BVH::ArrayType<T, N>::Type myMinPointBuffer;
                                                               ##
                                                               ##    //! Array of node maximum points.
                                                               ##    typename BVH::ArrayType<T, N>::Type myMaxPointBuffer;
                                                               ## ! Current depth of BVH tree (set by builder).
    myDepth* {.importc: "myDepth".}: cint
#  BVH_TreeBaseBVH_VecNt*[T; N] = BVH_VecNt[T, N]
type
  BVH_QuadTree* {.importcpp: "BVH_QuadTree", header: "BVH_Tree.hxx", bycopy.} = object
## ! Type corresponding to binary BVH.
type
  BVH_Triangulation*[T; N: static[cint]] {.importcpp: "BVH_Triangulation<\'0,\'1>",
                                        header: "BVH_Triangulation.hxx", bycopy.} = object of BVH_PrimitiveSet[
      T, N]                    ## ! Creates empty triangulation.
          ## ! Array of vertex coordinates.
          ##    typename BVH::ArrayType<T, N>::Type Vertices;
          ##
          ##    //! Array of indices of triangle vertices.
          ##    BVH_Array4i Elements;
          ## ! Returns total number of triangles.
  BVH_TriangulationBVH_VecNt*[T; N] = object
type
  VectorType*[T; N: static[cint]] {.importcpp: "BVH::VectorType<\'0,\'1>",
                                 header: "BVH_Types.hxx", bycopy.} = object ##  Not implemented
##    template<class T> struct VectorType<T, 1>
##    {
##      typedef T Type;
##    };
##
##    template<class T> struct VectorType<T, 2>
##    {
##      typedef NCollection_Vec2<T> Type;
##    };
##
##    template<class T> struct VectorType<T, 3>
##    {
##      typedef NCollection_Vec3<T> Type;
##    };
type
  MatrixType*[T; N: static[cint]] {.importcpp: "BVH::MatrixType<\'0,\'1>",
                                 header: "BVH_Types.hxx", bycopy.} = object ##  Not implemented
##    template<class T> struct MatrixType<T, 4>
##    {
##      typedef NCollection_Mat4<T> Type;
##    };
## ! Tool class for selecting type of array of vectors (STD or NCollection vector).
## ! \tparam T Numeric data type
## ! \tparam N Component number
##    template<class T, int N = 1> struct ArrayType
##    {
##    #ifndef _BVH_USE_STD_VECTOR_
##      typedef NCollection_Vector<typename VectorType<T, N>::Type> Type;
##    #else
##      typedef std::vector<typename VectorType<T, N>::Type> Type;
##    #endif
##    };
## ! 2D vector of integers.
type
  BVH_Vec2i* = object
## ! 3D vector of integers.
type
  BVH_Vec3i* = object
## ! 4D vector of integers.
type
  BVH_Vec4i* = object
## ! Array of 2D vectors of integers.
type
  BVH_Array2i* = object
## ! Array of 3D vectors of integers.
type
  BVH_Array3i* = object
## ! Array of 4D vectors of integers.
type
  BVH_Array4i* = object
## ! 2D vector of single precision reals.
type
  BVH_Vec2f* = object
## ! 3D vector of single precision reals.
type
  BVH_Vec3f* = object
## ! 4D vector of single precision reals.
type
  BVH_Vec4f* = object
## ! Array of 2D vectors of single precision reals.
type
  BVH_Array2f* = object
## ! Array of 3D vectors of single precision reals.
type
  BVH_Array3f* = object
## ! Array of 4D vectors of single precision reals.
type
  BVH_Array4f* = object
## ! 2D vector of double precision reals.
type
  BVH_Vec2d* = object
## ! 3D vector of double precision reals.
type
  BVH_Vec3d* = object
## ! 4D vector of double precision reals.
type
  BVH_Vec4d* = object
## ! Array of 2D vectors of double precision reals.
type
  BVH_Array2d* = object
## ! Array of 3D vectors of double precision reals.
type
  BVH_Array3d* = object
## ! Array of 4D vectors of double precision reals.
type
  BVH_Array4d* = object
## ! 4x4 matrix of single precision reals.
type
  BVH_Mat4f* = object
## ! 4x4 matrix of double precision reals.
type
  BVH_Mat4d* = object
## ! Tool class for accessing specific vector component (by index).
## ! \tparam T Numeric data type
## ! \tparam N Component number
type
  VecComp*[T; N: static[cint]] {.importcpp: "BVH::VecComp<\'0,\'1>",
                              header: "BVH_Types.hxx", bycopy.} = object ##  Not implemented
##    template<class T> struct VecComp<T, 2>
##    {
##      typedef typename BVH::VectorType<T, 2>::Type BVH_Vec2t;
##
##      static T Get (const BVH_Vec2t& theVec, const Standard_Integer theAxis)
##      {
##        return theAxis == 0 ? theVec.x() : theVec.y();
##      }
##    };
##
##    template<class T> struct VecComp<T, 3>
##    {
##      typedef typename BVH::VectorType<T, 3>::Type BVH_Vec3t;
##
##      static T Get (const BVH_Vec3t& theVec, const Standard_Integer theAxis)
##      {
##        return theAxis == 0 ? theVec.x() : ( theAxis == 1 ? theVec.y() : theVec.z() );
##      }
##    };
##
##    template<class T> struct VecComp<T, 4>
##    {
##      typedef typename BVH::VectorType<T, 4>::Type BVH_Vec4t;
##
##      static T Get (const BVH_Vec4t& theVec, const Standard_Integer theAxis)
##      {
##        return theAxis == 0 ? theVec.x() :
##          (theAxis == 1 ? theVec.y() : ( theAxis == 2 ? theVec.z() : theVec.w() ));
##      }
##    };
## ! Tool class providing typical operations on the array. It allows
## ! for interoperability between STD vector and NCollection vector.
## ! \tparam T Numeric data type
## ! \tparam N Component number
##    template<class T, int N = 1> struct Array
##    {
##      typedef typename BVH::ArrayType<T, N>::Type BVH_ArrayNt;
##
##      //! Returns a const reference to the element with the given index.
##      static inline const typename BVH::VectorType<T, N>::Type& Value (
##          const BVH_ArrayNt& theArray, const Standard_Integer theIndex)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        return theArray[theIndex];
##  #else
##        return theArray.Value (theIndex);
##  #endif
##      }
##
##      //! Returns a reference to the element with the given index.
##      static inline typename BVH::VectorType<T, N>::Type& ChangeValue (
##        BVH_ArrayNt& theArray, const Standard_Integer theIndex)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        return theArray[theIndex];
##  #else
##        return theArray.ChangeValue (theIndex);
##  #endif
##      }
##
##      //! Adds the new element at the end of the array.
##      static inline void Append (BVH_ArrayNt& theArray,
##        const typename BVH::VectorType<T, N>::Type& theElement)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        theArray.push_back (theElement);
##  #else
##        theArray.Append (theElement);
##  #endif
##      }
##
##      //! Returns the number of elements in the given array.
##      static inline Standard_Integer Size (const BVH_ArrayNt& theArray)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        return static_cast<Standard_Integer> (theArray.size());
##  #else
##        return static_cast<Standard_Integer> (theArray.Size());
##  #endif
##      }
##
##      //! Removes all elements from the given array.
##      static inline void Clear (BVH_ArrayNt& theArray)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        theArray.clear();
##  #else
##        theArray.Clear();
##  #endif
##      }
##
##      //! Requests that the array capacity be at least enough to
##      //! contain given number of elements. This function has no
##      //! effect in case of NCollection based array.
##      static inline void Reserve (BVH_ArrayNt& theArray, const Standard_Integer theCount)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        if (Size (theArray) == theCount)
##        {
##  #ifdef _STD_VECTOR_SHRINK
##
##  #if(defined(_MSC_VER) && (_MSC_VER < 1600))
##          BVH_ArrayNt aTmpArray(theArray);
##          theArray.swap(aTmpArray);
##  #else
##          theArray.shrink_to_fit();
##  #endif
##
##  #endif
##        }
##        else
##        {
##          theArray.reserve (theCount);
##        }
##  #else
##        // do nothing
##  #endif
##      }
##    };
