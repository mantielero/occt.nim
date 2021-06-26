{.push header: "BRep_Tool.hxx".}


# Constructors and methods
proc ` new`*(this: var BRep_Tool, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRep_Tool, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRep_Tool, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRep_Tool, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRep_Tool, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRep_Tool, pointer, pointer)  {.importcpp: "#  delete #".}

proc isClosed*(this: var BRep_Tool, S: TopoDS_Shape): Standard_Boolean  {.importcpp: "IsClosed".}
  ## If S is Shell, returns True if it has no free boundaries (edges). If S
  ## is Wire, returns True if it has no free ends (vertices). (Internal and
  ## External sub-shepes are ignored in these checks) If S is Edge, returns
  ## True if its vertices are the same. For other shape types returns
  ## S.Closed().

proc surface*(this: var BRep_Tool, F: TopoDS_Face, L: var TopLoc_Location): Handle[Geom_Surface]  {.importcpp: "Surface".}
  ## Returns the geometric surface of the face. Returns in <L> the location
  ## for the surface.

proc surface*(this: var BRep_Tool, F: TopoDS_Face): Handle[Geom_Surface]  {.importcpp: "Surface".}
  ## Returns the geometric surface of the face. It can be a copy if there
  ## is a Location.

proc triangulation*(this: var BRep_Tool, F: TopoDS_Face, L: var TopLoc_Location): Handle[Poly_Triangulation]  {.importcpp: "Triangulation".}
  ## Returns the Triangulation of the face. It is a null handle if there is
  ## no triangulation.

proc tolerance*(this: var BRep_Tool, F: TopoDS_Face): Standard_Real  {.importcpp: "Tolerance".}
  ## Returns the tolerance of the face.

proc naturalRestriction*(this: var BRep_Tool, F: TopoDS_Face): Standard_Boolean  {.importcpp: "NaturalRestriction".}
  ## Returns the NaturalRestriction flag of the face.

proc isGeometric*(this: var BRep_Tool, E: TopoDS_Edge): Standard_Boolean  {.importcpp: "IsGeometric".}
  ## Returns True if <E> is a 3d curve or a curve on surface.

proc curve*(this: var BRep_Tool, E: TopoDS_Edge, L: var TopLoc_Location, First: var Standard_Real, Last: var Standard_Real): Handle[Geom_Curve]  {.importcpp: "Curve".}
  ## Returns the 3D curve of the edge. May be a Null handle. Returns in <L>
  ## the location for the curve. In <First> and <Last> the parameter range.

proc curve*(this: var BRep_Tool, E: TopoDS_Edge, First: var Standard_Real, Last: var Standard_Real): Handle[Geom_Curve]  {.importcpp: "Curve".}
  ## Returns the 3D curve of the edge. May be a Null handle. In <First> and
  ## <Last> the parameter range. It can be a copy if there is a Location.

proc polygon3D*(this: var BRep_Tool, E: TopoDS_Edge, L: var TopLoc_Location): Handle[Poly_Polygon3D]  {.importcpp: "Polygon3D".}
  ## Returns the 3D polygon of the edge. May be a Null handle. Returns in
  ## <L> the location for the polygon.

proc curveOnSurface*(this: var BRep_Tool, E: TopoDS_Edge, F: TopoDS_Face, First: var Standard_Real, Last: var Standard_Real, theIsStored: Standard_Boolean *): Handle[Geom2d_Curve]  {.importcpp: "CurveOnSurface".}
  ## Returns the curve associated to the edge in the parametric space of
  ## the face. Returns a NULL handle if this curve does not exist. Returns
  ## in <First> and <Last> the parameter range. If the surface is a plane
  ## the curve can be not stored but created a new each time. The flag
  ## pointed by <theIsStored> serves to indicate storage status. It is
  ## valued if the pointer is non-null.

proc curveOnSurface*(this: var BRep_Tool, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location, First: var Standard_Real, Last: var Standard_Real, theIsStored: Standard_Boolean *): Handle[Geom2d_Curve]  {.importcpp: "CurveOnSurface".}
  ## Returns the curve associated to the edge in the parametric space of
  ## the surface. Returns a NULL handle if this curve does not exist.
  ## Returns in <First> and <Last> the parameter range. If the surface is a
  ## plane the curve can be not stored but created a new each time. The
  ## flag pointed by <theIsStored> serves to indicate storage status. It is
  ## valued if the pointer is non-null.

proc curveOnPlane*(this: var BRep_Tool, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location, First: var Standard_Real, Last: var Standard_Real): Handle[Geom2d_Curve]  {.importcpp: "CurveOnPlane".}
  ## For the planar surface builds the 2d curve for the edge by projection
  ## of the edge on plane. Returns a NULL handle if the surface is not
  ## planar or the projection failed.

proc curveOnSurface*(this: var BRep_Tool, E: TopoDS_Edge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: var TopLoc_Location, First: var Standard_Real, Last: var Standard_Real)  {.importcpp: "CurveOnSurface".}
  ## Returns in <C>, <S>, <L> a 2d curve, a surface and a location for the
  ## edge <E>. <C> and <S> are null if the edge has no curve on surface.
  ## Returns in <First> and <Last> the parameter range.

proc curveOnSurface*(this: var BRep_Tool, E: TopoDS_Edge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: var TopLoc_Location, First: var Standard_Real, Last: var Standard_Real, Index: Standard_Integer)  {.importcpp: "CurveOnSurface".}
  ## Returns in <C>, <S>, <L> the 2d curve, the surface and the location
  ## for the edge <E> of rank <Index>. <C> and <S> are null if the index is
  ## out of range. Returns in <First> and <Last> the parameter range.

proc polygonOnSurface*(this: var BRep_Tool, E: TopoDS_Edge, F: TopoDS_Face): Handle[Poly_Polygon2D]  {.importcpp: "PolygonOnSurface".}
  ## Returns the polygon associated to the edge in the parametric space of
  ## the face. Returns a NULL handle if this polygon does not exist.

proc polygonOnSurface*(this: var BRep_Tool, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location): Handle[Poly_Polygon2D]  {.importcpp: "PolygonOnSurface".}
  ## Returns the polygon associated to the edge in the parametric space of
  ## the surface. Returns a NULL handle if this polygon does not exist.

proc polygonOnSurface*(this: var BRep_Tool, E: TopoDS_Edge, C: Handle[Poly_Polygon2D], S: Handle[Geom_Surface], L: var TopLoc_Location)  {.importcpp: "PolygonOnSurface".}
  ## Returns in <C>, <S>, <L> a 2d curve, a surface and a location for the
  ## edge <E>. <C> and <S> are null if the edge has no polygon on surface.

proc polygonOnSurface*(this: var BRep_Tool, E: TopoDS_Edge, C: Handle[Poly_Polygon2D], S: Handle[Geom_Surface], L: var TopLoc_Location, Index: Standard_Integer)  {.importcpp: "PolygonOnSurface".}
  ## Returns in <C>, <S>, <L> the 2d curve, the surface and the location
  ## for the edge <E> of rank <Index>. <C> and <S> are null if the index is
  ## out of range.

proc polygonOnTriangulation*(this: var BRep_Tool, E: TopoDS_Edge, T: Handle[Poly_Triangulation], L: TopLoc_Location): Handle[Poly_PolygonOnTriangulation]  {.importcpp: "PolygonOnTriangulation".}
  ## Returns the polygon associated to the edge in the parametric space of
  ## the face. Returns a NULL handle if this polygon does not exist.

proc polygonOnTriangulation*(this: var BRep_Tool, E: TopoDS_Edge, P: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation], L: var TopLoc_Location)  {.importcpp: "PolygonOnTriangulation".}
  ## Returns in <P>, <T>, <L> a polygon on triangulation, a triangulation
  ## and a location for the edge <E>. <P> and <T> are null if the edge has
  ## no polygon on triangulation.

proc polygonOnTriangulation*(this: var BRep_Tool, E: TopoDS_Edge, P: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation], L: var TopLoc_Location, Index: Standard_Integer)  {.importcpp: "PolygonOnTriangulation".}
  ## Returns in <P>, <T>, <L> a polygon on triangulation, a triangulation
  ## and a location for the edge <E> for the range index. <C> and <S> are
  ## null if the edge has no polygon on triangulation.

proc isClosed*(this: var BRep_Tool, E: TopoDS_Edge, F: TopoDS_Face): Standard_Boolean  {.importcpp: "IsClosed".}
  ## Returns True if <E> has two PCurves in the parametric space of <F>.
  ## i.e. <F> is on a closed surface and <E> is on the closing curve.

proc isClosed*(this: var BRep_Tool, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsClosed".}
  ## Returns True if <E> has two PCurves in the parametric space of <S>.
  ## i.e. <S> is a closed surface and <E> is on the closing curve.

proc isClosed*(this: var BRep_Tool, E: TopoDS_Edge, T: Handle[Poly_Triangulation], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsClosed".}
  ## Returns True if <E> has two arrays of indices in the triangulation
  ## <T>.

proc tolerance*(this: var BRep_Tool, E: TopoDS_Edge): Standard_Real  {.importcpp: "Tolerance".}
  ## Returns the tolerance for <E>.

proc sameParameter*(this: var BRep_Tool, E: TopoDS_Edge): Standard_Boolean  {.importcpp: "SameParameter".}
  ## Returns the SameParameter flag for the edge.

proc sameRange*(this: var BRep_Tool, E: TopoDS_Edge): Standard_Boolean  {.importcpp: "SameRange".}
  ## Returns the SameRange flag for the edge.

proc degenerated*(this: var BRep_Tool, E: TopoDS_Edge): Standard_Boolean  {.importcpp: "Degenerated".}
  ## Returns True if the edge is degenerated.

proc range*(this: var BRep_Tool, E: TopoDS_Edge, First: var Standard_Real, Last: var Standard_Real)  {.importcpp: "Range".}
  ## Gets the range of the 3d curve.

proc range*(this: var BRep_Tool, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location, First: var Standard_Real, Last: var Standard_Real)  {.importcpp: "Range".}
  ## Gets the range of the edge on the pcurve on the surface.

proc range*(this: var BRep_Tool, E: TopoDS_Edge, F: TopoDS_Face, First: var Standard_Real, Last: var Standard_Real)  {.importcpp: "Range".}
  ## Gets the range of the edge on the pcurve on the face.

proc uVPoints*(this: var BRep_Tool, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location, PFirst: var gp_Pnt2d, PLast: var gp_Pnt2d)  {.importcpp: "UVPoints".}
  ## Gets the UV locations of the extremities of the edge.

proc uVPoints*(this: var BRep_Tool, E: TopoDS_Edge, F: TopoDS_Face, PFirst: var gp_Pnt2d, PLast: var gp_Pnt2d)  {.importcpp: "UVPoints".}
  ## Gets the UV locations of the extremities of the edge.

proc setUVPoints*(this: var BRep_Tool, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location, PFirst: gp_Pnt2d, PLast: gp_Pnt2d)  {.importcpp: "SetUVPoints".}
  ## Sets the UV locations of the extremities of the edge.

proc setUVPoints*(this: var BRep_Tool, E: TopoDS_Edge, F: TopoDS_Face, PFirst: gp_Pnt2d, PLast: gp_Pnt2d)  {.importcpp: "SetUVPoints".}
  ## Sets the UV locations of the extremities of the edge.

proc hasContinuity*(this: var BRep_Tool, E: TopoDS_Edge, F1: TopoDS_Face, F2: TopoDS_Face): Standard_Boolean  {.importcpp: "HasContinuity".}
  ## Returns True if the edge is on the surfaces of the two faces.

proc continuity*(this: var BRep_Tool, E: TopoDS_Edge, F1: TopoDS_Face, F2: TopoDS_Face): GeomAbs_Shape  {.importcpp: "Continuity".}
  ## Returns the continuity.

proc hasContinuity*(this: var BRep_Tool, E: TopoDS_Edge, S1: Handle[Geom_Surface], S2: Handle[Geom_Surface], L1: TopLoc_Location, L2: TopLoc_Location): Standard_Boolean  {.importcpp: "HasContinuity".}
  ## Returns True if the edge is on the surfaces.

proc continuity*(this: var BRep_Tool, E: TopoDS_Edge, S1: Handle[Geom_Surface], S2: Handle[Geom_Surface], L1: TopLoc_Location, L2: TopLoc_Location): GeomAbs_Shape  {.importcpp: "Continuity".}
  ## Returns the continuity.

proc hasContinuity*(this: var BRep_Tool, E: TopoDS_Edge): Standard_Boolean  {.importcpp: "HasContinuity".}
  ## Returns True if the edge has regularity on some two surfaces

proc maxContinuity*(this: var BRep_Tool, theEdge: TopoDS_Edge): GeomAbs_Shape  {.importcpp: "MaxContinuity".}
  ## Returns the max continuity of edge between some surfaces or GeomAbs_C0
  ## if there no such surfaces.

proc pnt*(this: var BRep_Tool, V: TopoDS_Vertex): gp_Pnt  {.importcpp: "Pnt".}
  ## Returns the 3d point.

proc tolerance*(this: var BRep_Tool, V: TopoDS_Vertex): Standard_Real  {.importcpp: "Tolerance".}
  ## Returns the tolerance.

proc parameter*(this: var BRep_Tool, V: TopoDS_Vertex, E: TopoDS_Edge): Standard_Real  {.importcpp: "Parameter".}
  ## Returns the parameter of <V> on <E>.

proc parameter*(this: var BRep_Tool, V: TopoDS_Vertex, E: TopoDS_Edge, F: TopoDS_Face): Standard_Real  {.importcpp: "Parameter".}
  ## Returns the parameters of the vertex on the pcurve of the edge on the
  ## face.

proc parameter*(this: var BRep_Tool, V: TopoDS_Vertex, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Real  {.importcpp: "Parameter".}
  ## Returns the parameters of the vertex on the pcurve of the edge on the
  ## surface.

proc parameters*(this: var BRep_Tool, V: TopoDS_Vertex, F: TopoDS_Face): gp_Pnt2d  {.importcpp: "Parameters".}
  ## Returns the parameters of the vertex on the face.

proc maxTolerance*(this: var BRep_Tool, theShape: TopoDS_Shape, theSubShape: TopAbs_ShapeEnum): Standard_Real  {.importcpp: "MaxTolerance".}

{.pop.} # header: "BRep_Tool.hxx
