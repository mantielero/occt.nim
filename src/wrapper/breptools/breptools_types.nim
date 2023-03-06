import ../standard/standard_types
import ../ncollection/ncollection_types
import ../topods/topods_types
import ../toptools/toptools_types
import ../gp/gp_types
#import tcolgp/tcolgp_types

## ! Defines geometric modifications to a shape, i.e.
## ! changes to faces, edges and vertices.


type
  TopLoc_Location* = object # FIXME
  OSD_FileSystem* = object # FIXME


type
  TColgp_SequenceOfPnt2d* = object # FIXME
  Iterator*[A,B,C] = object # FIXME

type
  BRepTools_Modification* {.importcpp: "BRepTools_Modification",
                           header: "BRepTools_Modification.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## true
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## face,
                                                                                                  ## F,
                                                                                                  ## has
                                                                                                  ## been
                                                                                                  ## modified.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## the
                                                                                                  ## face
                                                                                                  ## has
                                                                                                  ## been
                                                                                                  ## modified:
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## -
                                                                                                  ## S
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## new
                                                                                                  ## geometry
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## face,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## -
                                                                                                  ## L
                                                                                                  ## is
                                                                                                  ## its
                                                                                                  ## new
                                                                                                  ## location,
                                                                                                  ## and
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## -
                                                                                                  ## Tol
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## new
                                                                                                  ## tolerance.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## flag,
                                                                                                  ## RevWires,
                                                                                                  ## is
                                                                                                  ## set
                                                                                                  ## to
                                                                                                  ## true
                                                                                                  ## when
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## modification
                                                                                                  ## reverses
                                                                                                  ## the
                                                                                                  ## normal
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## surface,
                                                                                                  ## (i.e.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## the
                                                                                                  ## wires
                                                                                                  ## have
                                                                                                  ## to
                                                                                                  ## be
                                                                                                  ## reversed).
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## flag,
                                                                                                  ## RevFace,
                                                                                                  ## is
                                                                                                  ## set
                                                                                                  ## to
                                                                                                  ## true
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## orientation
                                                                                                  ## of
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## the
                                                                                                  ## modified
                                                                                                  ## face
                                                                                                  ## changes
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## shells
                                                                                                  ## which
                                                                                                  ## contain
                                                                                                  ## it.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## the
                                                                                                  ## face
                                                                                                  ## has
                                                                                                  ## not
                                                                                                  ## been
                                                                                                  ## modified
                                                                                                  ## this
                                                                                                  ## function
                                                                                                  ## returns
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## false,
                                                                                                  ## and
                                                                                                  ## the
                                                                                                  ## values
                                                                                                  ## of
                                                                                                  ## S,
                                                                                                  ## L,
                                                                                                  ## Tol,
                                                                                                  ## RevWires
                                                                                                  ## and
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## RevFace
                                                                                                  ## are
                                                                                                  ## not
                                                                                                  ## significant.


type
  BRepTools_GTrsfModification* {.importcpp: "BRepTools_GTrsfModification",
                                header: "BRepTools_GTrsfModification.hxx", bycopy.} = object of BRepTools_Modification


type
  Handle_BRepTools_GTrsfModification* = Handle[BRepTools_GTrsfModification]

## ! Defines a modification of the  geometry by a  GTrsf
## ! from gp. All methods return True and transform the
## ! geometry.

type
  BRepTools_History* {.importcpp: "BRepTools_History",
                      header: "BRepTools_History.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## @name
                                                                                        ## Constructors
                                                                                        ## for
                                                                                        ## History
                                                                                        ## creation
                                                                                        ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## types
                                                                                        ## of
                                                                                        ## the
                                                                                        ## historical
                                                                                        ## relations.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## 'true'
                                                                                        ## if
                                                                                        ## the
                                                                                        ## type
                                                                                        ## of
                                                                                        ## the
                                                                                        ## shape
                                                                                        ## is
                                                                                        ## supported
                                                                                        ## by
                                                                                        ## the
                                                                                        ## history.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Methods
                                                                                        ## to
                                                                                        ## set
                                                                                        ## the
                                                                                        ## history.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Set
                                                                                        ## the
                                                                                        ## second
                                                                                        ## shape
                                                                                        ## as
                                                                                        ## generated
                                                                                        ## one
                                                                                        ## from
                                                                                        ## the
                                                                                        ## first
                                                                                        ## shape.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Methods
                                                                                        ## to
                                                                                        ## read
                                                                                        ## the
                                                                                        ## history.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## all
                                                                                        ## shapes
                                                                                        ## generated
                                                                                        ## from
                                                                                        ## the
                                                                                        ## shape.
                                                                                        ##
                                                                                        ## !
                                                                                        ## A
                                                                                        ## method
                                                                                        ## to
                                                                                        ## merge
                                                                                        ## a
                                                                                        ## next
                                                                                        ## history
                                                                                        ## to
                                                                                        ## this
                                                                                        ## history.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Merges
                                                                                        ## the
                                                                                        ## next
                                                                                        ## history
                                                                                        ## to
                                                                                        ## this
                                                                                        ## history.
                                                                                        ##
                                                                                        ## !
                                                                                        ## A
                                                                                        ## method
                                                                                        ## to
                                                                                        ## dump
                                                                                        ## a
                                                                                        ## history
                                                                                        ##
                                                                                        ## !
                                                                                        ## Prints
                                                                                        ## the
                                                                                        ## brief
                                                                                        ## description
                                                                                        ## of
                                                                                        ## the
                                                                                        ## history
                                                                                        ## into
                                                                                        ## a
                                                                                        ## stream
                                                                                        ##
                                                                                        ## !
                                                                                        ## Define
                                                                                        ## the
                                                                                        ## OCCT
                                                                                        ## RTTI
                                                                                        ## for
                                                                                        ## the
                                                                                        ## type.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Prepares
                                                                                        ## the
                                                                                        ## shapes
                                                                                        ## generated
                                                                                        ## from
                                                                                        ## the
                                                                                        ## first
                                                                                        ## shape
                                                                                        ## to
                                                                                        ## set
                                                                                        ## the
                                                                                        ## second
                                                                                        ## one
                                                                                        ##
                                                                                        ## !
                                                                                        ## as
                                                                                        ## generated
                                                                                        ## one
                                                                                        ## from
                                                                                        ## the
                                                                                        ## first
                                                                                        ## one
                                                                                        ## by
                                                                                        ## the
                                                                                        ## addition
                                                                                        ## or
                                                                                        ## the
                                                                                        ## replacement.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## 'true'
                                                                                        ## on
                                                                                        ## success.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Data
                                                                                        ## to
                                                                                        ## keep
                                                                                        ## the
                                                                                        ## history.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Maps
                                                                                        ## each
                                                                                        ## input
                                                                                        ## shape
                                                                                        ## to
                                                                                        ## all
                                                                                        ## shapes
                                                                                        ## modified
                                                                                        ## from
                                                                                        ## it.
                                                                                        ##
                                                                                        ## !
                                                                                        ## If
                                                                                        ## an
                                                                                        ## input
                                                                                        ## shape
                                                                                        ## is
                                                                                        ## not
                                                                                        ## bound
                                                                                        ## to
                                                                                        ## the
                                                                                        ## map
                                                                                        ## then
                                                                                        ##
                                                                                        ## !
                                                                                        ## there
                                                                                        ## is
                                                                                        ## no
                                                                                        ## shapes
                                                                                        ## modified
                                                                                        ## from
                                                                                        ## the
                                                                                        ## shape.
                                                                                        ##
                                                                                        ## !
                                                                                        ## No
                                                                                        ## any
                                                                                        ## shape
                                                                                        ## should
                                                                                        ## be
                                                                                        ## mapped
                                                                                        ## to
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## list.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Auxiliary
                                                                                        ## members
                                                                                        ## to
                                                                                        ## read
                                                                                        ## the
                                                                                        ## history.
                                                                                        ##
                                                                                        ## !
                                                                                        ## An
                                                                                        ## auxiliary
                                                                                        ## empty
                                                                                        ## list.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Auxiliary
                                                                                        ## messages.


type
  Handle_BRepTools_History* = Handle[BRepTools_History]

## ! The history keeps the following relations between the input shapes
## ! (S1, ..., Sm) and output shapes (T1, ..., Tn):
## ! 1) an output shape Tj is generated from an input shape Si: Tj <= G(Si);
## ! 2) a output shape Tj is modified from an input shape Si: Tj <= M(Si);
## ! 3) an input shape (Si) is removed: R(Si) == 1.
## !
## ! The relations are kept only for shapes of types vertex, edge, face, and
## ! solid.
## !
## ! The last relation means that:
## ! 1) shape Si is not an output shape and
## ! 2) no any shape is modified (produced) from shape Si:
## ! R(Si) == 1 ==> Si != Tj, M(Si) == 0.
## !
## ! It means that the input shape cannot be removed and modified
## ! simultaneously. However, the shapes may be generated from the
## ! removed shape. For instance, in Fillet operation the edges
## ! generate faces and then are removed.
## !
## ! No any shape could be generated and modified from the same shape
## ! simultaneously: sets G(Si) and M(Si) are not intersected
## ! (G(Si) ^ M(Si) == 0).
## !
## ! Each output shape should be:
## ! 1) an input shape or
## ! 2) generated or modified from an input shape (even generated from the
## !   implicit null shape if necessary):
## !   Tj == Si V (exists Si that Tj <= G(Si) U M(Si)).
## !
## ! Recommendations to choose between relations 'generated' and 'modified':
## ! 1) a shape is generated from input shapes if it dimension is greater or
## !   smaller than the dimensions of the input shapes;
## ! 2) a shape is generated from input shapes if these shapes are also output
## !   shapes;
## ! 3) a shape is generated from input shapes of the same dimension if it is
## !   produced by joining shapes generated from these shapes;
## ! 4) a shape is modified from an input shape if it replaces the input shape by
## !   changes of the location, the tolerance, the bounds of the parametric
## !   space (the faces for a solid), the parametrization and/or by applying of
## !   an approximation;
## ! 5) a shape is modified from input shapes of the same dimension if it is
## !   produced by joining shapes modified from these shapes.
## !
## ! Two sequential histories:
## ! - one history (H12) of shapes S1, ..., Sm to shapes T1, ..., Tn and
## ! - another history (H23) of shapes T1, ..., Tn to shapes Q1, ..., Ql
## ! could be merged to the single history (H13) of shapes S1, ..., Sm to shapes
## ! Q1, ..., Ql.
## !
## ! During the merge:
## ! 1) if shape Tj is generated from shape Si then each shape generated or
## !   modified from shape Tj is considered as a shape generated from shape Si
## !   among shapes Q1, ..., Ql:
## !   Tj <= G12(Si), Qk <= G23(Tj) U M23(Tj) ==> Qk <= G13(Si).
## ! 2) if shape Tj is modified from shape Si, shape Qk is generated from shape
## !   Tj then shape Qk is considered as a shape generated from shape Si among
## !   shapes Q1, ..., Ql:
## !   Tj <= M12(Si), Qk <= G23(Tj) ==> Qk <= G13(Si);
## ! 3) if shape Tj is modified from shape Si, shape Qk is modified from shape
## !   Tj then shape Qk is considered as a shape modified from shape Si among
## !   shapes Q1, ..., Ql:
## !   Tj <= M12(Si), Qk <= M23(Tj) ==> Qk <= M13(Si);

## ! Maps each input shape to all shapes generated from it.
## ! If an input shape is not bound to the map then
## ! there is no shapes generated from the shape.
## ! No any shape should be mapped to an empty list.
## !< The removed shapes.

type
  BRepTools_HistoryTRelationType* {.size: sizeof(cint), importcpp: "BRepTools_History::TRelationType",
                                   header: "BRepTools_History.hxx".} = enum
    TRelationType_Removed, TRelationType_Generated, TRelationType_Modified


type
  BRepTools_MapOfVertexPnt2d* = NCollection_DataMap[TopoDS_Shape,
      TColgp_SequenceOfPnt2d, TopTools_ShapeMapHasher]
  BRepTools_DataMapIteratorOfMapOfVertexPnt2d* = Iterator[TopoDS_Shape,
      TColgp_SequenceOfPnt2d, TopTools_ShapeMapHasher]

type
  Handle_BRepTools_Modification* = Handle[BRepTools_Modification]


type
  BRepTools_Modifier* {.importcpp: "BRepTools_Modifier",
                       header: "BRepTools_Modifier.hxx", bycopy.} = object ## ! Creates an empty Modifier.

type
  BRepTools_NurbsConvertModification* {.importcpp: "BRepTools_NurbsConvertModification", header: "BRepTools_NurbsConvertModification.hxx",
                                       bycopy.} = object of BRepTools_Modification



type
  Handle_BRepTools_NurbsConvertModification* = Handle[
      BRepTools_NurbsConvertModification]

## ! Defines a modification of the  geometry by a  Trsf
## ! from gp. All methods return True and transform the
## ! geometry.


type
  BRepTools_PurgeLocations* {.importcpp: "BRepTools_PurgeLocations",
                             header: "BRepTools_PurgeLocations.hxx", bycopy.} = object


type
  BRepTools_Quilt* {.importcpp: "BRepTools_Quilt", header: "BRepTools_Quilt.hxx",
                    bycopy.} = object


type
  BRepTools_ReShape* {.importcpp: "BRepTools_ReShape",
                      header: "BRepTools_ReShape.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## Reshape
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## kinds
                                                                                        ## of
                                                                                        ## the
                                                                                        ## replacements.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## 'true'
                                                                                        ## if
                                                                                        ## the
                                                                                        ## kind
                                                                                        ## of
                                                                                        ## a
                                                                                        ## replacement
                                                                                        ## is
                                                                                        ## an
                                                                                        ## ordinary
                                                                                        ## merging.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Maps
                                                                                        ## each
                                                                                        ## shape
                                                                                        ## to
                                                                                        ## its
                                                                                        ## replacement.
                                                                                        ##
                                                                                        ## !
                                                                                        ## If
                                                                                        ## a
                                                                                        ## shape
                                                                                        ## is
                                                                                        ## not
                                                                                        ## bound
                                                                                        ## to
                                                                                        ## the
                                                                                        ## map
                                                                                        ## then
                                                                                        ## the
                                                                                        ## shape
                                                                                        ## is
                                                                                        ## replaced
                                                                                        ## by
                                                                                        ## itself.


type
  Handle_BRepTools_ReShape* = Handle[BRepTools_ReShape]

## ! Rebuilds a Shape by making pre-defined substitutions on some
## ! of its components
## !
## ! In a first phase, it records requests to replace or remove
## ! some individual shapes
## ! For each shape, the last given request is recorded
## ! Requests may be applied "Oriented" (i.e. only to an item with
## ! the SAME orientation) or not (the orientation of replacing
## ! shape is respectful of that of the original one)
## !
## ! Then, these requests may be applied to any shape which may
## ! contain one or more of these individual shapes
## !
## ! Supports the 'BRepTools_History' history by method 'History'.


type
  BRepTools_ShapeSet* {.importcpp: "BRepTools_ShapeSet",
                       header: "BRepTools_ShapeSet.hxx", bycopy.} = object of TopTools_ShapeSet ##
                                                                                         ## !
                                                                                         ## Builds
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## ShapeSet.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theWithTriangles
                                                                                         ## flag
                                                                                         ## to
                                                                                         ## write
                                                                                         ## triangulation
                                                                                         ## data
    ## !< Contains a boolean flag with information
    ## !  to save normals for triangulation


type
  BRepTools_Substitution* {.importcpp: "BRepTools_Substitution",
                           header: "BRepTools_Substitution.hxx", bycopy.} = object


## ! Describes a modification that uses a gp_Trsf to
## ! change the geometry of a shape. All functions return
## ! true and transform the geometry of the shape.

type
  BRepTools_TrsfModification* {.importcpp: "BRepTools_TrsfModification",
                               header: "BRepTools_TrsfModification.hxx", bycopy.} = object of BRepTools_Modification


type
  Handle_BRepTools_TrsfModification* = Handle[BRepTools_TrsfModification]


type
  BRepTools_WireExplorer* {.importcpp: "BRepTools_WireExplorer",
                           header: "BRepTools_WireExplorer.hxx", bycopy.} = object ## !
                                                                              ## Constructs an
                                                                              ## empty
                                                                              ## explorer
                                                                              ## (which
                                                                              ## can be
                                                                              ## initialized
                                                                              ## using
                                                                              ## Init)

