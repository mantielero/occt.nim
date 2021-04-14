import geom_types


type
  Geom_BoundedSurface* {.header: "Geom_BoundedSurface.hxx", importcpp: "Geom_BoundedSurface", byref.} = object #of class Geom_Surface
    ## The root class for bounded surfaces in 3D space. A bounded surface is
    ## defined by a rectangle in its 2D parametric space, i.e. - its u
    ## parameter, which ranges between two finite values u0 and u1, referred
    ## to as "First u parameter" and "Last u parameter" respectively, and -
    ## its v parameter, which ranges between two finite values v0 and v1,
    ## referred to as "First v parameter" and the "Last v parameter"
    ## respectively. The surface is limited by four curves which are the
    ## boundaries of the surface: - its u0 and u1 isoparametric curves in the
    ## u parametric direction, and - its v0 and v1 isoparametric curves in
    ## the v parametric direction. A bounded surface is finite. The common
    ## behavior of all bounded surfaces is described by the Geom_Surface
    ## class. The Geom package provides three concrete implementations of
    ## bounded surfaces: - Geom_BezierSurface, - Geom_BSplineSurface, and -
    ## Geom_RectangularTrimmedSurface. The first two of these implement well
    ## known mathematical definitions of complex surfaces, the third trims a
    ## surface using four isoparametric curves, i.e. it limits the variation
    ## of its parameters to a rectangle in 2D parametric space.

  Handle_Geom_BoundedSurface* {.header: "Geom_BoundedSurface.hxx", importcpp: "Handle_Geom_BoundedSurface".} = handle[Geom_BoundedSurface]
  Base_type* {.header: "Geom_BoundedSurface.hxx", importcpp: "Geom_BoundedSurface::base_type".} = Geom_Surface


{.push header: "Geom_BoundedSurface.hxx".}

proc get_type_name*(this: var Geom_BoundedSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_BoundedSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_BoundedSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_BoundedSurface.hxx"
