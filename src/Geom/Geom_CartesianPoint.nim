import geom_types


type
  Geom_CartesianPoint* {.header: "Geom_CartesianPoint.hxx", importcpp: "Geom_CartesianPoint", byref.} = object #of class Geom_Point
    ## Describes a point in 3D space. A Geom_CartesianPoint is defined by a
    ## gp_Pnt point, with its three Cartesian coordinates X, Y and Z.

  Handle_Geom_CartesianPoint* {.header: "Geom_CartesianPoint.hxx", importcpp: "Handle_Geom_CartesianPoint".} = handle[Geom_CartesianPoint]
  Base_type* {.header: "Geom_CartesianPoint.hxx", importcpp: "Geom_CartesianPoint::base_type".} = Geom_Point


{.push header: "Geom_CartesianPoint.hxx".}

proc constructGeom_CartesianPoint*(P: gp_Pnt): Geom_CartesianPoint {.constructor,importcpp: "Geom_CartesianPoint::Geom_CartesianPoint(@)".}
    ## Returns a transient copy of P.

proc constructGeom_CartesianPoint*(X: cdouble, Y: cdouble, Z: cdouble): Geom_CartesianPoint {.constructor,importcpp: "Geom_CartesianPoint::Geom_CartesianPoint(@)".}
    ## Constructs a point defined by its three Cartesian coordinates X, Y and
    ## Z.

proc setCoord*(this: var Geom_CartesianPoint, X: cdouble, Y: cdouble, Z: cdouble)  {.importcpp: "SetCoord".}
    ## Assigns the coordinates X, Y and Z to this point.

proc setPnt*(this: var Geom_CartesianPoint, P: gp_Pnt)  {.importcpp: "SetPnt".}
    ## Set <me> to P.X(), P.Y(), P.Z() coordinates.

proc setX*(this: var Geom_CartesianPoint, X: cdouble)  {.importcpp: "SetX".}
    ## Changes the X coordinate of me.

proc setY*(this: var Geom_CartesianPoint, Y: cdouble)  {.importcpp: "SetY".}
    ## Changes the Y coordinate of me.

proc setZ*(this: var Geom_CartesianPoint, Z: cdouble)  {.importcpp: "SetZ".}
    ## Changes the Z coordinate of me.

proc coord*(this: Geom_CartesianPoint, X: var cdouble, Y: var cdouble, Z: var cdouble)  {.importcpp: "Coord".}
    ## Returns the coordinates of <me>.

proc pnt*(this: Geom_CartesianPoint): gp_Pnt  {.importcpp: "Pnt".}
    ## Returns a non transient cartesian point with the same coordinates as
    ## <me>.

proc x*(this: Geom_CartesianPoint): cdouble  {.importcpp: "X".}
    ## Returns the X coordinate of <me>.

proc y*(this: Geom_CartesianPoint): cdouble  {.importcpp: "Y".}
    ## Returns the Y coordinate of <me>.

proc z*(this: Geom_CartesianPoint): cdouble  {.importcpp: "Z".}
    ## Returns the Z coordinate of <me>.

proc transform*(this: var Geom_CartesianPoint, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this point.

proc copy*(this: Geom_CartesianPoint): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this point.

proc get_type_name*(this: var Geom_CartesianPoint): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_CartesianPoint): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_CartesianPoint): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_CartesianPoint.hxx"
