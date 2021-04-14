import geom_types


type
  Geom_Hyperbola* {.header: "Geom_Hyperbola.hxx", importcpp: "Geom_Hyperbola", byref.} = object #of class Geom_Conic
    ## Describes a branch of a hyperbola in 3D space. A hyperbola is defined
    ## by its major and minor radii and, as with any conic curve, is
    ## positioned in space with a right-handed coordinate system (gp_Ax2
    ## object) where: - the origin is the center of the hyperbola, - the "X
    ## Direction" defines the major axis, and - the "Y Direction" defines the
    ## minor axis. The origin, "X Direction" and "Y Direction" of this
    ## coordinate system define the plane of the hyperbola. The coordinate
    ## system is the local coordinate system of the hyperbola. The branch of
    ## the hyperbola described is the one located on the positive side of the
    ## major axis. The "main Direction" of the local coordinate system is a
    ## vector normal to the plane of the hyperbola. The axis, of which the
    ## origin and unit vector are respectively the origin and "main
    ## Direction" of the local coordinate system, is termed the "Axis" or
    ## "main Axis" of the hyperbola. The "main Direction" of the local
    ## coordinate system gives an explicit orientation to the hyperbola,
    ## determining the direction in which the parameter increases along the
    ## hyperbola. The Geom_Hyperbola hyperbola is parameterized as follows:
    ## P(U) = O + MajRad*Cosh(U)*XDir + MinRad*Sinh(U)*YDir, where: - P is
    ## the point of parameter U, - O, XDir and YDir are respectively the
    ## origin, "X Direction" and "Y Direction" of its local coordinate
    ## system, - MajRad and MinRad are the major and minor radii of the
    ## hyperbola. The "X Axis" of the local coordinate system therefore
    ## defines the origin of the parameter of the hyperbola. The parameter
    ## range is ] -infinite, +infinite [. The following diagram illustrates
    ## the respective positions, in the plane of the hyperbola, of the three
    ## branches of hyperbolas constructed using the functions OtherBranch,
    ## ConjugateBranch1 and ConjugateBranch2: Defines the main branch of an
    ## hyperbola. ^YAxis | FirstConjugateBranch | Other | Main
    ## --------------------- C ------------------------------>XAxis Branch |
    ## Branch | SecondConjugateBranch | Warning The value of the major radius
    ## (on the major axis) can be less than the value of the minor radius (on
    ## the minor axis).

  Handle_Geom_Hyperbola* {.header: "Geom_Hyperbola.hxx", importcpp: "Handle_Geom_Hyperbola".} = handle[Geom_Hyperbola]
  Base_type* {.header: "Geom_Hyperbola.hxx", importcpp: "Geom_Hyperbola::base_type".} = Geom_Conic


{.push header: "Geom_Hyperbola.hxx".}

proc constructGeom_Hyperbola*(H: gp_Hypr): Geom_Hyperbola {.constructor,importcpp: "Geom_Hyperbola::Geom_Hyperbola(@)".}
    ## Constructs a hyperbola by conversion of the gp_Hypr hyperbola H.

proc constructGeom_Hyperbola*(A2: gp_Ax2, MajorRadius: Standard_Real, MinorRadius: Standard_Real): Geom_Hyperbola {.constructor,importcpp: "Geom_Hyperbola::Geom_Hyperbola(@)".}
    ## Constructs a hyperbola defined by its major and minor radii,
    ## MajorRadius and MinorRadius, where A2 locates the hyperbola and
    ## defines its orientation in 3D space such that: - the center of the
    ## hyperbola is the origin of A2, - the "X Direction" of A2 defines the
    ## major axis of the hyperbola, i.e. the major radius MajorRadius is
    ## measured along this axis, - the "Y Direction" of A2 defines the minor
    ## axis of the hyperbola, i.e. the minor radius MinorRadius is measured
    ## along this axis, - A2 is the local coordinate system of the hyperbola.
    ## Exceptions Standard_ConstructionError if: - MajorRadius is less than
    ## 0.0, - MinorRadius is less than 0.0.

proc setHypr*(this: var Geom_Hyperbola, H: gp_Hypr)  {.importcpp: "SetHypr".}
    ## Converts the gp_Hypr hyperbola H into this hyperbola.

proc setMajorRadius*(this: var Geom_Hyperbola, MajorRadius: Standard_Real)  {.importcpp: "SetMajorRadius".}
    ## Assigns a value to the major radius of this hyperbola. Exceptions
    ## Standard_ConstructionError if: - MajorRadius is less than 0.0, or -
    ## MinorRadius is less than 0.0.Raised if MajorRadius < 0.0

proc setMinorRadius*(this: var Geom_Hyperbola, MinorRadius: Standard_Real)  {.importcpp: "SetMinorRadius".}
    ## Assigns a value to the minor radius of this hyperbola. Exceptions
    ## Standard_ConstructionError if: - MajorRadius is less than 0.0, or -
    ## MinorRadius is less than 0.0.Raised if MajorRadius < 0.0

proc hypr*(this: Geom_Hyperbola): gp_Hypr  {.importcpp: "Hypr".}
    ## returns the non transient parabola from gp with the same geometric
    ## properties as <me>.

proc reversedParameter*(this: Geom_Hyperbola, U: Standard_Real): Standard_Real  {.importcpp: "ReversedParameter".}
    ## Computes the parameter on the reversed hyperbola, for the point of
    ## parameter U on this hyperbola. For a hyperbola, the returned value is:
    ## -U.

proc firstParameter*(this: Geom_Hyperbola): Standard_Real  {.importcpp: "FirstParameter".}
    ## Returns RealFirst from Standard.

proc lastParameter*(this: Geom_Hyperbola): Standard_Real  {.importcpp: "LastParameter".}
    ## returns RealLast from Standard.

proc isClosed*(this: Geom_Hyperbola): Standard_Boolean  {.importcpp: "IsClosed".}
    ## Returns False.

proc isPeriodic*(this: Geom_Hyperbola): Standard_Boolean  {.importcpp: "IsPeriodic".}
    ## return False for an hyperbola.

proc asymptote1*(this: Geom_Hyperbola): gp_Ax1  {.importcpp: "Asymptote1".}
    ## In the local coordinate system of the hyperbola the equation of the
    ## hyperbola is (X*X)/(A*A) - (Y*Y)/(B*B) = 1.0 and the equation of the
    ## first asymptote is Y = (B/A)*X. Raises ConstructionError if
    ## MajorRadius = 0.0

proc asymptote2*(this: Geom_Hyperbola): gp_Ax1  {.importcpp: "Asymptote2".}
    ## In the local coordinate system of the hyperbola the equation of the
    ## hyperbola is (X*X)/(A*A) - (Y*Y)/(B*B) = 1.0 and the equation of the
    ## first asymptote is Y = -(B/A)*X. Raises ConstructionError if
    ## MajorRadius = 0.0

proc conjugateBranch1*(this: Geom_Hyperbola): gp_Hypr  {.importcpp: "ConjugateBranch1".}
    ## This branch of hyperbola is on the positive side of the YAxis of <me>.

proc conjugateBranch2*(this: Geom_Hyperbola): gp_Hypr  {.importcpp: "ConjugateBranch2".}
    ## This branch of hyperbola is on the negative side of the YAxis of <me>.
    ## Note: The diagram given under the class purpose indicates where these
    ## two branches of hyperbola are positioned in relation to this branch of
    ## hyperbola.

proc directrix1*(this: Geom_Hyperbola): gp_Ax1  {.importcpp: "Directrix1".}
    ## This directrix is the line normal to the XAxis of the hyperbola in the
    ## local plane (Z = 0) at a distance d = MajorRadius / e from the center
    ## of the hyperbola, where e is the eccentricity of the hyperbola. This
    ## line is parallel to the YAxis. The intersection point between
    ## directrix1 and the XAxis is the location point of the directrix1. This
    ## point is on the positive side of the XAxis.

proc directrix2*(this: Geom_Hyperbola): gp_Ax1  {.importcpp: "Directrix2".}
    ## This line is obtained by the symmetrical transformation of
    ## "directrix1" with respect to the YAxis of the hyperbola.

proc eccentricity*(this: Geom_Hyperbola): Standard_Real  {.importcpp: "Eccentricity".}
    ## Returns the excentricity of the hyperbola (e > 1). If f is the
    ## distance between the location of the hyperbola and the Focus1 then the
    ## eccentricity e = f / MajorRadius. raised if MajorRadius = 0.0

proc focal*(this: Geom_Hyperbola): Standard_Real  {.importcpp: "Focal".}
    ## Computes the focal distance. It is the distance between the two focus
    ## of the hyperbola.

proc focus1*(this: Geom_Hyperbola): gp_Pnt  {.importcpp: "Focus1".}
    ## Returns the first focus of the hyperbola. This focus is on the
    ## positive side of the XAxis of the hyperbola.

proc focus2*(this: Geom_Hyperbola): gp_Pnt  {.importcpp: "Focus2".}
    ## Returns the second focus of the hyperbola. This focus is on the
    ## negative side of the XAxis of the hyperbola.

proc majorRadius*(this: Geom_Hyperbola): Standard_Real  {.importcpp: "MajorRadius".}
    ## Returns the major or minor radius of this hyperbola. The major radius
    ## is also the distance between the center of the hyperbola and the apex
    ## of the main branch (located on the "X Axis" of the hyperbola).

proc minorRadius*(this: Geom_Hyperbola): Standard_Real  {.importcpp: "MinorRadius".}
    ## Returns the major or minor radius of this hyperbola. The minor radius
    ## is also the distance between the center of the hyperbola and the apex
    ## of a conjugate branch (located on the "Y Axis" of the hyperbola).

proc otherBranch*(this: Geom_Hyperbola): gp_Hypr  {.importcpp: "OtherBranch".}
    ## Computes the "other" branch of this hyperbola. This is the symmetrical
    ## branch with respect to the center of this hyperbola. Note: The diagram
    ## given under the class purpose indicates where the "other" branch is
    ## positioned in relation to this branch of the hyperbola.

proc parameter*(this: Geom_Hyperbola): Standard_Real  {.importcpp: "Parameter".}
    ## Returns p = (e * e - 1) * MajorRadius where e is the eccentricity of
    ## the hyperbola. raised if MajorRadius = 0.0

proc d0*(this: Geom_Hyperbola, U: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Returns in P the point of parameter U. P = C + MajorRadius * Cosh (U)
    ## * XDir + MinorRadius * Sinh (U) * YDir where C is the center of the
    ## hyperbola , XDir the XDirection and YDir the YDirection of the
    ## hyperbola's local coordinate system.

proc d1*(this: Geom_Hyperbola, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
    ## Returns the point P of parameter U and the first derivative V1.

proc d2*(this: Geom_Hyperbola, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Returns the point P of parameter U, the first and second derivatives
    ## V1 and V2.

proc d3*(this: Geom_Hyperbola, U: Standard_Real, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## Returns the point P of parameter U, the first second and third
    ## derivatives V1 V2 and V3.

proc dN*(this: Geom_Hyperbola, U: Standard_Real, N: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## The returned vector gives the value of the derivative for the order of
    ## derivation N. Raised if N < 1.

proc transform*(this: var Geom_Hyperbola, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this hyperbola.

proc copy*(this: Geom_Hyperbola): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this hyperbola.

proc dumpJson*(this: Geom_Hyperbola, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Hyperbola): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Hyperbola): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Hyperbola): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Hyperbola.hxx"
