import geom_types
import ../Standard/standard

#type
#  Handle {.importcpp: "opencascade::Handle", header: "<map>".} [K] = object

{.push header: "Geom_TrimmedCurve.hxx".}

proc constructGeom_TrimmedCurve*(C: Handle[Geom_Curve], U1: cdouble, U2: cdouble, Sense: bool, theAdjustPeriodic: bool): Geom_TrimmedCurve {.constructor,importcpp: "Geom_TrimmedCurve::Geom_TrimmedCurve(@)".}
    ## Constructs a trimmed curve from the basis curve C which is limited
    ## between parameter values U1 and U2. Note: - U1 can be greater or less
    ## than U2; in both cases, the returned curve is oriented from U1 to U2.
    ## - If the basis curve C is periodic, there is an ambiguity because two
    ## parts are available. In this case, the trimmed curve has the same
    ## orientation as the basis curve if Sense is true (default value) or the
    ## opposite orientation if Sense is false. - If the curve is closed but
    ## not periodic, it is not possible to keep the part of the curve which
    ## includes the junction point (except if the junction point is at the
    ## beginning or at the end of the trimmed curve). If you tried to do
    ## this, you could alter the fundamental characteristics of the basis
    ## curve, which are used, for example, to compute the derivatives of the
    ## trimmed curve. The rules for a closed curve are therefore the same as
    ## those for an open curve. Warning: The trimmed curve is built from a
    ## copy of curve C. Therefore, when C is modified, the trimmed curve is
    ## not modified. - If the basis curve is periodic and theAdjustPeriodic
    ## is True, the bounds of the trimmed curve may be different from U1 and
    ## U2 if the parametric origin of the basis curve is within the arc of
    ## the trimmed curve. In this case, the modified parameter will be equal
    ## to U1 or U2 plus or minus the period. When theAdjustPeriodic is False,
    ## parameters U1 and U2 will be the same, without adjustment into the
    ## first period. Exceptions Standard_ConstructionError if: - C is not
    ## periodic and U1 or U2 is outside the bounds of C, or - U1 is equal to
    ## U2.

proc reverse*(this: var Geom_TrimmedCurve)  {.importcpp: "Reverse".}
    ## Changes the orientation of this trimmed curve. As a result: - the
    ## basis curve is reversed, - the start point of the initial curve
    ## becomes the end point of the reversed curve, - the end point of the
    ## initial curve becomes the start point of the reversed curve, - the
    ## first and last parameters are recomputed. If the trimmed curve was
    ## defined by: - a basis curve whose parameter range is [ 0., 1. ], - the
    ## two trim values U1 (first parameter) and U2 (last parameter), the
    ## reversed trimmed curve is defined by: - the reversed basis curve,
    ## whose parameter range is still [ 0., 1. ], - the two trim values 1. -
    ## U2 (first parameter) and 1. - U1 (last parameter).

proc reversedParameter*(this: Geom_TrimmedCurve, U: cdouble): cdouble  {.importcpp: "ReversedParameter".}
    ## Computes the parameter on the reversed curve for the point of
    ## parameter U on this trimmed curve.

proc setTrim*(this: var Geom_TrimmedCurve, U1: cdouble, U2: cdouble, Sense: bool, theAdjustPeriodic: bool)  {.importcpp: "SetTrim".}
    ## Changes this trimmed curve, by redefining the parameter values U1 and
    ## U2 which limit its basis curve. Note: If the basis curve is periodic,
    ## the trimmed curve has the same orientation as the basis curve if Sense
    ## is true (default value) or the opposite orientation if Sense is false.
    ## Warning If the basis curve is periodic and theAdjustPeriodic is True,
    ## the bounds of the trimmed curve may be different from U1 and U2 if the
    ## parametric origin of the basis curve is within the arc of the trimmed
    ## curve. In this case, the modified parameter will be equal to U1 or U2
    ## plus or minus the period. When theAdjustPeriodic is False, parameters
    ## U1 and U2 will be the same, without adjustment into the first period.
    ## Exceptions Standard_ConstructionError if: - the basis curve is not
    ## periodic, and either U1 or U2 are outside the bounds of the basis
    ## curve, or - U1 is equal to U2.

proc basisCurve*(this: Geom_TrimmedCurve): Handle[Geom_Curve]  {.importcpp: "BasisCurve".}
    ## Returns the basis curve. Warning This function does not return a
    ## constant reference. Consequently, any modification of the returned
    ## value directly modifies the trimmed curve.
#[
proc continuity*(this: Geom_TrimmedCurve): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns the continuity of the curve : C0 : only geometric continuity,
    ## C1 : continuity of the first derivative all along the Curve, C2 :
    ## continuity of the second derivative all along the Curve, C3 :
    ## continuity of the third derivative all along the Curve, CN : the order
    ## of continuity is infinite.
]#
proc isCN*(this: Geom_TrimmedCurve, N: cint): bool  {.importcpp: "IsCN".}
    ## Returns true if the degree of continuity of the basis curve of this
    ## trimmed curve is at least N. A trimmed curve is at least "C0"
    ## continuous. Warnings : The continuity of the trimmed curve can be
    ## greater than the continuity of the basis curve because you consider
    ## only a part of the basis curve. Raised if N < 0.
#[
proc endPoint*(this: Geom_TrimmedCurve): gp_Pnt  {.importcpp: "EndPoint".}
    ## Returns the end point of <me>. This point is the evaluation of the
    ## curve for the "LastParameter".
]#
proc firstParameter*(this: Geom_TrimmedCurve): cdouble  {.importcpp: "FirstParameter".}
    ## Returns the value of the first parameter of <me>. The first parameter
    ## is the parameter of the "StartPoint" of the trimmed curve.

proc isClosed*(this: Geom_TrimmedCurve): bool  {.importcpp: "IsClosed".}
    ## Returns True if the distance between the StartPoint and the EndPoint
    ## is lower or equal to Resolution from package gp.

proc isPeriodic*(this: Geom_TrimmedCurve): bool  {.importcpp: "IsPeriodic".}
    ## Always returns FALSE (independently of the type of basis curve).

proc period*(this: Geom_TrimmedCurve): cdouble  {.importcpp: "Period".}
    ## Returns the period of the basis curve of this trimmed curve.
    ## Exceptions Standard_NoSuchObject if the basis curve is not periodic.

proc lastParameter*(this: Geom_TrimmedCurve): cdouble  {.importcpp: "LastParameter".}
    ## Returns the value of the last parameter of <me>. The last parameter is
    ## the parameter of the "EndPoint" of the trimmed curve.
#[
proc startPoint*(this: Geom_TrimmedCurve): gp_Pnt  {.importcpp: "StartPoint".}
    ## Returns the start point of <me>. This point is the evaluation of the
    ## curve from the "FirstParameter". value and derivatives Warnings : The
    ## returned derivatives have the same orientation as the derivatives of
    ## the basis curve even if the trimmed curve has not the same orientation
    ## as the basis curve.

proc d0*(this: Geom_TrimmedCurve, U: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Returns in P the point of parameter U.

proc d1*(this: Geom_TrimmedCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
    ## Raised if the continuity of the curve is not C1.

proc d2*(this: Geom_TrimmedCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Raised if the continuity of the curve is not C2.

proc d3*(this: Geom_TrimmedCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## Raised if the continuity of the curve is not C3.

proc dN*(this: Geom_TrimmedCurve, U: cdouble, N: cint): gp_Vec  {.importcpp: "DN".}
    ## N is the order of derivation. Raised if the continuity of the curve is
    ## not CN. Raised if N < 1. geometric transformations

proc transform*(this: var Geom_TrimmedCurve, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this trimmed curve. Warning The basis
    ## curve is also modified.

proc transformedParameter*(this: Geom_TrimmedCurve, U: cdouble, T: gp_Trsf): cdouble  {.importcpp: "TransformedParameter".}
    ## Returns the parameter on the transformed curve for the transform of
    ## the point of parameter U on <me>.

proc parametricTransformation*(this: Geom_TrimmedCurve, T: gp_Trsf): cdouble  {.importcpp: "ParametricTransformation".}
    ## Returns a coefficient to compute the parameter on the transformed
    ## curve for the transform of the point on <me>.
]#
proc copy*(this: Geom_TrimmedCurve): Handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this trimmed curve.
#[
proc dumpJson*(this: Geom_TrimmedCurve, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream
]#
proc get_type_name*(this: var Geom_TrimmedCurve): cstring  {.importcpp: "get_type_name".}

#proc get_type_descriptor*(this: var Geom_TrimmedCurve): Handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

#proc dynamicType*(this: Geom_TrimmedCurve): Handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_TrimmedCurve.hxx"
