import geom_types


type
  Geom_Circle* {.header: "Geom_Circle.hxx", importcpp: "Geom_Circle", byref.} = object #of class Geom_Conic
    ## Describes a circle in 3D space. A circle is defined by its radius and,
    ## as with any conic curve, is positioned in space with a right-handed
    ## coordinate system (gp_Ax2 object) where: - the origin is the center of
    ## the circle, and - the origin, "X Direction" and "Y Direction" define
    ## the plane of the circle. This coordinate system is the local
    ## coordinate system of the circle. The "main Direction" of this
    ## coordinate system is the vector normal to the plane of the circle. The
    ## axis, of which the origin and unit vector are respectively the origin
    ## and "main Direction" of the local coordinate system, is termed the
    ## "Axis" or "main Axis" of the circle. The "main Direction" of the local
    ## coordinate system gives an explicit orientation to the circle
    ## (definition of the trigonometric sense), determining the direction in
    ## which the parameter increases along the circle. The Geom_Circle circle
    ## is parameterized by an angle: P(U) = O + R*Cos(U)*XDir +
    ## R*Sin(U)*YDir, where: - P is the point of parameter U, - O, XDir and
    ## YDir are respectively the origin, "X Direction" and "Y Direction" of
    ## its local coordinate system, - R is the radius of the circle. The "X
    ## Axis" of the local coordinate system therefore defines the origin of
    ## the parameter of the circle. The parameter is the angle with this "X
    ## Direction". A circle is a closed and periodic curve. The period is
    ## 2.*Pi and the parameter range is [ 0, 2.*Pi [.

  Handle_Geom_Circle* {.header: "Geom_Circle.hxx", importcpp: "Handle_Geom_Circle".} = handle[Geom_Circle]
  Base_type* {.header: "Geom_Circle.hxx", importcpp: "Geom_Circle::base_type".} = Geom_Conic


{.push header: "Geom_Circle.hxx".}

proc constructGeom_Circle*(C: gp_Circ): Geom_Circle {.constructor,importcpp: "Geom_Circle::Geom_Circle(@)".}
    ## Constructs a circle by conversion of the gp_Circ circle C.

proc constructGeom_Circle*(A2: gp_Ax2, Radius: Standard_Real): Geom_Circle {.constructor,importcpp: "Geom_Circle::Geom_Circle(@)".}
    ## Constructs a circle of radius Radius, where A2 locates the circle and
    ## defines its orientation in 3D space such that: - the center of the
    ## circle is the origin of A2, - the origin, "X Direction" and "Y
    ## Direction" of A2 define the plane of the circle, - A2 is the local
    ## coordinate system of the circle. Note: It is possible to create a
    ## circle where Radius is equal to 0.0. raised if Radius < 0.

proc setCirc*(this: var Geom_Circle, C: gp_Circ)  {.importcpp: "SetCirc".}
    ## Set <me> so that <me> has the same geometric properties as C.

proc setRadius*(this: var Geom_Circle, R: Standard_Real)  {.importcpp: "SetRadius".}
    ## Assigns the value R to the radius of this circle. Note: it is possible
    ## to have a circle with a radius equal to 0.0. Exceptions -
    ## Standard_ConstructionError if R is negative.

proc circ*(this: Geom_Circle): gp_Circ  {.importcpp: "Circ".}
    ## returns the non transient circle from gp with the same geometric
    ## properties as <me>.

proc radius*(this: Geom_Circle): Standard_Real  {.importcpp: "Radius".}
    ## Returns the radius of this circle.

proc reversedParameter*(this: Geom_Circle, U: Standard_Real): Standard_Real  {.importcpp: "ReversedParameter".}
    ## Computes the parameter on the reversed circle for the point of
    ## parameter U on this circle. For a circle, the returned value is: 2.*Pi
    ## - U.

proc eccentricity*(this: Geom_Circle): Standard_Real  {.importcpp: "Eccentricity".}
    ## Returns the eccentricity e = 0 for a circle.

proc firstParameter*(this: Geom_Circle): Standard_Real  {.importcpp: "FirstParameter".}
    ## Returns the value of the first parameter of this circle. This is 0.0,
    ## which gives the start point of this circle, or The start point and end
    ## point of a circle are coincident.

proc lastParameter*(this: Geom_Circle): Standard_Real  {.importcpp: "LastParameter".}
    ## Returns the value of the last parameter of this circle. This is 2.*Pi,
    ## which gives the end point of this circle. The start point and end
    ## point of a circle are coincident.

proc isClosed*(this: Geom_Circle): Standard_Boolean  {.importcpp: "IsClosed".}
    ## returns True.

proc isPeriodic*(this: Geom_Circle): Standard_Boolean  {.importcpp: "IsPeriodic".}
    ## returns True.

proc d0*(this: Geom_Circle, U: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Returns in P the point of parameter U. P = C + R * Cos (U) * XDir + R
    ## * Sin (U) * YDir where C is the center of the circle , XDir the
    ## XDirection and YDir the YDirection of the circle's local coordinate
    ## system.

proc d1*(this: Geom_Circle, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
    ## Returns the point P of parameter U and the first derivative V1.

proc d2*(this: Geom_Circle, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Returns the point P of parameter U, the first and second derivatives
    ## V1 and V2.

proc d3*(this: Geom_Circle, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## Returns the point P of parameter u, the first second and third
    ## derivatives V1 V2 and V3.

proc dN*(this: Geom_Circle, U: Standard_Real, N: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## The returned vector gives the value of the derivative for the order of
    ## derivation N. Raised if N < 1.

proc transform*(this: var Geom_Circle, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this circle.

proc copy*(this: Geom_Circle): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this circle.

proc dumpJson*(this: Geom_Circle, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Circle): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Circle): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Circle): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Circle.hxx"
