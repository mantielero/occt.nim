{.push header: "BRep_CurveRepresentation.hxx".}


# Constructors and methods
proc constructor_BRep_CurveRepresentation*(L: TopLoc_Location): BRep_CurveRepresentation {.constructor,importcpp: "BRep_CurveRepresentation(@)".}

proc isCurve3D*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsCurve3D".}
  ## A 3D curve representation.

proc isCurveOnSurface*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsCurveOnSurface".}
  ## A curve in the parametric space of a surface.

proc isRegularity*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsRegularity".}
  ## A continuity between two surfaces.

proc isCurveOnClosedSurface*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsCurveOnClosedSurface".}
  ## A curve with two parametric curves on the same surface.

proc isCurveOnSurface*(this: BRep_CurveRepresentation, S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsCurveOnSurface".}
  ## Is it a curve in the parametric space of <S> with location <L>.

proc isRegularity*(this: BRep_CurveRepresentation, S1: Handle[Geom_Surface], S2: Handle[Geom_Surface], L1: TopLoc_Location, L2: TopLoc_Location): Standard_Boolean  {.importcpp: "IsRegularity".}
  ## Is it a regularity between <S1> and <S2> with location <L1> and <L2>.

proc isPolygon3D*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsPolygon3D".}
  ## A 3D polygon representation.

proc isPolygonOnTriangulation*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsPolygonOnTriangulation".}
  ## A representation by an array of nodes on a triangulation.

proc isPolygonOnTriangulation*(this: BRep_CurveRepresentation, T: Handle[Poly_Triangulation], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPolygonOnTriangulation".}
  ## Is it a polygon in the definition of <T> with location <L>.

proc isPolygonOnClosedTriangulation*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsPolygonOnClosedTriangulation".}
  ## A representation by two arrays of nodes on a triangulation.

proc isPolygonOnSurface*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsPolygonOnSurface".}
  ## A polygon in the parametric space of a surface.

proc isPolygonOnSurface*(this: BRep_CurveRepresentation, S: Handle[Geom_Surface], L: TopLoc_Location): Standard_Boolean  {.importcpp: "IsPolygonOnSurface".}
  ## Is it a polygon in the parametric space of <S> with location <L>.

proc isPolygonOnClosedSurface*(this: BRep_CurveRepresentation): Standard_Boolean  {.importcpp: "IsPolygonOnClosedSurface".}
  ## Two 2D polygon representations in the parametric space of a surface.

proc location*(this: BRep_CurveRepresentation): TopLoc_Location  {.importcpp: "Location".}

proc location*(this: var BRep_CurveRepresentation, L: TopLoc_Location)  {.importcpp: "Location".}

proc curve3D*(this: BRep_CurveRepresentation): Handle[Geom_Curve]  {.importcpp: "Curve3D".}

proc curve3D*(this: var BRep_CurveRepresentation, C: Handle[Geom_Curve])  {.importcpp: "Curve3D".}

proc surface*(this: BRep_CurveRepresentation): Handle[Geom_Surface]  {.importcpp: "Surface".}

proc pCurve*(this: BRep_CurveRepresentation): Handle[Geom2d_Curve]  {.importcpp: "PCurve".}

proc pCurve*(this: var BRep_CurveRepresentation, C: Handle[Geom2d_Curve])  {.importcpp: "PCurve".}

proc pCurve2*(this: BRep_CurveRepresentation): Handle[Geom2d_Curve]  {.importcpp: "PCurve2".}

proc pCurve2*(this: var BRep_CurveRepresentation, C: Handle[Geom2d_Curve])  {.importcpp: "PCurve2".}

proc polygon3D*(this: BRep_CurveRepresentation): Handle[Poly_Polygon3D]  {.importcpp: "Polygon3D".}

proc polygon3D*(this: var BRep_CurveRepresentation, P: Handle[Poly_Polygon3D])  {.importcpp: "Polygon3D".}

proc polygon*(this: BRep_CurveRepresentation): Handle[Poly_Polygon2D]  {.importcpp: "Polygon".}

proc polygon*(this: var BRep_CurveRepresentation, P: Handle[Poly_Polygon2D])  {.importcpp: "Polygon".}

proc polygon2*(this: BRep_CurveRepresentation): Handle[Poly_Polygon2D]  {.importcpp: "Polygon2".}

proc polygon2*(this: var BRep_CurveRepresentation, P: Handle[Poly_Polygon2D])  {.importcpp: "Polygon2".}

proc triangulation*(this: BRep_CurveRepresentation): Handle[Poly_Triangulation]  {.importcpp: "Triangulation".}

proc polygonOnTriangulation*(this: BRep_CurveRepresentation): Handle[Poly_PolygonOnTriangulation]  {.importcpp: "PolygonOnTriangulation".}

proc polygonOnTriangulation*(this: var BRep_CurveRepresentation, P: Handle[Poly_PolygonOnTriangulation])  {.importcpp: "PolygonOnTriangulation".}

proc polygonOnTriangulation2*(this: BRep_CurveRepresentation): Handle[Poly_PolygonOnTriangulation]  {.importcpp: "PolygonOnTriangulation2".}

proc polygonOnTriangulation2*(this: var BRep_CurveRepresentation, P2: Handle[Poly_PolygonOnTriangulation])  {.importcpp: "PolygonOnTriangulation2".}

proc surface2*(this: BRep_CurveRepresentation): Handle[Geom_Surface]  {.importcpp: "Surface2".}

proc location2*(this: BRep_CurveRepresentation): TopLoc_Location  {.importcpp: "Location2".}

proc continuity*(this: BRep_CurveRepresentation): GeomAbs_Shape  {.importcpp: "Continuity".}

proc continuity*(this: var BRep_CurveRepresentation, C: GeomAbs_Shape)  {.importcpp: "Continuity".}

proc copy*(this: BRep_CurveRepresentation): Handle[BRep_CurveRepresentation]  {.importcpp: "Copy".}
  ## Return a copy of this representation.

proc get_type_name*(this: var BRep_CurveRepresentation): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var BRep_CurveRepresentation): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: BRep_CurveRepresentation): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.} # header: "BRep_CurveRepresentation.hxx
