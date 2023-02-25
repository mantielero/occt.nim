import ../../tkernel/ncollection/ncollection_types
import ../../tkbrep/topods/topods_types
import ../../tkbrep/toptools/toptools_types
import ../../tkernel/standard/standard_types
import ../../tktopalgo/brepbuilderapi/brepbuilderapi_types
import ../../tkprim/brepprim/brepprim_types
import ../../tkprim/brepprimapi/brepprimapi_types
import ../../tkernel/tcolstd/tcolstd_types

type
  BRepTools_Modification = object of RootObj # FIXME

type
  BRepOffset_Interval* {.importcpp: "BRepOffset_Interval",
                        header: "BRepOffset_Interval.hxx", bycopy.} = object

type
  BRepOffset_ListOfInterval* = NCollection_List[BRepOffset_Interval]    
  BRepOffset_Analyse* {.importcpp: "BRepOffset_Analyse",
                       header: "BRepOffset_Analyse.hxx", bycopy.} = object ## ! @name
                                                                      ## Constructors
                                                                      ## ! Empty c-tor
                                                                      ## ! @name Performing analysis
                                                                      ## ! Performs the analysis
                                                                      ## ! @name Results
                                                                      ## ! Returns status of the algorithm
                                                                      ## ! @name Clearing the content
                                                                      ## ! Clears the content of the algorithm
                                                                      ## ! @name Treatment of tangential cases
                                                                      ## ! Treatment of the tangential cases.
                                                                      ## ! @param theEdges List of edges connecting tangent faces
                                                                      ## ! @name Fields
                                                                      ##  Inputs
    ## !< Input shape to analyze
    ## !< Criteria angle to check tangency
    ## !< Offset value
    ## !< Map to store offset values for the faces.
    ## !  Should be set by the calling algorithm.
    ##  Results
    ## !< Status of the algorithm
    ## !< Map containing the list of intervals on the edge
    ## !< Ancestors map
    ## !< Replacement of an edge in the face
    ## !< Map of shapes descendants built on the base of
    ## !< Ancestors map. Filled on the first query.
    ## !< New faces generated to close the gaps between adjacent
    ## !  tangential faces having different offset values
    ## !< Binding between edge and face generated from the edge

type
  BRepOffset_DataMapOfShapeListOfInterval* = NCollection_DataMap[TopoDS_Shape,
      BRepOffset_ListOfInterval, TopTools_ShapeMapHasher]
#   BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval* = Iterator[
#       TopoDS_Shape, BRepOffset_ListOfInterval, TopTools_ShapeMapHasher]

type
  BRepOffset_DataMapOfShapeMapOfShape* = NCollection_DataMap[TopoDS_Shape,
      TopTools_MapOfShape, TopTools_ShapeMapHasher]
#   BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape* = Iterator[TopoDS_Shape,
#       TopTools_MapOfShape, TopTools_ShapeMapHasher]

type
  BRepOffset_Offset* {.importcpp: "BRepOffset_Offset",
                      header: "BRepOffset_Offset.hxx", bycopy.} = object

type
  BRepOffset_DataMapOfShapeOffset* = NCollection_DataMap[TopoDS_Shape,
      BRepOffset_Offset, TopTools_ShapeMapHasher]
#   BRepOffset_DataMapIteratorOfDataMapOfShapeOffset* = Iterator[TopoDS_Shape,
#       BRepOffset_Offset, TopTools_ShapeMapHasher]

type
  BRepOffset_Error* {.size: sizeof(cint), importcpp: "BRepOffset_Error",
                     header: "BRepOffset_Error.hxx".} = enum
    BRepOffset_NoError, BRepOffset_UnknownError, BRepOffset_BadNormalsOnGeometry,
    BRepOffset_C0Geometry, BRepOffset_NullOffset, BRepOffset_NotConnectedShell, BRepOffset_CannotTrimEdges, ## !< exception while trim edges
    BRepOffset_CannotFuseVertices, ## !< exception while fuse vertices
    BRepOffset_CannotExtentEdge, ## !< exception while extent edges
    BRepOffset_UserBreak      ## !< user break

type
  BRepOffset_Inter2d* {.importcpp: "BRepOffset_Inter2d",
                       header: "BRepOffset_Inter2d.hxx", bycopy.} = object ## ! Computes the
                                                                      ## intersections between the edges stored
                                                                      ## ! is AsDes as
                                                                      ## descendants of <F> .
                                                                      ## Intersections is computed
                                                                      ## ! between two edges if one of them is bound in NewEdges.
                                                                      ## ! When all faces of the shape are treated the
                                                                      ## intersection
                                                                      ## ! vertices have to be fused using the
                                                                      ## FuseVertices method.
                                                                      ## ! theDMVV contains the vertices that should be fused

type
  BRepOffset_Inter3d* {.importcpp: "BRepOffset_Inter3d",
                       header: "BRepOffset_Inter3d.hxx", bycopy.} = object ## !
                                                                      ## Constructor
                                                                      ## ! Stores the
                                                                      ## intersection results into AsDes






# type
#   BRepOffset_ListIteratorOfListOfInterval* = Iterator[BRepOffset_Interval]


type
  BRepOffset_MakeLoops* {.importcpp: "BRepOffset_MakeLoops",
                         header: "BRepOffset_MakeLoops.hxx", bycopy.} = object

type
  BRepOffset_MakeOffset* {.importcpp: "BRepOffset_MakeOffset",
                          header: "BRepOffset_MakeOffset.hxx", bycopy.} = object ## !
                                                                            ## @name
                                                                            ## History
                                                                            ## methods
                                                                            ## !
                                                                            ## Returns the  list of
                                                                            ## shapes
                                                                            ## generated from the
                                                                            ## shape <S>.
                                                                            ## !
                                                                            ## Analyze
                                                                            ## progress
                                                                            ## steps of the
                                                                            ## whole
                                                                            ## operation.
                                                                            ## !
                                                                            ## @param
                                                                            ## theWhole - sum of
                                                                            ## progress of all
                                                                            ## operations.
                                                                            ## !
                                                                            ## @oaram
                                                                            ## theSteps -
                                                                            ## steps of the
                                                                            ## operations
                                                                            ## supported by PI
                                                                            ## !
                                                                            ## Check if
                                                                            ## shape
                                                                            ## consists of only
                                                                            ## planar
                                                                            ## faces
                                                                            ## ! If
                                                                            ## <myIsLinearizationAllowed> is
                                                                            ## TRUE, try to
                                                                            ## approximate
                                                                            ## images of
                                                                            ## faces
                                                                            ## ! by
                                                                            ## planar
                                                                            ## faces
    ##  Handle bad walls in thicksolid mode.

type
  BRepOffsetSimple_Status* {.size: sizeof(cint),
                            importcpp: "BRepOffsetSimple_Status",
                            header: "BRepOffset_MakeSimpleOffset.hxx".} = enum
    BRepOffsetSimple_OK, BRepOffsetSimple_NullInputShape,
    BRepOffsetSimple_ErrorOffsetComputation,
    BRepOffsetSimple_ErrorWallFaceComputation,
    BRepOffsetSimple_ErrorInvalidNbShells, BRepOffsetSimple_ErrorNonClosedShell

type
  BRepOffset_Mode* {.size: sizeof(cint), importcpp: "BRepOffset_Mode",
                    header: "BRepOffset_Mode.hxx".} = enum
    BRepOffset_Skin, BRepOffset_Pipe, BRepOffset_RectoVerso




type
  BRepOffset_SimpleOffset* {.importcpp: "BRepOffset_SimpleOffset",
                            header: "BRepOffset_SimpleOffset.hxx", bycopy.} = object of BRepTools_Modification ##
                                                                                                        ## !
                                                                                                        ## Method
                                                                                                        ## to
                                                                                                        ## fill
                                                                                                        ## new
                                                                                                        ## face
                                                                                                        ## data
                                                                                                        ## for
                                                                                                        ## single
                                                                                                        ## face.
    ## ! Map of edges to new edges information.
    ## ! Map of vertices to new vertices information.
    ## ! Offset value.
    ## ! Tolerance.    
  Handle_BRepOffset_SimpleOffset* = Handle[BRepOffset_SimpleOffset]

## ! This class represents mechanism of simple offset algorithm i. e.
## ! topology-preserve offset construction without intersection.
## !
## ! The list below shows mapping scheme:
## ! - Each surface is mapped to its geometric offset surface.
## ! - For each edge, pcurves are mapped to the same pcurves on offset surfaces.
## ! - For each edge, 3d curve is constructed by re-approximation of pcurve on the first offset face.
## ! - Position of each vertex in a result shell is computed as average point of all ends of edges shared by that vertex.
## ! - Tolerances are updated according to the resulting geometry.

type
  BRepOffset_SimpleOffsetbase_type* = BRepTools_Modification


type
  BRepOffset_Status* {.size: sizeof(cint), importcpp: "BRepOffset_Status",
                      header: "BRepOffset_Status.hxx".} = enum
    BRepOffset_Good, BRepOffset_Reversed, BRepOffset_Degenerated,
    BRepOffset_Unknown

type
  BRepOffset_Tool* {.importcpp: "BRepOffset_Tool", header: "BRepOffset_Tool.hxx",
                    bycopy.} = object ## ! <V1> is the FirstVertex ,<V2> is the Last Vertex of <Edge>
                                   ## ! taking account the orientation of Edge.


type
  BRepOffset* {.importcpp: "BRepOffset", header: "BRepOffset.hxx", bycopy.} = object ## !
                                                                             ## returns   the
                                                                             ## Offset
                                                                             ## surface
                                                                             ## computed
                                                                             ## from  the
                                                                             ## !
                                                                             ## surface
                                                                             ## <Surface> at an
                                                                             ## OffsetDistance
                                                                             ## <Offset>.
                                                                             ## !
                                                                             ## ! If
                                                                             ## possible,
                                                                             ## this
                                                                             ## method
                                                                             ## returns  the
                                                                             ## real
                                                                             ## type of
                                                                             ## ! the
                                                                             ## surface (
                                                                             ## e.g. An
                                                                             ## Offset of a
                                                                             ## plane is a
                                                                             ## plane).
                                                                             ## !
                                                                             ## ! If  no
                                                                             ## particular
                                                                             ## case  is
                                                                             ## detected, the
                                                                             ## returned
                                                                             ## !
                                                                             ## surface
                                                                             ## will
                                                                             ## have the
                                                                             ## Type
                                                                             ## Geom_OffsetSurface.
                                                                             ## !
                                                                             ## Parameter
                                                                             ## allowC0 is
                                                                             ## then
                                                                             ## passed as
                                                                             ## last
                                                                             ## argument to
                                                                             ## !
                                                                             ## constructor of
                                                                             ## Geom_OffsetSurface.


type
  BRepOffsetAPI_DraftAngle* {.importcpp: "BRepOffsetAPI_DraftAngle",
                             header: "BRepOffsetAPI_DraftAngle.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## an
                                                                                                              ## empty
                                                                                                              ## algorithm
                                                                                                              ## to
                                                                                                              ## perform
type
  BRepOffsetAPI_FindContigousEdges* {.importcpp: "BRepOffsetAPI_FindContigousEdges", header: "BRepOffsetAPI_FindContigousEdges.hxx",
                                     bycopy.} = object ## ! Initializes an algorithm for identifying contiguous edges
                                                    ## ! on shapes with tolerance as the tolerance of contiguity
                                                    ## ! (defaulted to 1.0e-6). This tolerance value is used to
                                                    ## ! determine whether two edges or sections of edges are coincident.
                                                    ## ! Use the function Add to define the shapes to be checked.
                                                    ## ! Set option to false. This argument (defaulted to true) will
                                                    ## ! serve in subsequent software releases for performing an
                                                    ## ! analysis of degenerated shapes.


type
  BRepOffsetAPI_MakeDraft* {.importcpp: "BRepOffsetAPI_MakeDraft",
                            header: "BRepOffsetAPI_MakeDraft.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## the

type
  BRepOffsetAPI_MakeEvolved* {.importcpp: "BRepOffsetAPI_MakeEvolved",
                              header: "BRepOffsetAPI_MakeEvolved.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape

type
  BRepOffsetAPI_MakeFilling* {.importcpp: "BRepOffsetAPI_MakeFilling",
                              header: "BRepOffsetAPI_MakeFilling.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## a
                                                                                                              ## wire
type
  BRepOffsetAPI_MakeOffset* {.importcpp: "BRepOffsetAPI_MakeOffset",
                             header: "BRepOffsetAPI_MakeOffset.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                            ## !
                                                                                                            ## Constructs
                                                                                                            ## an
                                                                                                            ## algorithm
                                                                                                            ## for
                                                                                                            ## creating
                                                                                                            ## an
                                                                                                            ## empty
                                                                                                            ## offset
type
  BRepOffsetAPI_MakeOffsetShape* {.importcpp: "BRepOffsetAPI_MakeOffsetShape",
                                  header: "BRepOffsetAPI_MakeOffsetShape.hxx",
                                  bycopy.} = object of BRepBuilderAPI_MakeShape ## !
                                                                           ## Constructor does
                                                                           ## nothing.



type
  BRepOffsetAPI_MakePipe* {.importcpp: "BRepOffsetAPI_MakePipe",
                           header: "BRepOffsetAPI_MakePipe.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep ##
                                                                                                     ## !
                                                                                                     ## Constructs
                                                                                                     ## a
                                                                                                     ## pipe
                                                                                                     ## by
                                                                                                     ## sweeping
                                                                                                     ## the
                                                                                                     ## shape
                                                                                                     ## Profile
                                                                                                     ## along
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## wire
                                                                                                     ## Spine.The
                                                                                                     ## angle
                                                                                                     ## made
                                                                                                     ## by
                                                                                                     ## the
                                                                                                     ## spine
                                                                                                     ## with
                                                                                                     ## the
                                                                                                     ## profile
                                                                                                     ## is
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## maintained
                                                                                                     ## along
                                                                                                     ## the
                                                                                                     ## length
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## pipe.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Warning
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Spine
                                                                                                     ## must
                                                                                                     ## be
                                                                                                     ## G1
                                                                                                     ## continuous;
                                                                                                     ## that
                                                                                                     ## is,
                                                                                                     ## on
                                                                                                     ## the
                                                                                                     ## connection
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## vertex
                                                                                                     ## of
                                                                                                     ## two
                                                                                                     ## edges
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## wire,
                                                                                                     ## the
                                                                                                     ## tangent
                                                                                                     ## vectors
                                                                                                     ## on
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## left
                                                                                                     ## and
                                                                                                     ## on
                                                                                                     ## the
                                                                                                     ## right
                                                                                                     ## must
                                                                                                     ## have
                                                                                                     ## the
                                                                                                     ## same
                                                                                                     ## direction,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## though
                                                                                                     ## not
                                                                                                     ## necessarily
                                                                                                     ## the
                                                                                                     ## same
                                                                                                     ## magnitude.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Exceptions
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Standard_DomainError
                                                                                                     ## if
                                                                                                     ## the
                                                                                                     ## profile
                                                                                                     ## is
                                                                                                     ## a
                                                                                                     ## solid
                                                                                                     ## or
                                                                                                     ## a
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## composite
                                                                                                     ## solid.

type
  BRepOffsetAPI_MakePipeShell* {.importcpp: "BRepOffsetAPI_MakePipeShell",
                                header: "BRepOffsetAPI_MakePipeShell.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep ##
                                                                                                               ## !
                                                                                                               ## Constructs
                                                                                                               ## the
                                                                                                               ## shell-generating
                                                                                                               ## framework
                                                                                                               ## defined
                                                                                                               ## by
                                                                                                               ## the
                                                                                                               ## wire
                                                                                                               ## Spine.
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## Sets
                                                                                                               ## an
                                                                                                               ## sweep's
                                                                                                               ## mode
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## If
                                                                                                               ## no
                                                                                                               ## mode
                                                                                                               ## are
                                                                                                               ## set,
                                                                                                               ## the
                                                                                                               ## mode
                                                                                                               ## use
                                                                                                               ## in
                                                                                                               ## MakePipe
                                                                                                               ## is
                                                                                                               ## used
type
  BRepOffsetAPI_MakeThickSolid* {.importcpp: "BRepOffsetAPI_MakeThickSolid",
                                 header: "BRepOffsetAPI_MakeThickSolid.hxx",
                                 bycopy.} = object of BRepOffsetAPI_MakeOffsetShape ## !
                                                                               ## Constructor
                                                                               ## does
                                                                               ## nothing.


type
  BRepOffsetAPI_MiddlePath* {.importcpp: "BRepOffsetAPI_MiddlePath",
                             header: "BRepOffsetAPI_MiddlePath.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                            ## !
                                                                                                            ## General
                                                                                                            ## constructor.
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## StartShape
                                                                                                            ## and
                                                                                                            ## EndShape
                                                                                                            ## may
                                                                                                            ## be
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## a
                                                                                                            ## wire
                                                                                                            ## or
                                                                                                            ## a
                                                                                                            ## face
type
  BRepOffsetAPI_NormalProjection* {.importcpp: "BRepOffsetAPI_NormalProjection", header: "BRepOffsetAPI_NormalProjection.hxx",
                                   bycopy.} = object of BRepBuilderAPI_MakeShape ## !
                                                                            ## Constructs an
                                                                            ## empty
                                                                            ## framework to
                                                                            ## define
                                                                            ## projection on
                                                                            ## ! a
                                                                            ## shape
                                                                            ## according to the
                                                                            ## normal from each
                                                                            ## point to be
                                                                            ## !
                                                                            ## projected to the
                                                                            ## shape.


type
  BRepOffsetAPI_SequenceOfSequenceOfReal* = NCollection_Sequence[
      TColStd_SequenceOfReal]


type
  BRepOffsetAPI_SequenceOfSequenceOfShape* = NCollection_Sequence[
      TopTools_SequenceOfShape]


type
  BRepOffsetAPI_Sewing* = BRepBuilderAPI_Sewing


type
  BRepOffsetAPI_ThruSections* {.importcpp: "BRepOffsetAPI_ThruSections",
                               header: "BRepOffsetAPI_ThruSections.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## an
                                                                                                                ## algorithm
                                                                                                                ## for
                                                                                                                ## building
                                                                                                                ## a
                                                                                                                ## shell
                                                                                                                ## or
                                                                                                                ## a
                                                                                                                ## solid
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## passing
                                                                                                                ## through
                                                                                                                ## a
                                                                                                                ## set
                                                                                                                ## of
                                                                                                                ## sections,
                                                                                                                ## where:
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## isSolid
                                                                                                                ## is
                                                                                                                ## set
                                                                                                                ## to
                                                                                                                ## true
                                                                                                                ## if
                                                                                                                ## the
                                                                                                                ## construction
                                                                                                                ## algorithm
                                                                                                                ## is
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## required
                                                                                                                ## to
                                                                                                                ## build
                                                                                                                ## a
                                                                                                                ## solid
                                                                                                                ## or
                                                                                                                ## to
                                                                                                                ## false
                                                                                                                ## if
                                                                                                                ## it
                                                                                                                ## is
                                                                                                                ## required
                                                                                                                ## to
                                                                                                                ## build
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## a
                                                                                                                ## shell
                                                                                                                ## (the
                                                                                                                ## default
                                                                                                                ## value),
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## ruled
                                                                                                                ## is
                                                                                                                ## set
                                                                                                                ## to
                                                                                                                ## true
                                                                                                                ## if
                                                                                                                ## the
                                                                                                                ## faces
                                                                                                                ## generated
                                                                                                                ## between
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## the
                                                                                                                ## edges
                                                                                                                ## of
                                                                                                                ## two
                                                                                                                ## consecutive
                                                                                                                ## wires
                                                                                                                ## are
                                                                                                                ## ruled
                                                                                                                ## surfaces
                                                                                                                ## or
                                                                                                                ## to
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## false
                                                                                                                ## (the
                                                                                                                ## default
                                                                                                                ## value)
                                                                                                                ## if
                                                                                                                ## they
                                                                                                                ## are
                                                                                                                ## smoothed
                                                                                                                ## out
                                                                                                                ## by
                                                                                                                ## approximation,
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## pres3d
                                                                                                                ## defines
                                                                                                                ## the
                                                                                                                ## precision
                                                                                                                ## criterion
                                                                                                                ## used
                                                                                                                ## by
                                                                                                                ## the
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## approximation
                                                                                                                ## algorithm;
                                                                                                                ## the
                                                                                                                ## default
                                                                                                                ## value
                                                                                                                ## is
                                                                                                                ## 1.0e-6.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Use
                                                                                                                ## AddWire
                                                                                                                ## and
                                                                                                                ## AddVertex
                                                                                                                ## to
                                                                                                                ## define
                                                                                                                ## the
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## successive
                                                                                                                ## sections
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## shell
                                                                                                                ## or
                                                                                                                ## solid
                                                                                                                ## to
                                                                                                                ## be
                                                                                                                ## built.
    ## !< List of input wires
    ## !< Working wires

