import ../tkernel/ncollection/ncollection_types
import ../tkernel/tcolstd/tcolstd_types
import ../tkernel/standard/standard_types
import ../tkmath/bvh/bvh_types
import ../tkbrep/topods/topods_types

type
  BRepExtrema_UnCompatibleShape* = object  # FIXME
  Extrema_ExtFlag* = object # FIXME
  Extrema_ExtFlag_MINMAX* = object # FIXME

type
  BRepExtrema_DistanceSS* {.importcpp: "BRepExtrema_DistanceSS",
                           header: "BRepExtrema_DistanceSS.hxx", bycopy.} = object ## !
                                                                              ## computes
                                                                              ## the
                                                                              ## distance
                                                                              ## between
                                                                              ## two
                                                                              ## Shapes (
                                                                              ## face
                                                                              ## edge
                                                                              ## vertex).
                                                                              ## <br>
                                                                              ## !
                                                                              ## computes
                                                                              ## the
                                                                              ## distance
                                                                              ## between
                                                                              ## two
                                                                              ## Shapes (
                                                                              ## face
                                                                              ## edge
                                                                              ## vertex)
                                                                              ## <br>

type
  BRepExtrema_DistShapeShape* {.importcpp: "BRepExtrema_DistShapeShape",
                               header: "BRepExtrema_DistShapeShape.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## create
                                                                                      ## empty
                                                                                      ## tool
                                                                                      ##
                                                                                      ## !
                                                                                      ## computes
                                                                                      ## the
                                                                                      ## minimum
                                                                                      ## distance
                                                                                      ## between
                                                                                      ## two
                                                                                      ## maps
                                                                                      ## of
                                                                                      ## shapes
                                                                                      ## (Face,Edge,Vertex)
                                                                                      ## <br>


type
  BRepExtrema_ElementFilter* {.importcpp: "BRepExtrema_ElementFilter",
                              header: "BRepExtrema_ElementFilter.hxx", bycopy, pure,inheritable.} = object ##
                                                                                    ## !
                                                                                    ## Result
                                                                                    ## of
                                                                                    ## filtering
                                                                                    ## function.

  BRepExtrema_ElementFilterFilterResult* {.size: sizeof(cint),
      importcpp: "BRepExtrema_ElementFilter::FilterResult",
      header: "BRepExtrema_ElementFilter.hxx".} = enum
    NoCheck, Overlap, DoCheck


type
  BRepExtrema_ExtCC* {.importcpp: "BRepExtrema_ExtCC",
                      header: "BRepExtrema_ExtCC.hxx", bycopy.} = object


type
  BRepExtrema_ExtCF* {.importcpp: "BRepExtrema_ExtCF",
                      header: "BRepExtrema_ExtCF.hxx", bycopy.} = object

type
  BRepExtrema_ExtFF* {.importcpp: "BRepExtrema_ExtFF",
                      header: "BRepExtrema_ExtFF.hxx", bycopy.} = object


type
  BRepExtrema_ExtPC* {.importcpp: "BRepExtrema_ExtPC",
                      header: "BRepExtrema_ExtPC.hxx", bycopy.} = object


type
  BRepExtrema_ExtPF* {.importcpp: "BRepExtrema_ExtPF",
                      header: "BRepExtrema_ExtPF.hxx", bycopy.} = object

# type
#   BRepExtrema_MapOfIntegerPackedMapOfInteger* = NCollection_DataMap[cint,
#       TColStd_PackedMapOfInteger]

# type
#   BRepExtrema_OverlapTool* {.importcpp: "BRepExtrema_OverlapTool",
#                             header: "BRepExtrema_OverlapTool.hxx", bycopy.} = object of BVH_PairTraverse[
#       cfloat, 3] ## ! Creates new uninitialized overlap tool.
#                ## ! Loads the given element sets into the overlap tool.
#                ## ! Performs narrow-phase of overlap test (exact intersection).
#                ## ! Set of all mesh elements (triangles) of the 1st shape.
#     ## ! Set of all mesh elements (triangles) of the 2nd shape.
#     ## ! Filter for preliminary checking pairs of mesh elements.
#     ## ! Resulted set of overlapped sub-shapes of 1st shape (only faces).
#     ## ! Resulted set of overlapped sub-shapes of 2nd shape (only faces).

type
  BRepExtrema_Poly* {.importcpp: "BRepExtrema_Poly",
                     header: "BRepExtrema_Poly.hxx", bycopy.} = object ## ! returns Standard_True if OK.

type
  BRepExtrema_SelfIntersection* {.importcpp: "BRepExtrema_SelfIntersection",
                                 header: "BRepExtrema_SelfIntersection.hxx",
                                 bycopy.} = object of BRepExtrema_ElementFilter ## !
                                                                           ## Creates
                                                                           ## uninitialized
                                                                           ## self-intersection tool.
                                                                           ## !
                                                                           ## Returns
                                                                           ## tolerance value used for
                                                                           ## self-intersection test.
                                                                           ## !
                                                                           ## Self-intersection
                                                                           ## tolerance.
    ## ! Is the input shape inited?
    ## ! List of triangulated faces of the shape.
    ## ! Set of all the face triangles of the shape.
    ## ! Overlap tool used for self-intersection test.

type
  BRepExtrema_SolutionElem* {.importcpp: "BRepExtrema_SolutionElem",
                             header: "BRepExtrema_SolutionElem.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor

type
  BRepExtrema_SeqOfSolution* = NCollection_Sequence[BRepExtrema_SolutionElem]




type
  BRepExtrema_ShapeProximity* {.importcpp: "BRepExtrema_ShapeProximity",
                               header: "BRepExtrema_ShapeProximity.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## empty
                                                                                      ## proximity
                                                                                      ## tool.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## tolerance
                                                                                      ## value
                                                                                      ## for
                                                                                      ## overlap
                                                                                      ## test
                                                                                      ## (distance
                                                                                      ## between
                                                                                      ## shapes).
                                                                                      ##
                                                                                      ## !
                                                                                      ## Maximum
                                                                                      ## overlapping
                                                                                      ## distance.
    ## ! Is the 1st shape initialized?
    ## ! Is the 2nd shape initialized?
    ## ! List of faces of the 1st shape.
    ## ! List of faces of the 2nd shape.
    ## ! Set of all the face triangles of the 1st shape.
    ## ! Set of all the face triangles of the 2nd shape.
    ## ! Overlap tool used for intersection/overlap test.


type
  BRepExtrema_SupportType* {.size: sizeof(cint),
                            importcpp: "BRepExtrema_SupportType",
                            header: "BRepExtrema_SupportType.hxx".} = enum
    BRepExtrema_IsVertex, BRepExtrema_IsOnEdge, BRepExtrema_IsInFace


type
  BRepExtrema_ShapeList* = NCollection_Vector[TopoDS_Face]

## ! Triangle set corresponding to specific face.

type
  BRepExtrema_TriangleSet* {.importcpp: "BRepExtrema_TriangleSet",
                            header: "BRepExtrema_TriangleSet.hxx", bycopy.} = object of BVH_PrimitiveSet3d ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## empty
                                                                                                    ## triangle
                                                                                                    ## set.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## methods
                                                                                                    ## implementing
                                                                                                    ## BVH
                                                                                                    ## set
                                                                                                    ## interface
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## total
                                                                                                    ## number
                                                                                                    ## of
                                                                                                    ## triangles.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Clears
                                                                                                    ## triangle
                                                                                                    ## set
                                                                                                    ## data.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Array
                                                                                                    ## of
                                                                                                    ## vertex
                                                                                                    ## indices.
    ## ! Array of vertex coordinates.


type
  Handle_BRepExtrema_UnCompatibleShape* = Handle[BRepExtrema_UnCompatibleShape]
