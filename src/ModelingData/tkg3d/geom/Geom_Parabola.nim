import geom_types


type
  Geom_Parabola* {.header: "Geom_Parabola.hxx", importcpp: "Geom_Parabola", byref.} = object #of class Geom_Conic
    ## Describes a parabola in 3D space. A parabola is defined by its focal
    ## length (i.e. the distance between its focus and its apex) and is
    ## positioned in space with a coordinate system (gp_Ax2 object) where: -
    ## the origin is the apex of the parabola, - the "X Axis" defines the
    ## axis of symmetry; the parabola is on the positive side of this axis, -
    ## the origin, "X Direction" and "Y Direction" define the plane of the
    ## parabola. This coordinate system is the local coordinate system of the
    ## parabola. The "main Direction" of this coordinate system is a vector
    ## normal to the plane of the parabola. The axis, of which the origin and
    ## unit vector are respectively the origin and "main Direction" of the
    ## local coordinate system, is termed the "Axis" or "main Axis" of the
    ## parabola. The "main Direction" of the local coordinate system gives an
    ## explicit orientation to the parabola, determining the direction in
    ## which the parameter increases along the parabola. The Geom_Parabola
    ## parabola is parameterized as follows: P(U) = O + U*U/(4.*F)*XDir +
    ## U*YDir where: - P is the point of parameter U, - O, XDir and YDir are
    ## respectively the origin, "X Direction" and "Y Direction" of its local
    ## coordinate system, - F is the focal length of the parabola. The
    ## parameter of the parabola is therefore its Y coordinate in the local
    ## coordinate system, with the "X Axis" of the local coordinate system
    ## defining the origin of the parameter. The parameter range is ]
    ## -infinite, +infinite [.

  Handle_Geom_Parabola* {.header: "Geom_Parabola.hxx", importcpp: "Handle_Geom_Parabola".} = handle[Geom_Parabola]
  Base_type* {.header: "Geom_Parabola.hxx", importcpp: "Geom_Parabola::base_type".} = Geom_Conic


{.push header: "Geom_Parabola.hxx".}

proc constructGeom_Parabola*(Prb: gp_Parab): Geom_Parabola {.constructor,importcpp: "Geom_Parabola::Geom_Parabola(@)".}
    ## Creates a parabola from a non transient one.

proc constructGeom_Parabola*(A2: gp_Ax2, Focal: Standard_Real): Geom_Parabola {.constructor,importcpp: "Geom_Parabola::Geom_Parabola(@)".}
    ## Creates a parabola with its local coordinate system "A2" and it's
    ## focal length "Focal". The XDirection of A2 defines the axis of
    ## symmetry of the parabola. The YDirection of A2 is parallel to the
    ## directrix of the parabola. The Location point of A2 is the vertex of
    ## the parabola Raised if Focal < 0.0

proc constructGeom_Parabola*(D: gp_Ax1, F: gp_Pnt): Geom_Parabola {.constructor,importcpp: "Geom_Parabola::Geom_Parabola(@)".}
    ## D is the directrix of the parabola and F the focus point. The symmetry
    ## axis (XAxis) of the parabola is normal to the directrix and pass
    ## through the focus point F, but its location point is the vertex of the
    ## parabola. The YAxis of the parabola is parallel to D and its location
    ## point is the vertex of the parabola. The normal to the plane of the
    ## parabola is the cross product between the XAxis and the YAxis.

proc setFocal*(this: var Geom_Parabola, Focal: Standard_Real)  {.importcpp: "SetFocal".}
    ## Assigns the value Focal to the focal distance of this parabola.
    ## Exceptions Standard_ConstructionError if Focal is negative.

proc setParab*(this: var Geom_Parabola, Prb: gp_Parab)  {.importcpp: "SetParab".}
    ## Converts the gp_Parab parabola Prb into this parabola.

proc parab*(this: Geom_Parabola): gp_Parab  {.importcpp: "Parab".}
    ## Returns the non transient parabola from gp with the same geometric
    ## properties as <me>.

proc reversedParameter*(this: Geom_Parabola, U: Standard_Real): Standard_Real  {.importcpp: "ReversedParameter".}
    ## Computes the parameter on the reversed parabola, for the point of
    ## parameter U on this parabola. For a parabola, the returned value is:
    ## -U.

proc firstParameter*(this: Geom_Parabola): Standard_Real  {.importcpp: "FirstParameter".}
    ## Returns the value of the first or last parameter of this parabola.
    ## This is, respectively: - Standard_Real::RealFirst(), or -
    ## Standard_Real::RealLast().

proc lastParameter*(this: Geom_Parabola): Standard_Real  {.importcpp: "LastParameter".}
    ## Returns the value of the first or last parameter of this parabola.
    ## This is, respectively: - Standard_Real::RealFirst(), or -
    ## Standard_Real::RealLast().

proc isClosed*(this: Geom_Parabola): Standard_Boolean  {.importcpp: "IsClosed".}
    ## Returns False

proc isPeriodic*(this: Geom_Parabola): Standard_Boolean  {.importcpp: "IsPeriodic".}
    ## Returns False

proc directrix*(this: Geom_Parabola): gp_Ax1  {.importcpp: "Directrix".}
    ## Computes the directrix of this parabola. This is a line normal to the
    ## axis of symmetry, in the plane of this parabola, located on the
    ## negative side of its axis of symmetry, at a distance from the apex
    ## equal to the focal length. The directrix is returned as an axis
    ## (gp_Ax1 object), where the origin is located on the "X Axis" of this
    ## parabola.

proc eccentricity*(this: Geom_Parabola): Standard_Real  {.importcpp: "Eccentricity".}
    ## Returns 1. (which is the eccentricity of any parabola).

proc focus*(this: Geom_Parabola): gp_Pnt  {.importcpp: "Focus".}
    ## Computes the focus of this parabola. The focus is on the positive side
    ## of the "X Axis" of the local coordinate system of the parabola.

proc focal*(this: Geom_Parabola): Standard_Real  {.importcpp: "Focal".}
    ## Computes the focal distance of this parabola The focal distance is the
    ## distance between the apex and the focus of the parabola.

proc parameter*(this: Geom_Parabola): Standard_Real  {.importcpp: "Parameter".}
    ## Computes the parameter of this parabola which is the distance between
    ## its focus and its directrix. This distance is twice the focal length.
    ## If P is the parameter of the parabola, the equation of the parabola in
    ## its local coordinate system is: Y**2 = 2.*P*X.

proc d0*(this: Geom_Parabola, U: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Returns in P the point of parameter U. If U = 0 the returned point is
    ## the origin of the XAxis and the YAxis of the parabola and it is the
    ## vertex of the parabola. P = S + F * (U * U * XDir + * U * YDir) where
    ## S is the vertex of the parabola, XDir the XDirection and YDir the
    ## YDirection of the parabola's local coordinate system.

proc d1*(this: Geom_Parabola, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
    ## Returns the point P of parameter U and the first derivative V1.

proc d2*(this: Geom_Parabola, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Returns the point P of parameter U, the first and second derivatives
    ## V1 and V2.

proc d3*(this: Geom_Parabola, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## Returns the point P of parameter U, the first second and third
    ## derivatives V1 V2 and V3.

proc dN*(this: Geom_Parabola, U: Standard_Real, N: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## For the point of parameter U of this parabola, computes the vector
    ## corresponding to the Nth derivative. Exceptions Standard_RangeError if
    ## N is less than 1.

proc transform*(this: var Geom_Parabola, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this parabola.

proc transformedParameter*(this: Geom_Parabola, U: Standard_Real, T: gp_Trsf): Standard_Real  {.importcpp: "TransformedParameter".}
    ## Returns the parameter on the transformed curve for the transform of
    ## the point of parameter U on <me>.

proc parametricTransformation*(this: Geom_Parabola, T: gp_Trsf): Standard_Real  {.importcpp: "ParametricTransformation".}
    ## Returns a coefficient to compute the parameter on the transformed
    ## curve for the transform of the point on <me>.

proc copy*(this: Geom_Parabola): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this parabola.

proc dumpJson*(this: Geom_Parabola, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Parabola): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Parabola): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Parabola): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Parabola.hxx"
