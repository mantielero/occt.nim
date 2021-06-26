import geom_types


type
  Handle_Geom_Vector* {.header: "Geom_Vector.hxx", importcpp: "Handle_Geom_Vector".} = handle[Geom_Vector]
  Base_type* {.header: "Geom_Vector.hxx", importcpp: "Geom_Vector::base_type".} = Geom_Geometry


{.push header: "Geom_Vector.hxx".}

proc reverse*(this: var Geom_Vector)  {.importcpp: "Reverse".}
    ## Reverses the vector <me>.

proc reversed*(this: Geom_Vector): handle[Geom_Vector]  {.importcpp: "Reversed".}
    ## Returns a copy of <me> reversed.

proc angle*(this: Geom_Vector, Other: handle[Geom_Vector]): cdouble  {.importcpp: "Angle".}
    ## Computes the angular value, in radians, between this vector and vector
    ## Other. The result is a value between 0 and Pi. Exceptions
    ## gp_VectorWithNullMagnitude if: - the magnitude of this vector is less
    ## than or equal to gp::Resolution(), or - the magnitude of vector Other
    ## is less than or equal to gp::Resolution().

proc angleWithRef*(this: Geom_Vector, Other: handle[Geom_Vector], VRef: handle[Geom_Vector]): cdouble  {.importcpp: "AngleWithRef".}
    ## Computes the angular value, in radians, between this vector and vector
    ## Other. The result is a value between -Pi and Pi. The vector VRef
    ## defines the positive sense of rotation: the angular value is positive
    ## if the cross product this ^ Other has the same orientation as VRef (in
    ## relation to the plane defined by this vector and vector Other).
    ## Otherwise, it is negative. Exceptions Standard_DomainError if this
    ## vector, vector Other and vector VRef are coplanar, except if this
    ## vector and vector Other are parallel. gp_VectorWithNullMagnitude if
    ## the magnitude of this vector, vector Other or vector VRef is less than
    ## or equal to gp::Resolution().

proc coord*(this: Geom_Vector, X: var cdouble, Y: var cdouble, Z: var cdouble)  {.importcpp: "Coord".}
    ## Returns the coordinates X, Y and Z of this vector.

proc magnitude*(this: Geom_Vector): cdouble  {.importcpp: "Magnitude".}
    ## Returns the Magnitude of <me>.

proc squareMagnitude*(this: Geom_Vector): cdouble  {.importcpp: "SquareMagnitude".}
    ## Returns the square magnitude of <me>.

proc x*(this: Geom_Vector): cdouble  {.importcpp: "X".}
    ## Returns the X coordinate of <me>.

proc y*(this: Geom_Vector): cdouble  {.importcpp: "Y".}
    ## Returns the Y coordinate of <me>.

proc z*(this: Geom_Vector): cdouble  {.importcpp: "Z".}
    ## Returns the Z coordinate of <me>.

proc cross*(this: var Geom_Vector, Other: handle[Geom_Vector])  {.importcpp: "Cross".}
    ## Computes the cross product between <me> and <Other>.

proc crossed*(this: Geom_Vector, Other: handle[Geom_Vector]): handle[Geom_Vector]  {.importcpp: "Crossed".}
    ## Computes the cross product between <me> and <Other>. A new direction
    ## is returned.

proc crossCross*(this: var Geom_Vector, V1: handle[Geom_Vector], V2: handle[Geom_Vector])  {.importcpp: "CrossCross".}
    ## Computes the triple vector product <me> ^(V1 ^ V2).

proc crossCrossed*(this: Geom_Vector, V1: handle[Geom_Vector], V2: handle[Geom_Vector]): handle[Geom_Vector]  {.importcpp: "CrossCrossed".}
    ## Computes the triple vector product <me> ^(V1 ^ V2).

proc dot*(this: Geom_Vector, Other: handle[Geom_Vector]): cdouble  {.importcpp: "Dot".}
    ## Computes the scalar product of this vector and vector Other.

proc dotCross*(this: Geom_Vector, V1: handle[Geom_Vector], V2: handle[Geom_Vector]): cdouble  {.importcpp: "DotCross".}
    ## Computes the triple scalar product. Returns me . (V1 ^ V2)

proc vec*(this: Geom_Vector): gp_Vec  {.importcpp: "Vec".}
    ## Converts this vector into a gp_Vec vector.

proc get_type_name*(this: var Geom_Vector): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Vector): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Vector): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Vector.hxx"
