import geom_types


type
  Geom_Direction* {.header: "Geom_Direction.hxx", importcpp: "Geom_Direction", byref.} = object #of class Geom_Vector
    ## The class Direction specifies a vector that is never null. It is a
    ## unit vector.

  Handle_Geom_Direction* {.header: "Geom_Direction.hxx", importcpp: "Handle_Geom_Direction".} = handle[Geom_Direction]
  Base_type* {.header: "Geom_Direction.hxx", importcpp: "Geom_Direction::base_type".} = Geom_Vector


{.push header: "Geom_Direction.hxx".}

proc constructGeom_Direction*(X: Standard_Real, Y: Standard_Real, Z: Standard_Real): Geom_Direction {.constructor,importcpp: "Geom_Direction::Geom_Direction(@)".}
    ## Creates a unit vector with it 3 cartesian coordinates.

proc constructGeom_Direction*(V: gp_Dir): Geom_Direction {.constructor,importcpp: "Geom_Direction::Geom_Direction(@)".}
    ## Creates a transient copy of <me>.

proc setCoord*(this: var Geom_Direction, X: Standard_Real, Y: Standard_Real, Z: Standard_Real)  {.importcpp: "SetCoord".}
    ## Sets <me> to X,Y,Z coordinates.

proc setDir*(this: var Geom_Direction, V: gp_Dir)  {.importcpp: "SetDir".}
    ## Converts the gp_Dir unit vector V into this unit vector.

proc setX*(this: var Geom_Direction, X: Standard_Real)  {.importcpp: "SetX".}
    ## Changes the X coordinate of <me>.

proc setY*(this: var Geom_Direction, Y: Standard_Real)  {.importcpp: "SetY".}
    ## Changes the Y coordinate of <me>.

proc setZ*(this: var Geom_Direction, Z: Standard_Real)  {.importcpp: "SetZ".}
    ## Changes the Z coordinate of <me>.

proc dir*(this: Geom_Direction): gp_Dir  {.importcpp: "Dir".}
    ## Returns the non transient direction with the same coordinates as <me>.

proc magnitude*(this: Geom_Direction): Standard_Real  {.importcpp: "Magnitude".}
    ## returns 1.0 which is the magnitude of any unit vector.

proc squareMagnitude*(this: Geom_Direction): Standard_Real  {.importcpp: "SquareMagnitude".}
    ## returns 1.0 which is the square magnitude of any unit vector.

proc cross*(this: var Geom_Direction, Other: handle[Geom_Vector])  {.importcpp: "Cross".}
    ## Computes the cross product between <me> and <Other>.

proc crossCross*(this: var Geom_Direction, V1: handle[Geom_Vector], V2: handle[Geom_Vector])  {.importcpp: "CrossCross".}
    ## Computes the triple vector product <me> ^(V1 ^ V2).

proc crossed*(this: Geom_Direction, Other: handle[Geom_Vector]): handle[Geom_Vector]  {.importcpp: "Crossed".}
    ## Computes the cross product between <me> and <Other>. A new direction
    ## is returned.

proc crossCrossed*(this: Geom_Direction, V1: handle[Geom_Vector], V2: handle[Geom_Vector]): handle[Geom_Vector]  {.importcpp: "CrossCrossed".}
    ## Computes the triple vector product <me> ^(V1 ^ V2).

proc transform*(this: var Geom_Direction, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this unit vector, then normalizes it.

proc copy*(this: Geom_Direction): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this unit vector.

proc get_type_name*(this: var Geom_Direction): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Direction): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Direction): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Direction.hxx"
