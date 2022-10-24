type
  BRepBuilder* {.importcpp: "BRep_Builder", header: "BRep_Builder.hxx", bycopy.} = object of TopoDS_Builder ##
                                                                                                  ## !
                                                                                                  ## Makes
                                                                                                  ## an
                                                                                                  ## undefined
                                                                                                  ## Face.
type
  HandleBRepCurve3D* = Handle[BRepCurve3D]
## ! Representation of a curve by a 3D curve.
type
  BRepCurve3D* {.importcpp: "BRep_Curve3D", header: "BRep_Curve3D.hxx", bycopy.} = object of BRepGCurve
type
  HandleBRepCurveOn2Surfaces* = Handle[BRepCurveOn2Surfaces]
## ! Defines a continuity between two surfaces.
type
  BRepCurveOn2Surfaces* {.importcpp: "BRep_CurveOn2Surfaces",
                         header: "BRep_CurveOn2Surfaces.hxx", bycopy.} = object of BRepCurveRepresentation
type
  HandleBRepCurveOnClosedSurface* = Handle[BRepCurveOnClosedSurface]
## ! Representation  of a    curve by two  pcurves   on
## ! a closed surface.
type
  BRepCurveOnClosedSurface* {.importcpp: "BRep_CurveOnClosedSurface",
                             header: "BRep_CurveOnClosedSurface.hxx", bycopy.} = object of BRepCurveOnSurface
type
  HandleBRepCurveOnSurface* = Handle[BRepCurveOnSurface]
## ! Representation  of a  curve   by a   curve  in the
## ! parametric space of a surface.
type
  BRepCurveOnSurface* {.importcpp: "BRep_CurveOnSurface",
                       header: "BRep_CurveOnSurface.hxx", bycopy.} = object of BRepGCurve
type
  HandleBRepCurveRepresentation* = Handle[BRepCurveRepresentation]
## ! Root class for the curve representations. Contains
## ! a location.
type
  BRepCurveRepresentation* {.importcpp: "BRep_CurveRepresentation",
                            header: "BRep_CurveRepresentation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## A
                                                                                                    ## 3D
                                                                                                    ## curve
                                                                                                    ## representation.
type
  HandleBRepGCurve* = Handle[BRepGCurve]
## ! Root   class    for    the    geometric     curves
## ! representation. Contains a range.
## ! Contains a first and a last parameter.
type
  BRepGCurve* {.importcpp: "BRep_GCurve", header: "BRep_GCurve.hxx", bycopy.} = object of BRepCurveRepresentation
type
  HandleBRepPointOnCurve* = Handle[BRepPointOnCurve]
## ! Representation by a parameter on a 3D curve.
type
  BRepPointOnCurve* {.importcpp: "BRep_PointOnCurve",
                     header: "BRep_PointOnCurve.hxx", bycopy.} = object of BRepPointRepresentation
type
  HandleBRepPointOnCurveOnSurface* = Handle[BRepPointOnCurveOnSurface]
## ! Representation by   a parameter on  a curve   on a
## ! surface.
type
  BRepPointOnCurveOnSurface* {.importcpp: "BRep_PointOnCurveOnSurface",
                              header: "BRep_PointOnCurveOnSurface.hxx", bycopy.} = object of BRepPointsOnSurface
type
  HandleBRepPointOnSurface* = Handle[BRepPointOnSurface]
## ! Representation by two parameters on a surface.
type
  BRepPointOnSurface* {.importcpp: "BRep_PointOnSurface",
                       header: "BRep_PointOnSurface.hxx", bycopy.} = object of BRepPointsOnSurface
type
  HandleBRepPointRepresentation* = Handle[BRepPointRepresentation]
## ! Root  class     for   the points  representations.
## ! Contains a location and a parameter.
type
  BRepPointRepresentation* {.importcpp: "BRep_PointRepresentation",
                            header: "BRep_PointRepresentation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## A
                                                                                                    ## point
                                                                                                    ## on
                                                                                                    ## a
                                                                                                    ## 3d
                                                                                                    ## curve.
type
  HandleBRepPointsOnSurface* = Handle[BRepPointsOnSurface]
## ! Root for points on surface.
type
  BRepPointsOnSurface* {.importcpp: "BRep_PointsOnSurface",
                        header: "BRep_PointsOnSurface.hxx", bycopy.} = object of BRepPointRepresentation
type
  HandleBRepPolygon3D* = Handle[BRepPolygon3D]
## ! Representation by a 3D polygon.
type
  BRepPolygon3D* {.importcpp: "BRep_Polygon3D", header: "BRep_Polygon3D.hxx", bycopy.} = object of BRepCurveRepresentation
type
  HandleBRepPolygonOnClosedSurface* = Handle[BRepPolygonOnClosedSurface]
## ! Representation by two 2d polygons in the parametric
## ! space of a surface.
type
  BRepPolygonOnClosedSurface* {.importcpp: "BRep_PolygonOnClosedSurface",
                               header: "BRep_PolygonOnClosedSurface.hxx", bycopy.} = object of BRepPolygonOnSurface
type
  HandleBRepPolygonOnClosedTriangulation* = Handle[
      BRepPolygonOnClosedTriangulation]
## ! A representation by two arrays of nodes on a
## ! triangulation.
type
  BRepPolygonOnClosedTriangulation* {.importcpp: "BRep_PolygonOnClosedTriangulation", header: "BRep_PolygonOnClosedTriangulation.hxx",
                                     bycopy.} = object of BRepPolygonOnTriangulation
type
  HandleBRepPolygonOnSurface* = Handle[BRepPolygonOnSurface]
## ! Representation of a 2D polygon in the parametric
## ! space of a surface.
type
  BRepPolygonOnSurface* {.importcpp: "BRep_PolygonOnSurface",
                         header: "BRep_PolygonOnSurface.hxx", bycopy.} = object of BRepCurveRepresentation
type
  HandleBRepPolygonOnTriangulation* = Handle[BRepPolygonOnTriangulation]
## ! A representation by an array of nodes on a
## ! triangulation.
type
  BRepPolygonOnTriangulation* {.importcpp: "BRep_PolygonOnTriangulation",
                               header: "BRep_PolygonOnTriangulation.hxx", bycopy.} = object of BRepCurveRepresentation
type
  HandleBRepTEdge* = Handle[BRepTEdge]
## ! The TEdge from BRep is  inherited from  the  TEdge
## ! from TopoDS. It contains the geometric data.
## !
## ! The TEdge contains :
## !
## ! * A tolerance.
## !
## ! * A same parameter flag.
## !
## ! * A same range flag.
## !
## ! * A Degenerated flag.
## !
## ! *  A  list   of curve representation.
type
  BRepTEdge* {.importcpp: "BRep_TEdge", header: "BRep_TEdge.hxx", bycopy.} = object of TopoDS_TEdge ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## TEdge.
type
  HandleBRepTFace* = Handle[BRepTFace]
## ! The Tface from BRep  is  based  on the TFace  from
## ! TopoDS. The TFace contains :
## !
## ! * A suface, a tolerance and a Location.
## !
## ! * A NaturalRestriction flag,   when this  flag  is
## ! True the  boundary of the  face is known to be the
## ! parametric space (Umin, UMax, VMin, VMax).
## !
## ! *  An    optional Triangulation.   If  there  is a
## ! triangulation the surface can be absent.
## !
## ! The  Location is  used   for the Surface.
## !
## ! The triangulation  is in the same reference system
## ! than the TFace.     A point on mySurface must   be
## ! transformed with myLocation,  but  not a point  on
## ! the triangulation.
## !
## ! The Surface may  be shared by different TFaces but
## ! not the  Triangulation, because the  Triangulation
## ! may be modified by  the edges.
type
  BRepTFace* {.importcpp: "BRep_TFace", header: "BRep_TFace.hxx", bycopy.} = object of TopoDS_TFace ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## TFace.
type
  BRepTool* {.importcpp: "BRep_Tool", header: "BRep_Tool.hxx", bycopy.} = object ## ! If S is Shell, returns True if it has no free
                                                                         ## boundaries
                                                                         ## (edges).
                                                                         ## ! If S is Wire, returns True if it has no free ends
                                                                         ## (vertices).
                                                                         ## !
                                                                         ## (Internal and
                                                                         ## External
                                                                         ## sub-shepes are ignored in these checks)
                                                                         ## ! If S is Edge, returns True if its
                                                                         ## vertices are the same.
                                                                         ## ! For other shape types returns
                                                                         ## S.Closed().
type
  HandleBRepTVertex* = Handle[BRepTVertex]
## ! The TVertex from  BRep inherits  from  the TVertex
## ! from TopoDS. It contains the geometric data.
## !
## ! The  TVertex contains a 3d point, location and a tolerance.
type
  BRepTVertex* {.importcpp: "BRep_TVertex", header: "BRep_TVertex.hxx", bycopy.} = object of TopoDS_TVertex
