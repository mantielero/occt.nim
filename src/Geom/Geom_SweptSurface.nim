import geom_types


type
  Geom_SweptSurface* {.header: "Geom_SweptSurface.hxx", importcpp: "Geom_SweptSurface", byref.} = object #of class Geom_Surface
    ## Describes the common behavior for surfaces constructed by sweeping a
    ## curve with another curve. The Geom package provides two concrete
    ## derived surfaces: surface of revolution (a revolved surface), and
    ## surface of linear extrusion (an extruded surface).

  Handle_Geom_SweptSurface* {.header: "Geom_SweptSurface.hxx", importcpp: "Handle_Geom_SweptSurface".} = handle[Geom_SweptSurface]
  Base_type* {.header: "Geom_SweptSurface.hxx", importcpp: "Geom_SweptSurface::base_type".} = Geom_Surface


{.push header: "Geom_SweptSurface.hxx".}

proc continuity*(this: Geom_SweptSurface): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## returns the continuity of the surface : C0 : only geometric
    ## continuity, C1 : continuity of the first derivative all along the
    ## surface, C2 : continuity of the second derivative all along the
    ## surface, C3 : continuity of the third derivative all along the
    ## surface, G1 : tangency continuity all along the surface, G2 :
    ## curvature continuity all along the surface, CN : the order of
    ## continuity is infinite.

proc direction*(this: Geom_SweptSurface): gp_Dir  {.importcpp: "Direction".}
    ## Returns the reference direction of the swept surface. For a surface of
    ## revolution it is the direction of the revolution axis, for a surface
    ## of linear extrusion it is the direction of extrusion.

proc basisCurve*(this: Geom_SweptSurface): handle[Geom_Curve]  {.importcpp: "BasisCurve".}
    ## Returns the referenced curve of the surface. For a surface of
    ## revolution it is the revolution curve, for a surface of linear
    ## extrusion it is the extruded curve.

proc dumpJson*(this: Geom_SweptSurface, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_SweptSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_SweptSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_SweptSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_SweptSurface.hxx"
