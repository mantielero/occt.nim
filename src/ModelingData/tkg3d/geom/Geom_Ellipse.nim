import geom_types


type
  Geom_Ellipse* {.header: "Geom_Ellipse.hxx", importcpp: "Geom_Ellipse", byref.} = object #of class Geom_Conic
    ## Describes an ellipse in 3D space. An ellipse is defined by its major
    ## and minor radii and, as with any conic curve, is positioned in space
    ## with a right-handed coordinate system (gp_Ax2 object) where: - the
    ## origin is the center of the ellipse, - the "X Direction" defines the
    ## major axis, and - the "Y Direction" defines the minor axis. The
    ## origin, "X Direction" and "Y Direction" of this coordinate system
    ## define the plane of the ellipse. The coordinate system is the local
    ## coordinate system of the ellipse. The "main Direction" of this
    ## coordinate system is the vector normal to the plane of the ellipse.
    ## The axis, of which the origin and unit vector are respectively the
    ## origin and "main Direction" of the local coordinate system, is termed
    ## the "Axis" or "main Axis" of the ellipse. The "main Direction" of the
    ## local coordinate system gives an explicit orientation to the ellipse
    ## (definition of the trigonometric sense), determining the direction in
    ## which the parameter increases along the ellipse. The Geom_Ellipse
    ## ellipse is parameterized by an angle: P(U) = O + MajorRad*Cos(U)*XDir
    ## + MinorRad*Sin(U)*YDir where: - P is the point of parameter U, - O,
    ## XDir and YDir are respectively the origin, "X Direction" and "Y
    ## Direction" of its local coordinate system, - MajorRad and MinorRad are
    ## the major and minor radii of the ellipse. The "X Axis" of the local
    ## coordinate system therefore defines the origin of the parameter of the
    ## ellipse. An ellipse is a closed and periodic curve. The period is
    ## 2.*Pi and the parameter range is [ 0, 2.*Pi [.

  Handle_Geom_Ellipse* {.header: "Geom_Ellipse.hxx", importcpp: "Handle_Geom_Ellipse".} = handle[Geom_Ellipse]
  Base_type* {.header: "Geom_Ellipse.hxx", importcpp: "Geom_Ellipse::base_type".} = Geom_Conic


{.push header: "Geom_Ellipse.hxx".}

proc constructGeom_Ellipse*(E: gp_Elips): Geom_Ellipse {.constructor,importcpp: "Geom_Ellipse::Geom_Ellipse(@)".}
    ## Constructs an ellipse by conversion of the gp_Elips ellipse E.

proc constructGeom_Ellipse*(A2: gp_Ax2, MajorRadius: Standard_Real, MinorRadius: Standard_Real): Geom_Ellipse {.constructor,importcpp: "Geom_Ellipse::Geom_Ellipse(@)".}
    ## Constructs an ellipse defined by its major and minor radii,
    ## MajorRadius and MinorRadius, where A2 locates the ellipse and defines
    ## its orientation in 3D space such that: - the center of the ellipse is
    ## the origin of A2, - the "X Direction" of A2 defines the major axis of
    ## the ellipse, i.e. the major radius MajorRadius is measured along this
    ## axis, - the "Y Direction" of A2 defines the minor axis of the ellipse,
    ## i.e. the minor radius MinorRadius is measured along this axis, - A2 is
    ## the local coordinate system of the ellipse. Exceptions
    ## Standard_ConstructionError if: - MajorRadius is less than MinorRadius,
    ## or - MinorRadius is less than 0. Warning The Geom package does not
    ## prevent the construction of an ellipse where MajorRadius and
    ## MinorRadius are equal.

proc setElips*(this: var Geom_Ellipse, E: gp_Elips)  {.importcpp: "SetElips".}
    ## Converts the gp_Elips ellipse E into this ellipse.

proc setMajorRadius*(this: var Geom_Ellipse, MajorRadius: Standard_Real)  {.importcpp: "SetMajorRadius".}
    ## Assigns a value to the major radius of this ellipse. ConstructionError
    ## raised if MajorRadius < MinorRadius.

proc setMinorRadius*(this: var Geom_Ellipse, MinorRadius: Standard_Real)  {.importcpp: "SetMinorRadius".}
    ## Assigns a value to the minor radius of this ellipse. ConstructionError
    ## raised if MajorRadius < MinorRadius or if MinorRadius < 0.

proc elips*(this: Geom_Ellipse): gp_Elips  {.importcpp: "Elips".}
    ## returns the non transient ellipse from gp with the same

proc reversedParameter*(this: Geom_Ellipse, U: Standard_Real): Standard_Real  {.importcpp: "ReversedParameter".}
    ## Computes the parameter on the reversed ellipse for the point of
    ## parameter U on this ellipse. For an ellipse, the returned value is:
    ## 2.*Pi - U.

proc directrix1*(this: Geom_Ellipse): gp_Ax1  {.importcpp: "Directrix1".}
    ## This directrix is the line normal to the XAxis of the ellipse in the
    ## local plane (Z = 0) at a distance d = MajorRadius / e from the center
    ## of the ellipse, where e is the eccentricity of the ellipse. This line
    ## is parallel to the "YAxis". The intersection point between directrix1
    ## and the "XAxis" is the "Location" point of the directrix1. This point
    ## is on the positive side of the "XAxis". Raised if Eccentricity = 0.0.
    ## (The ellipse degenerates into a circle)

proc directrix2*(this: Geom_Ellipse): gp_Ax1  {.importcpp: "Directrix2".}
    ## This line is obtained by the symmetrical transformation of
    ## "Directrix1" with respect to the "YAxis" of the ellipse.

proc eccentricity*(this: Geom_Ellipse): Standard_Real  {.importcpp: "Eccentricity".}
    ## Returns the eccentricity of the ellipse between 0.0 and 1.0 If f is
    ## the distance between the center of the ellipse and the Focus1 then the
    ## eccentricity e = f / MajorRadius. Returns 0 if MajorRadius = 0

proc focal*(this: Geom_Ellipse): Standard_Real  {.importcpp: "Focal".}
    ## Computes the focal distance. It is the distance between the the two
    ## focus of the ellipse.

proc focus1*(this: Geom_Ellipse): gp_Pnt  {.importcpp: "Focus1".}
    ## Returns the first focus of the ellipse. This focus is on the positive
    ## side of the "XAxis" of the ellipse.

proc focus2*(this: Geom_Ellipse): gp_Pnt  {.importcpp: "Focus2".}
    ## Returns the second focus of the ellipse. This focus is on the negative
    ## side of the "XAxis" of the ellipse.

proc majorRadius*(this: Geom_Ellipse): Standard_Real  {.importcpp: "MajorRadius".}
    ## Returns the major radius of this ellipse.

proc minorRadius*(this: Geom_Ellipse): Standard_Real  {.importcpp: "MinorRadius".}
    ## Returns the minor radius of this ellipse.

proc parameter*(this: Geom_Ellipse): Standard_Real  {.importcpp: "Parameter".}
    ## Returns p = (1 - e * e) * MajorRadius where e is the eccentricity of
    ## the ellipse. Returns 0 if MajorRadius = 0

proc firstParameter*(this: Geom_Ellipse): Standard_Real  {.importcpp: "FirstParameter".}
    ## Returns the value of the first parameter of this ellipse. This is
    ## respectively: - 0.0, which gives the start point of this ellipse, or
    ## The start point and end point of an ellipse are coincident.

proc lastParameter*(this: Geom_Ellipse): Standard_Real  {.importcpp: "LastParameter".}
    ## Returns the value of the last parameter of this ellipse. This is
    ## respectively: - 2.*Pi, which gives the end point of this ellipse. The
    ## start point and end point of an ellipse are coincident.

proc isClosed*(this: Geom_Ellipse): Standard_Boolean  {.importcpp: "IsClosed".}
    ## return True.

proc isPeriodic*(this: Geom_Ellipse): Standard_Boolean  {.importcpp: "IsPeriodic".}
    ## return True.

proc d0*(this: Geom_Ellipse, U: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Returns in P the point of parameter U. P = C + MajorRadius * Cos (U) *
    ## XDir + MinorRadius * Sin (U) * YDir where C is the center of the
    ## ellipse , XDir the direction of the "XAxis" and "YDir" the "YAxis" of
    ## the ellipse.

proc d1*(this: Geom_Ellipse, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}

proc d2*(this: Geom_Ellipse, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Returns the point P of parameter U. The vectors V1 and V2 are the
    ## first and second derivatives at this point.

proc d3*(this: Geom_Ellipse, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## Returns the point P of parameter U, the first second and third
    ## derivatives V1 V2 and V3.

proc dN*(this: Geom_Ellipse, U: Standard_Real, N: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## For the point of parameter U of this ellipse, computes the vector
    ## corresponding to the Nth derivative. Exceptions Standard_RangeError if
    ## N is less than 1.

proc transform*(this: var Geom_Ellipse, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this ellipse.

proc copy*(this: Geom_Ellipse): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this ellipse.

proc dumpJson*(this: Geom_Ellipse, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Ellipse): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Ellipse): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Ellipse): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Ellipse.hxx"
