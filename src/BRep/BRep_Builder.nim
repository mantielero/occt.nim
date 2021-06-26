{.push header: "BRep_Builder.hxx".}


# Constructors and methods
proc ` new`*(this: var BRep_Builder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRep_Builder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRep_Builder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRep_Builder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRep_Builder, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRep_Builder, pointer, pointer)  {.importcpp: "#  delete #".}

proc makeFace*(this: BRep_Builder, F: var TopoDS_Face)  {.importcpp: "MakeFace".}
  ## Makes an undefined Face.

proc makeFace*(this: BRep_Builder, F: var TopoDS_Face, S: Handle[Geom_Surface], Tol: Standard_Real)  {.importcpp: "MakeFace".}
  ## Makes a Face with a surface.

proc makeFace*(this: BRep_Builder, F: var TopoDS_Face, S: Handle[Geom_Surface], L: TopLoc_Location, Tol: Standard_Real)  {.importcpp: "MakeFace".}
  ## Makes a Face with a surface and a location.

proc makeFace*(this: BRep_Builder, F: var TopoDS_Face, T: Handle[Poly_Triangulation])  {.importcpp: "MakeFace".}
  ## Makes a Face with a triangulation. The triangulation is in the same
  ## reference system than the TFace.

proc updateFace*(this: BRep_Builder, F: TopoDS_Face, S: Handle[Geom_Surface], L: TopLoc_Location, Tol: Standard_Real)  {.importcpp: "UpdateFace".}
  ## Updates the face F using the tolerance value Tol, surface S and
  ## location Location.

proc updateFace*(this: BRep_Builder, F: TopoDS_Face, T: Handle[Poly_Triangulation])  {.importcpp: "UpdateFace".}
  ## Changes a face triangulation.

proc updateFace*(this: BRep_Builder, F: TopoDS_Face, Tol: Standard_Real)  {.importcpp: "UpdateFace".}
  ## Updates the face Tolerance.

proc naturalRestriction*(this: BRep_Builder, F: TopoDS_Face, N: Standard_Boolean)  {.importcpp: "NaturalRestriction".}
  ## Sets the NaturalRestriction flag of the face.

proc makeEdge*(this: BRep_Builder, E: var TopoDS_Edge)  {.importcpp: "MakeEdge".}
  ## Makes an undefined Edge (no geometry).

proc makeEdge*(this: BRep_Builder, E: var TopoDS_Edge, C: Handle[Geom_Curve], Tol: Standard_Real)  {.importcpp: "MakeEdge".}
  ## Makes an Edge with a curve.

proc makeEdge*(this: BRep_Builder, E: var TopoDS_Edge, C: Handle[Geom_Curve], L: TopLoc_Location, Tol: Standard_Real)  {.importcpp: "MakeEdge".}
  ## Makes an Edge with a curve and a location.

proc makeEdge*(this: BRep_Builder, E: var TopoDS_Edge, P: Handle[Poly_Polygon3D])  {.importcpp: "MakeEdge".}
  ## Makes an Edge with a polygon 3d.

proc makeEdge*(this: BRep_Builder, E: var TopoDS_Edge, N: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation])  {.importcpp: "MakeEdge".}
  ## makes an Edge polygon on Triangulation.

proc makeEdge*(this: BRep_Builder, E: var TopoDS_Edge, N: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation], L: TopLoc_Location)  {.importcpp: "MakeEdge".}
  ## makes an Edge polygon on Triangulation.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, C: Handle[Geom_Curve], Tol: Standard_Real)  {.importcpp: "UpdateEdge".}
  ## Sets a 3D curve for the edge. If <C> is a null handle, remove any
  ## existing 3d curve.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, C: Handle[Geom_Curve], L: TopLoc_Location, Tol: Standard_Real)  {.importcpp: "UpdateEdge".}
  ## Sets a 3D curve for the edge. If <C> is a null handle, remove any
  ## existing 3d curve.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, C: Handle[Geom2d_Curve], F: TopoDS_Face, Tol: Standard_Real)  {.importcpp: "UpdateEdge".}
  ## Sets a pcurve for the edge on the face. If <C> is a null handle,
  ## remove any existing pcurve.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, C1: Handle[Geom2d_Curve], C2: Handle[Geom2d_Curve], F: TopoDS_Face, Tol: Standard_Real)  {.importcpp: "UpdateEdge".}
  ## Sets pcurves for the edge on the closed face. If <C1> or <C2> is a
  ## null handle, remove any existing pcurve.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location, Tol: Standard_Real)  {.importcpp: "UpdateEdge".}
  ## Sets a pcurve for the edge on the face. If <C> is a null handle,
  ## remove any existing pcurve.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, C: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location, Tol: Standard_Real, Pf: gp_Pnt2d, Pl: gp_Pnt2d)  {.importcpp: "UpdateEdge".}
  ## Sets a pcurve for the edge on the face. If <C> is a null handle,
  ## remove any existing pcurve. Sets UV bounds for curve repsentation

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, C1: Handle[Geom2d_Curve], C2: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location, Tol: Standard_Real)  {.importcpp: "UpdateEdge".}
  ## Sets pcurves for the edge on the closed surface. <C1> or <C2> is a
  ## null handle, remove any existing pcurve.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, C1: Handle[Geom2d_Curve], C2: Handle[Geom2d_Curve], S: Handle[Geom_Surface], L: TopLoc_Location, Tol: Standard_Real, Pf: gp_Pnt2d, Pl: gp_Pnt2d)  {.importcpp: "UpdateEdge".}
  ## Sets pcurves for the edge on the closed surface. <C1> or <C2> is a
  ## null handle, remove any existing pcurve. Sets UV bounds for curve
  ## repsentation

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, P: Handle[Poly_Polygon3D])  {.importcpp: "UpdateEdge".}
  ## Changes an Edge 3D polygon. A null Polygon removes the 3d Polygon.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, P: Handle[Poly_Polygon3D], L: TopLoc_Location)  {.importcpp: "UpdateEdge".}
  ## Changes an Edge 3D polygon. A null Polygon removes the 3d Polygon.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, N: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation])  {.importcpp: "UpdateEdge".}
  ## Changes an Edge polygon on Triangulation.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, N: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation], L: TopLoc_Location)  {.importcpp: "UpdateEdge".}
  ## Changes an Edge polygon on Triangulation.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, N1: Handle[Poly_PolygonOnTriangulation], N2: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation])  {.importcpp: "UpdateEdge".}
  ## Changes an Edge polygon on Triangulation.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, N1: Handle[Poly_PolygonOnTriangulation], N2: Handle[Poly_PolygonOnTriangulation], T: Handle[Poly_Triangulation], L: TopLoc_Location)  {.importcpp: "UpdateEdge".}
  ## Changes an Edge polygon on Triangulation.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, P: Handle[Poly_Polygon2D], S: TopoDS_Face)  {.importcpp: "UpdateEdge".}
  ## Changes Edge polygon on a face.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, P: Handle[Poly_Polygon2D], S: Handle[Geom_Surface], T: TopLoc_Location)  {.importcpp: "UpdateEdge".}
  ## Changes Edge polygon on a face.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, P1: Handle[Poly_Polygon2D], P2: Handle[Poly_Polygon2D], S: TopoDS_Face)  {.importcpp: "UpdateEdge".}
  ## Changes Edge polygons on a face.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, P1: Handle[Poly_Polygon2D], P2: Handle[Poly_Polygon2D], S: Handle[Geom_Surface], L: TopLoc_Location)  {.importcpp: "UpdateEdge".}
  ## Changes Edge polygons on a face.

proc updateEdge*(this: BRep_Builder, E: TopoDS_Edge, Tol: Standard_Real)  {.importcpp: "UpdateEdge".}
  ## Updates the edge tolerance.

proc continuity*(this: BRep_Builder, E: TopoDS_Edge, F1: TopoDS_Face, F2: TopoDS_Face, C: GeomAbs_Shape)  {.importcpp: "Continuity".}
  ## Sets the geometric continuity on the edge.

proc continuity*(this: BRep_Builder, E: TopoDS_Edge, S1: Handle[Geom_Surface], S2: Handle[Geom_Surface], L1: TopLoc_Location, L2: TopLoc_Location, C: GeomAbs_Shape)  {.importcpp: "Continuity".}
  ## Sets the geometric continuity on the edge.

proc sameParameter*(this: BRep_Builder, E: TopoDS_Edge, S: Standard_Boolean)  {.importcpp: "SameParameter".}
  ## Sets the same parameter flag for the edge <E>.

proc sameRange*(this: BRep_Builder, E: TopoDS_Edge, S: Standard_Boolean)  {.importcpp: "SameRange".}
  ## Sets the same range flag for the edge <E>.

proc degenerated*(this: BRep_Builder, E: TopoDS_Edge, D: Standard_Boolean)  {.importcpp: "Degenerated".}
  ## Sets the degenerated flag for the edge <E>.

proc range*(this: BRep_Builder, E: TopoDS_Edge, First: Standard_Real, Last: Standard_Real, Only3d: Standard_Boolean)  {.importcpp: "Range".}
  ## Sets the range of the 3d curve if Only3d=TRUE, otherwise sets the
  ## range to all the representations

proc range*(this: BRep_Builder, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location, First: Standard_Real, Last: Standard_Real)  {.importcpp: "Range".}
  ## Sets the range of the edge on the pcurve on the surface.

proc range*(this: BRep_Builder, E: TopoDS_Edge, F: TopoDS_Face, First: Standard_Real, Last: Standard_Real)  {.importcpp: "Range".}
  ## Sets the range of the edge on the pcurve on the face.

proc transfert*(this: BRep_Builder, Ein: TopoDS_Edge, Eout: TopoDS_Edge)  {.importcpp: "Transfert".}
  ## Add to <Eout> the geometric representations of <Ein>.

proc makeVertex*(this: BRep_Builder, V: var TopoDS_Vertex)  {.importcpp: "MakeVertex".}
  ## Makes an udefined vertex without geometry.

proc makeVertex*(this: BRep_Builder, V: var TopoDS_Vertex, P: gp_Pnt, Tol: Standard_Real)  {.importcpp: "MakeVertex".}
  ## Makes a vertex from a 3D point.

proc updateVertex*(this: BRep_Builder, V: TopoDS_Vertex, P: gp_Pnt, Tol: Standard_Real)  {.importcpp: "UpdateVertex".}
  ## Sets a 3D point on the vertex.

proc updateVertex*(this: BRep_Builder, V: TopoDS_Vertex, P: Standard_Real, E: TopoDS_Edge, Tol: Standard_Real)  {.importcpp: "UpdateVertex".}
  ## Sets the parameter for the vertex on the edge curves.

proc updateVertex*(this: BRep_Builder, V: TopoDS_Vertex, P: Standard_Real, E: TopoDS_Edge, F: TopoDS_Face, Tol: Standard_Real)  {.importcpp: "UpdateVertex".}
  ## Sets the parameter for the vertex on the edge pcurve on the face.

proc updateVertex*(this: BRep_Builder, V: TopoDS_Vertex, P: Standard_Real, E: TopoDS_Edge, S: Handle[Geom_Surface], L: TopLoc_Location, Tol: Standard_Real)  {.importcpp: "UpdateVertex".}
  ## Sets the parameter for the vertex on the edge pcurve on the surface.

proc updateVertex*(this: BRep_Builder, Ve: TopoDS_Vertex, U: Standard_Real, V: Standard_Real, F: TopoDS_Face, Tol: Standard_Real)  {.importcpp: "UpdateVertex".}
  ## Sets the parameters for the vertex on the face.

proc updateVertex*(this: BRep_Builder, V: TopoDS_Vertex, Tol: Standard_Real)  {.importcpp: "UpdateVertex".}
  ## Updates the vertex tolerance.

proc transfert*(this: BRep_Builder, Ein: TopoDS_Edge, Eout: TopoDS_Edge, Vin: TopoDS_Vertex, Vout: TopoDS_Vertex)  {.importcpp: "Transfert".}
  ## Transfert the parameters of Vin on Ein as the parameter of Vout on
  ## Eout.

{.pop.} # header: "BRep_Builder.hxx
