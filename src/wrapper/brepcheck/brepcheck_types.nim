import ../ncollection/ncollection_types
import ../standard/standard_types
import ../topods/topods_types
import ../toptools/toptools_types

type
  Iterator[A] = object # FIXME  
  #Iterator[A,B,C] = object # FIXME
  Adaptor3d_Curve* = object # FIXME
  Adaptor3d_Surface* = object  # FIXME

type
  BRepCheck_Analyzer* {.importcpp: "BRepCheck_Analyzer",
                       header: "BRepCheck_Analyzer.hxx", bycopy.} = object ## ! Constructs a shape validation object defined by the shape S.
                                                                      ## ! <S> is the  shape  to control.
                                                                      ## <GeomControls>  If
                                                                      ## ! False   only
                                                                      ## topological
                                                                      ## informaions  are checked.
                                                                      ## ! The
                                                                      ## geometricals controls are
                                                                      ## ! For a Vertex :
                                                                      ## !
                                                                      ## BRepCheck_InvalidToleranceValue  NYI
                                                                      ## ! For an Edge :
                                                                      ## !
                                                                      ## BRepCheck_InvalidCurveOnClosedSurface,
                                                                      ## !
                                                                      ## BRepCheck_InvalidCurveOnSurface,
                                                                      ## !
                                                                      ## BRepCheck_InvalidSameParameterFlag,
                                                                      ## !
                                                                      ## BRepCheck_InvalidToleranceValue  NYI
                                                                      ## ! For a face :
                                                                      ## !
                                                                      ## BRepCheck_UnorientableShape,
                                                                      ## !
                                                                      ## BRepCheck_IntersectingWires,
                                                                      ## !
                                                                      ## BRepCheck_InvalidToleranceValue  NYI
                                                                      ## ! For a wire :
                                                                      ## !
                                                                      ## BRepCheck_SelfIntersectingWire

type
  BRepCheck_Status* {.size: sizeof(cint), importcpp: "BRepCheck_Status",
                     header: "BRepCheck_Status.hxx".} = enum
    BRepCheck_NoError, 
    BRepCheck_InvalidPointOnCurve,
    BRepCheck_InvalidPointOnCurveOnSurface, 
    BRepCheck_InvalidPointOnSurface,
    BRepCheck_No3DCurve, 
    BRepCheck_Multiple3DCurve, 
    BRepCheck_Invalid3DCurve,
    BRepCheck_NoCurveOnSurface, 
    BRepCheck_InvalidCurveOnSurface,
    BRepCheck_InvalidCurveOnClosedSurface, 
    BRepCheck_InvalidSameRangeFlag,
    BRepCheck_InvalidSameParameterFlag, 
    BRepCheck_InvalidDegeneratedFlag,
    BRepCheck_FreeEdge, 
    BRepCheck_InvalidMultiConnexity, 
    BRepCheck_InvalidRange,
    BRepCheck_EmptyWire, 
    BRepCheck_RedundantEdge, 
    BRepCheck_SelfIntersectingWire,
    BRepCheck_NoSurface, 
    BRepCheck_InvalidWire, 
    BRepCheck_RedundantWire,
    BRepCheck_IntersectingWires, 
    BRepCheck_InvalidImbricationOfWires,
    BRepCheck_EmptyShell, 
    BRepCheck_RedundantFace,
    BRepCheck_InvalidImbricationOfShells, 
    BRepCheck_UnorientableShape,
    BRepCheck_NotClosed, 
    BRepCheck_NotConnected, 
    BRepCheck_SubshapeNotInShape,
    BRepCheck_BadOrientation, 
    BRepCheck_BadOrientationOfSubshape,
    BRepCheck_InvalidPolygonOnTriangulation, 
    BRepCheck_InvalidToleranceValue,
    BRepCheck_EnclosedRegion, 
    BRepCheck_CheckFail

type
  BRepCheck_ListOfStatus* = NCollection_List[BRepCheck_Status]
  BRepCheck_ListIteratorOfListOfStatus* = Iterator[BRepCheck_Status]
  BRepCheck_HListOfStatus* = NCollection_Shared[BRepCheck_ListOfStatus]

type
  BRepCheck_DataMapOfShapeListOfStatus* = NCollection_DataMap[TopoDS_Shape,
      Handle[NCollection_Shared[BRepCheck_ListOfStatus]], TopTools_ShapeMapHasher]
  #BRepCheck_DataMapIteratorOfDataMapOfShapeListOfStatus* = Iterator[TopoDS_Shape,
  #    Handle[NCollection_Shared[BRepCheck_ListOfStatus]], TopTools_ShapeMapHasher]

type
  BRepCheck_Result* {.importcpp: "BRepCheck_Result",
                     header: "BRepCheck_Result.hxx", bycopy.} = object of Standard_Transient

  Handle_BRepCheck_Result* = Handle[BRepCheck_Result]

type
  Handle_BRepCheck_Edge* = Handle[BRepCheck_Edge]
  BRepCheck_Edge* {.importcpp: "BRepCheck_Edge", header: "BRepCheck_Edge.hxx", bycopy.} = object of BRepCheck_Result

type
  Handle_BRepCheck_Face* = Handle[BRepCheck_Face]
  BRepCheck_Face* {.importcpp: "BRepCheck_Face", header: "BRepCheck_Face.hxx", bycopy.} = object of BRepCheck_Result


type
  BRepCheck_IndexedDataMapOfShapeResult* = NCollection_IndexedDataMap[
      TopoDS_Shape, Handle[BRepCheck_Result], TopTools_OrientedShapeMapHasher]




type
  Handle_BRepCheck_Shell* = Handle[BRepCheck_Shell]
  BRepCheck_Shell* {.importcpp: "BRepCheck_Shell", header: "BRepCheck_Shell.hxx",
                    bycopy.} = object of BRepCheck_Result

type
  BRepCheck_Solid* {.importcpp: "BRepCheck_Solid", header: "BRepCheck_Solid.hxx",
                    bycopy.} = object of BRepCheck_Result ## ! Constructor
                                                     ## ! <theS> is the solid to check


type
  Handle_BRepCheck_Solid* = Handle[BRepCheck_Solid]

## ! The class is to check a solid.


type
  Handle_BRepCheck_Vertex* = Handle[BRepCheck_Vertex]
  BRepCheck_Vertex* {.importcpp: "BRepCheck_Vertex",
                     header: "BRepCheck_Vertex.hxx", bycopy.} = object of BRepCheck_Result


type
  Handle_BRepCheck_Wire* = Handle[BRepCheck_Wire]
  BRepCheck_Wire* {.importcpp: "BRepCheck_Wire", header: "BRepCheck_Wire.hxx", bycopy.} = object of BRepCheck_Result


type
  BRepCheck* {.importcpp: "BRepCheck", header: "BRepCheck.hxx", bycopy.} = object

