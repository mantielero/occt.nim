type
  BRepBuilderAPI* {.importcpp: "BRepBuilderAPI", header: "BRepBuilderAPI.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Sets
                                                                                         ## the
                                                                                         ## current
                                                                                         ## plane.
type
  BRepBuilderAPI_BndBoxTree* = NCollectionUBTree[cint, BndBox]
## =======================================================================
## ! Class BRepBuilderAPI_BndBoxTreeSelector
## !   derived from UBTree::Selector
## !   This class is used to select overlapping boxes, stored in
## !   NCollection::UBTree; contains methods to maintain the selection
## !   condition and to retrieve selected objects after search.
## =======================================================================
type
  BRepBuilderAPI_BndBoxTreeSelector* {.importcpp: "BRepBuilderAPI_BndBoxTreeSelector", header: "BRepBuilderAPI_BndBoxTreeSelector.hxx",
                                      bycopy.} = object of Selector ## ! Constructor; calls the base class constructor
type
  BRepBuilderAPI_Collect* {.importcpp: "BRepBuilderAPI_Collect",
                           header: "BRepBuilderAPI_Collect.hxx", bycopy.} = object
type
  BRepBuilderAPI_Command* {.importcpp: "BRepBuilderAPI_Command",
                           header: "BRepBuilderAPI_Command.hxx", bycopy, pure, inheritable.} = object ## !
                                                                              ## Set
                                                                              ## done to
                                                                              ## False.
type
  BRepBuilderAPI_Copy* {.importcpp: "BRepBuilderAPI_Copy",
                        header: "BRepBuilderAPI_Copy.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape ##
                                                                                                    ## !
                                                                                                    ## Constructs
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## copy
                                                                                                    ## framework.
                                                                                                    ## Use
                                                                                                    ## the
                                                                                                    ## function
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Perform
                                                                                                    ## to
                                                                                                    ## copy
                                                                                                    ## shapes.
type
  BRepBuilderAPI_FastSewing* {.importcpp: "BRepBuilderAPI_FastSewing",
                              header: "BRepBuilderAPI_FastSewing.hxx", bycopy.} = object of StandardTransient
    ##  myFaceVec, myVertexVec and myEdgeVec lists are filled only once!!!!!
    ## ! Vector of faces
    ## ! Vector of Vertices
    ## ! Vector of edges
    ## ! Tolerance
    ## ! Bits of computation status
  BRepBuilderAPI_FastSewingFS_VARStatuses* = cuint
  BRepBuilderAPI_FastSewingFS_Statuses* {.size: sizeof(cint),
      importcpp: "BRepBuilderAPI_FastSewing::FS_Statuses",
      header: "BRepBuilderAPI_FastSewing.hxx".} = enum
    FS_OK = 0x00000000, FS_Degenerated = 0x00000001, FS_FindVertexError = 0x00000002,
    FS_FindEdgeError = 0x00000004, FS_FaceWithNullSurface = 0x00000008,
    FS_NotNaturalBoundsFace = 0x00000010, FS_InfiniteSurface = 0x00000020,
    FS_EmptyInput = 0x00000040, FS_Exception = 0x00000080
type
  BRepBuilderAPI_FindPlane* {.importcpp: "BRepBuilderAPI_FindPlane",
                             header: "BRepBuilderAPI_FindPlane.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Initializes
                                                                                  ## an
                                                                                  ## empty
                                                                                  ## algorithm.
                                                                                  ## The
                                                                                  ## function
                                                                                  ## Init
                                                                                  ## is
                                                                                  ## then
                                                                                  ## used
                                                                                  ## to
                                                                                  ## define
                                                                                  ## the
                                                                                  ## shape.
type
  BRepBuilderAPI_GTransform* {.importcpp: "BRepBuilderAPI_GTransform",
                              header: "BRepBuilderAPI_GTransform.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape ##
                                                                                                                ## !
                                                                                                                ## Constructs
                                                                                                                ## a
                                                                                                                ## framework
                                                                                                                ## for
                                                                                                                ## applying
                                                                                                                ## the
                                                                                                                ## geometric
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## transformation
                                                                                                                ## T
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## shape.
                                                                                                                ## Use
                                                                                                                ## the
                                                                                                                ## function
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Perform
                                                                                                                ## to
                                                                                                                ## define
                                                                                                                ## the
                                                                                                                ## shape
                                                                                                                ## to
                                                                                                                ## transform.
type
  EdgeObj* {.importcpp: "EdgeObj",
                            header: "BRepBuilderAPI_MakeEdge.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape
type
  Edge2dObj* {.importcpp: "BRepBuilderAPI_MakeEdge2d",
                              header: "BRepBuilderAPI_MakeEdge2d.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape
type
  BRepBuilderAPI_MakeFace* {.importcpp: "BRepBuilderAPI_MakeFace",
                            header: "BRepBuilderAPI_MakeFace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## Not
                                                                                                          ## done.
type
  BRepBuilderAPI_MakePolygon* {.importcpp: "BRepBuilderAPI_MakePolygon",
                               header: "BRepBuilderAPI_MakePolygon.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## an
                                                                                                                ## empty
                                                                                                                ## polygonal
                                                                                                                ## wire,
                                                                                                                ## to
                                                                                                                ## which
                                                                                                                ## points
                                                                                                                ## or
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## vertices
                                                                                                                ## are
                                                                                                                ## added
                                                                                                                ## using
                                                                                                                ## the
                                                                                                                ## Add
                                                                                                                ## function.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## As
                                                                                                                ## soon
                                                                                                                ## as
                                                                                                                ## the
                                                                                                                ## polygonal
                                                                                                                ## wire
                                                                                                                ## under
                                                                                                                ## construction
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## contains
                                                                                                                ## vertices,
                                                                                                                ## it
                                                                                                                ## can
                                                                                                                ## be
                                                                                                                ## consulted
                                                                                                                ## using
                                                                                                                ## the
                                                                                                                ## Wire
                                                                                                                ## function.
type
  BRepBuilderAPI_MakeShape* {.importcpp: "BRepBuilderAPI_MakeShape",
                             header: "BRepBuilderAPI_MakeShape.hxx", bycopy.} = object of BRepBuilderAPI_Command ##
                                                                                                          ## !
                                                                                                          ## This
                                                                                                          ## is
                                                                                                          ## called
                                                                                                          ## by
                                                                                                          ## Shape().
                                                                                                          ## It
                                                                                                          ## does
                                                                                                          ## nothing
                                                                                                          ## but
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## may
                                                                                                          ## be
                                                                                                          ## redefined.
type
  BRepBuilderAPI_MakeShell* {.importcpp: "BRepBuilderAPI_MakeShell",
                             header: "BRepBuilderAPI_MakeShell.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                            ## !
                                                                                                            ## Constructs
                                                                                                            ## an
                                                                                                            ## empty
                                                                                                            ## shell
                                                                                                            ## framework.
                                                                                                            ## The
                                                                                                            ## Init
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## function
                                                                                                            ## is
                                                                                                            ## used
                                                                                                            ## to
                                                                                                            ## define
                                                                                                            ## the
                                                                                                            ## construction
                                                                                                            ## arguments.
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Warning
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## The
                                                                                                            ## function
                                                                                                            ## Error
                                                                                                            ## will
                                                                                                            ## return
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## BRepBuilderAPI_EmptyShell
                                                                                                            ## if
                                                                                                            ## it
                                                                                                            ## is
                                                                                                            ## called
                                                                                                            ## before
                                                                                                            ## the
                                                                                                            ## function
                                                                                                            ## Init.
type
  BRepBuilderAPI_MakeSolid* {.importcpp: "BRepBuilderAPI_MakeSolid",
                             header: "BRepBuilderAPI_MakeSolid.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                            ## !
                                                                                                            ## Initializes
                                                                                                            ## the
                                                                                                            ## construction
                                                                                                            ## of
                                                                                                            ## a
                                                                                                            ## solid.
                                                                                                            ## An
                                                                                                            ## empty
                                                                                                            ## solid
                                                                                                            ## is
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## considered
                                                                                                            ## to
                                                                                                            ## cover
                                                                                                            ## the
                                                                                                            ## whole
                                                                                                            ## space.
                                                                                                            ## The
                                                                                                            ## Add
                                                                                                            ## function
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## is
                                                                                                            ## used
                                                                                                            ## to
                                                                                                            ## define
                                                                                                            ## shells
                                                                                                            ## to
                                                                                                            ## bound
                                                                                                            ## it.
type
  BRepBuilderAPI_MakeVertex* {.importcpp: "BRepBuilderAPI_MakeVertex",
                              header: "BRepBuilderAPI_MakeVertex.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## a
                                                                                                              ## vertex
                                                                                                              ## from
                                                                                                              ## point
                                                                                                              ## P.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Example
                                                                                                              ## create
                                                                                                              ## a
                                                                                                              ## vertex
                                                                                                              ## from
                                                                                                              ## a
                                                                                                              ## 3D
                                                                                                              ## point.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## gp_Pnt
                                                                                                              ## P(0,0,10);
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## TopoDS_Vertex
                                                                                                              ## V
                                                                                                              ## =
                                                                                                              ## BRepBuilderAPI_MakeVertex(P);
type
  BRepBuilderAPI_MakeWire* {.importcpp: "BRepBuilderAPI_MakeWire",
                            header: "BRepBuilderAPI_MakeWire.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## wire
                                                                                                          ## framework,
                                                                                                          ## to
                                                                                                          ## which
                                                                                                          ## edges
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## are
                                                                                                          ## added
                                                                                                          ## using
                                                                                                          ## the
                                                                                                          ## Add
                                                                                                          ## function.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## As
                                                                                                          ## soon
                                                                                                          ## as
                                                                                                          ## the
                                                                                                          ## wire
                                                                                                          ## contains
                                                                                                          ## one
                                                                                                          ## edge,
                                                                                                          ## it
                                                                                                          ## can
                                                                                                          ## return
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## with
                                                                                                          ## the
                                                                                                          ## use
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## function
                                                                                                          ## Wire.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Warning
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## The
                                                                                                          ## function
                                                                                                          ## Error
                                                                                                          ## will
                                                                                                          ## return
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## BRepBuilderAPI_EmptyWire
                                                                                                          ## if
                                                                                                          ## it
                                                                                                          ## is
                                                                                                          ## called
                                                                                                          ## before
                                                                                                          ## at
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## least
                                                                                                          ## one
                                                                                                          ## edge
                                                                                                          ## is
                                                                                                          ## added
                                                                                                          ## to
                                                                                                          ## the
                                                                                                          ## wire
                                                                                                          ## under
                                                                                                          ## construction.
type
  BRepBuilderAPI_ModifyShape* {.importcpp: "BRepBuilderAPI_ModifyShape",
                               header: "BRepBuilderAPI_ModifyShape.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## the
                                                                                                                ## list
                                                                                                                ## of
                                                                                                                ## shapes
                                                                                                                ## modified
                                                                                                                ## from
                                                                                                                ## the
                                                                                                                ## shape
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## <S>.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Empty
                                                                                                                ## constructor.
type
  BRepBuilderAPI_NurbsConvert* {.importcpp: "BRepBuilderAPI_NurbsConvert",
                                header: "BRepBuilderAPI_NurbsConvert.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape ##
                                                                                                                    ## !
                                                                                                                    ## Constructs
                                                                                                                    ## a
                                                                                                                    ## framework
                                                                                                                    ## for
                                                                                                                    ## converting
                                                                                                                    ## the
                                                                                                                    ## geometry
                                                                                                                    ## of
                                                                                                                    ## a
                                                                                                                    ##
                                                                                                                    ## !
                                                                                                                    ## shape
                                                                                                                    ## into
                                                                                                                    ## NURBS
                                                                                                                    ## geometry.
                                                                                                                    ## Use
                                                                                                                    ## the
                                                                                                                    ## function
                                                                                                                    ## Perform
                                                                                                                    ##
                                                                                                                    ## !
                                                                                                                    ## to
                                                                                                                    ## define
                                                                                                                    ## the
                                                                                                                    ## shape
                                                                                                                    ## to
                                                                                                                    ## convert.
type
  HandleBRepBuilderAPI_Sewing* = Handle[BRepBuilderAPI_Sewing]
## ! Provides methods to
## !
## ! - identify possible contigous boundaries (for control
## ! afterwards (of continuity: C0, C1, ...))
## !
## ! - assemble contigous shapes into one shape.
## ! Only manifold shapes will be found. Sewing will not
## ! be done in case of multiple edges.
## !
## ! For sewing, use this function as following:
## ! - create an empty object
## ! - default tolerance 1.E-06
## ! - with face analysis on
## ! - with sewing operation on
## ! - set the cutting option as you need (default True)
## ! - define a tolerance
## ! - add shapes to be sewed -> Add
## ! - compute -> Perfom
## ! - output the resulted shapes
## ! - output free edges if necessary
## ! - output multiple edges if necessary
## ! - output the problems if any
type
  BRepBuilderAPI_Sewing* {.importcpp: "BRepBuilderAPI_Sewing",
                          header: "BRepBuilderAPI_Sewing.hxx", bycopy.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## an
                                                                                               ## object
                                                                                               ## with
                                                                                               ##
                                                                                               ## !
                                                                                               ## tolerance
                                                                                               ## of
                                                                                               ## connexity
                                                                                               ##
                                                                                               ## !
                                                                                               ## option
                                                                                               ## for
                                                                                               ## sewing
                                                                                               ## (if
                                                                                               ## false
                                                                                               ## only
                                                                                               ## control)
                                                                                               ##
                                                                                               ## !
                                                                                               ## option
                                                                                               ## for
                                                                                               ## analysis
                                                                                               ## of
                                                                                               ## degenerated
                                                                                               ## shapes
                                                                                               ##
                                                                                               ## !
                                                                                               ## option
                                                                                               ## for
                                                                                               ## cutting
                                                                                               ## of
                                                                                               ## free
                                                                                               ## edges.
                                                                                               ##
                                                                                               ## !
                                                                                               ## option
                                                                                               ## for
                                                                                               ## non
                                                                                               ## manifold
                                                                                               ## processing
                                                                                               ##
                                                                                               ## !
                                                                                               ## Performs
                                                                                               ## cutting
                                                                                               ## of
                                                                                               ## sections
                                                                                               ##
                                                                                               ## !
                                                                                               ## theProgress
                                                                                               ## -
                                                                                               ## progress
                                                                                               ## indicator
                                                                                               ## of
                                                                                               ## processing
type
  BRepBuilderAPI_Transform* {.importcpp: "BRepBuilderAPI_Transform",
                             header: "BRepBuilderAPI_Transform.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## a
                                                                                                              ## framework
                                                                                                              ## for
                                                                                                              ## applying
                                                                                                              ## the
                                                                                                              ## geometric
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## transformation
                                                                                                              ## T
                                                                                                              ## to
                                                                                                              ## a
                                                                                                              ## shape.
                                                                                                              ## Use
                                                                                                              ## the
                                                                                                              ## function
                                                                                                              ## Perform
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## to
                                                                                                              ## define
                                                                                                              ## the
                                                                                                              ## shape
                                                                                                              ## to
                                                                                                              ## transform.
type
  VectorOfPoint* = NCollectionVector[XyzObj]
## =======================================================================
## ! Class BRepBuilderAPI_VertexInspector
## !   derived from NCollection_CellFilter_InspectorXYZ
## !   This class define the Inspector interface for CellFilter algorithm,
## !   working with gp_XYZ points in 3d space.
## !   Used in search of coincidence points with a certain tolerance.
## =======================================================================
type
  BRepBuilderAPI_VertexInspector* {.importcpp: "BRepBuilderAPI_VertexInspector", header: "BRepBuilderAPI_VertexInspector.hxx",
                                   bycopy.} = object of NCollectionCellFilterInspectorXYZ
  BRepBuilderAPI_VertexInspectorTarget* = cint
