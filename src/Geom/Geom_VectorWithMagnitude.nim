import geom_types


type
  Geom_VectorWithMagnitude* {.header: "Geom_VectorWithMagnitude.hxx", importcpp: "Geom_VectorWithMagnitude", byref.} = object #of class Geom_Vector
    ## Defines a vector with magnitude. A vector with magnitude can have a
    ## zero length.

  Handle_Geom_VectorWithMagnitude* {.header: "Geom_VectorWithMagnitude.hxx", importcpp: "Handle_Geom_VectorWithMagnitude".} = handle[Geom_VectorWithMagnitude]
  Base_type* {.header: "Geom_VectorWithMagnitude.hxx", importcpp: "Geom_VectorWithMagnitude::base_type".} = Geom_Vector


{.push header: "Geom_VectorWithMagnitude.hxx".}

proc constructGeom_VectorWithMagnitude*(V: gp_Vec): Geom_VectorWithMagnitude {.constructor,importcpp: "Geom_VectorWithMagnitude::Geom_VectorWithMagnitude(@)".}
    ## Creates a transient copy of V.

proc constructGeom_VectorWithMagnitude*(X: cdouble, Y: cdouble, Z: cdouble): Geom_VectorWithMagnitude {.constructor,importcpp: "Geom_VectorWithMagnitude::Geom_VectorWithMagnitude(@)".}
    ## Creates a vector with three cartesian coordinates.

proc constructGeom_VectorWithMagnitude*(P1: gp_Pnt, P2: gp_Pnt): Geom_VectorWithMagnitude {.constructor,importcpp: "Geom_VectorWithMagnitude::Geom_VectorWithMagnitude(@)".}
    ## Creates a vector from the point P1 to the point P2. The magnitude of
    ## the vector is the distance between P1 and P2

proc setCoord*(this: var Geom_VectorWithMagnitude, X: cdouble, Y: cdouble, Z: cdouble)  {.importcpp: "SetCoord".}
    ## Assigns the values X, Y and Z to the coordinates of this vector.

proc setVec*(this: var Geom_VectorWithMagnitude, V: gp_Vec)  {.importcpp: "SetVec".}
    ## Converts the gp_Vec vector V into this vector.

proc setX*(this: var Geom_VectorWithMagnitude, X: cdouble)  {.importcpp: "SetX".}
    ## Changes the X coordinate of <me>.

proc setY*(this: var Geom_VectorWithMagnitude, Y: cdouble)  {.importcpp: "SetY".}
    ## Changes the Y coordinate of <me>

proc setZ*(this: var Geom_VectorWithMagnitude, Z: cdouble)  {.importcpp: "SetZ".}
    ## Changes the Z coordinate of <me>.

proc magnitude*(this: Geom_VectorWithMagnitude): cdouble  {.importcpp: "Magnitude".}
    ## Returns the magnitude of <me>.

proc squareMagnitude*(this: Geom_VectorWithMagnitude): cdouble  {.importcpp: "SquareMagnitude".}
    ## Returns the square magnitude of <me>.

proc add*(this: var Geom_VectorWithMagnitude, Other: handle[Geom_Vector])  {.importcpp: "Add".}
    ## Adds the Vector Other to <me>.

proc added*(this: Geom_VectorWithMagnitude, Other: handle[Geom_Vector]): handle[Geom_VectorWithMagnitude]  {.importcpp: "Added".}
    ## Adds the vector Other to <me>.

proc cross*(this: var Geom_VectorWithMagnitude, Other: handle[Geom_Vector])  {.importcpp: "Cross".}
    ## Computes the cross product between <me> and Other <me> ^ Other.

proc crossed*(this: Geom_VectorWithMagnitude, Other: handle[Geom_Vector]): handle[Geom_Vector]  {.importcpp: "Crossed".}
    ## Computes the cross product between <me> and Other <me> ^ Other. A new
    ## vector is returned.

proc crossCross*(this: var Geom_VectorWithMagnitude, V1: handle[Geom_Vector], V2: handle[Geom_Vector])  {.importcpp: "CrossCross".}
    ## Computes the triple vector product <me> ^ (V1 ^ V2).

proc crossCrossed*(this: Geom_VectorWithMagnitude, V1: handle[Geom_Vector], V2: handle[Geom_Vector]): handle[Geom_Vector]  {.importcpp: "CrossCrossed".}
    ## Computes the triple vector product <me> ^ (V1 ^ V2). A new vector is
    ## returned.

proc divide*(this: var Geom_VectorWithMagnitude, Scalar: cdouble)  {.importcpp: "Divide".}
    ## Divides <me> by a scalar.

proc divided*(this: Geom_VectorWithMagnitude, Scalar: cdouble): handle[Geom_VectorWithMagnitude]  {.importcpp: "Divided".}
    ## Divides <me> by a scalar. A new vector is returned.

proc multiplied*(this: Geom_VectorWithMagnitude, Scalar: cdouble): handle[Geom_VectorWithMagnitude]  {.importcpp: "Multiplied".}
    ## Computes the product of the vector <me> by a scalar. A new vector is
    ## returned.

proc multiply*(this: var Geom_VectorWithMagnitude, Scalar: cdouble)  {.importcpp: "Multiply".}
    ## Computes the product of the vector <me> by a scalar.

proc normalize*(this: var Geom_VectorWithMagnitude)  {.importcpp: "Normalize".}
    ## Normalizes <me>.

proc normalized*(this: Geom_VectorWithMagnitude): handle[Geom_VectorWithMagnitude]  {.importcpp: "Normalized".}
    ## Returns a copy of <me> Normalized.

proc subtract*(this: var Geom_VectorWithMagnitude, Other: handle[Geom_Vector])  {.importcpp: "Subtract".}
    ## Subtracts the Vector Other to <me>.

proc subtracted*(this: Geom_VectorWithMagnitude, Other: handle[Geom_Vector]): handle[Geom_VectorWithMagnitude]  {.importcpp: "Subtracted".}
    ## Subtracts the vector Other to <me>. A new vector is returned.

proc transform*(this: var Geom_VectorWithMagnitude, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this vector.

proc copy*(this: Geom_VectorWithMagnitude): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this vector.

proc get_type_name*(this: var Geom_VectorWithMagnitude): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_VectorWithMagnitude): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_VectorWithMagnitude): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_VectorWithMagnitude.hxx"
