import geom_types


type
  Geom_Point* {.header: "Geom_Point.hxx", importcpp: "Geom_Point", byref.} = object #of class Geom_Geometry
    ## The abstract class Point describes the common behavior of geometric
    ## points in 3D space. The Geom package also provides the concrete class
    ## Geom_CartesianPoint.

  Handle_Geom_Point* {.header: "Geom_Point.hxx", importcpp: "Handle_Geom_Point".} = handle[Geom_Point]
  Base_type* {.header: "Geom_Point.hxx", importcpp: "Geom_Point::base_type".} = Geom_Geometry


{.push header: "Geom_Point.hxx".}

proc coord*(this: Geom_Point, X: var Standard_Real, Y: var Standard_Real, Z: var Standard_Real)  {.importcpp: "Coord".}
    ## returns the Coordinates of <me>.

proc pnt*(this: Geom_Point): gp_Pnt  {.importcpp: "Pnt".}
    ## returns a non transient copy of <me>

proc x*(this: Geom_Point): Standard_Real  {.importcpp: "X".}
    ## returns the X coordinate of <me>.

proc y*(this: Geom_Point): Standard_Real  {.importcpp: "Y".}
    ## returns the Y coordinate of <me>.

proc z*(this: Geom_Point): Standard_Real  {.importcpp: "Z".}
    ## returns the Z coordinate of <me>.

proc distance*(this: Geom_Point, Other: handle[Geom_Point]): Standard_Real  {.importcpp: "Distance".}
    ## Computes the distance between <me> and <Other>.

proc squareDistance*(this: Geom_Point, Other: handle[Geom_Point]): Standard_Real  {.importcpp: "SquareDistance".}
    ## Computes the square distance between <me> and <Other>.

proc get_type_name*(this: var Geom_Point): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Point): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Point): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Point.hxx"
