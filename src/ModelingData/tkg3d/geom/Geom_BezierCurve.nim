import geom_types


type
  Geom_BezierCurve* {.header: "Geom_BezierCurve.hxx", importcpp: "Geom_BezierCurve", byref.} = object #of class Geom_BoundedCurve
    ## Describes a rational or non-rational Bezier curve - a non-rational
    ## Bezier curve is defined by a table of poles (also called control
    ## points), - a rational Bezier curve is defined by a table of poles with
    ## varying weights. These data are manipulated by two parallel arrays: -
    ## the poles table, which is an array of gp_Pnt points, and - the weights
    ## table, which is an array of reals. The bounds of these arrays are 1
    ## and "the number of "poles" of the curve. The poles of the curve are
    ## "control points" used to deform the curve. The first pole is the start
    ## point of the curve, and the last pole is the end point of the curve.
    ## The segment that joins the first pole to the second pole is the
    ## tangent to the curve at its start point, and the segment that joins
    ## the last pole to the second-from-last pole is the tangent to the curve
    ## at its end point. It is more difficult to give a geometric
    ## signification to the weights but they are useful for providing the
    ## exact representations of arcs of a circle or ellipse. Moreover, if the
    ## weights of all poles are equal, the curve is polynomial; it is
    ## therefore a non-rational curve. The non-rational curve is a special
    ## and frequently used case. The weights are defined and used only in the
    ## case of a rational curve. The degree of a Bezier curve is equal to the
    ## number of poles, minus 1. It must be greater than or equal to 1.
    ## However, the degree of a Geom_BezierCurve curve is limited to a value
    ## (25) which is defined and controlled by the system. This value is
    ## returned by the function MaxDegree. The parameter range for a Bezier
    ## curve is [ 0, 1 ]. If the first and last control points of the Bezier
    ## curve are the same point then the curve is closed. For example, to
    ## create a closed Bezier curve with four control points, you have to
    ## give the set of control points P1, P2, P3 and P1. The continuity of a
    ## Bezier curve is infinite. It is not possible to build a Bezier curve
    ## with negative weights. We consider that a weight value is zero if it
    ## is less than or equal to gp::Resolution(). We also consider that two
    ## weight values W1 and W2 are equal if: |W2 - W1| <= gp::Resolution().
    ## Warning - When considering the continuity of a closed Bezier curve at
    ## the junction point, remember that a curve of this type is never
    ## periodic. This means that the derivatives for the parameter u = 0 have
    ## no reason to be the same as the derivatives for the parameter u = 1
    ## even if the curve is closed. - The length of a Bezier curve can be
    ## null.

  Handle_Geom_BezierCurve* {.header: "Geom_BezierCurve.hxx", importcpp: "Handle_Geom_BezierCurve".} = handle[Geom_BezierCurve]
  Base_type* {.header: "Geom_BezierCurve.hxx", importcpp: "Geom_BezierCurve::base_type".} = Geom_BoundedCurve


{.push header: "Geom_BezierCurve.hxx".}

proc constructGeom_BezierCurve*(CurvePoles: TColgp_Array1OfPnt): Geom_BezierCurve {.constructor,importcpp: "Geom_BezierCurve::Geom_BezierCurve(@)".}
    ## Creates a non rational Bezier curve with a set of poles CurvePoles.
    ## The weights are defaulted to all being 1. Raises ConstructionError if
    ## the number of poles is greater than MaxDegree + 1 or lower than 2.

proc constructGeom_BezierCurve*(CurvePoles: TColgp_Array1OfPnt, PoleWeights: TColStd_Array1OfReal): Geom_BezierCurve {.constructor,importcpp: "Geom_BezierCurve::Geom_BezierCurve(@)".}
    ## Creates a rational Bezier curve with the set of poles CurvePoles and
    ## the set of weights PoleWeights . If all the weights are identical the
    ## curve is considered as non rational. Raises ConstructionError if the
    ## number of poles is greater than MaxDegree + 1 or lower than 2 or
    ## CurvePoles and CurveWeights have not the same length or one weight
    ## value is lower or equal to Resolution from package gp.

proc increase*(this: var Geom_BezierCurve, Degree: cint)  {.importcpp: "Increase".}
    ## Increases the degree of a bezier curve. Degree is the new degree of
    ## <me>. Raises ConstructionError if Degree is greater than MaxDegree or
    ## lower than 2 or lower than the initial degree of <me>.

proc insertPoleAfter*(this: var Geom_BezierCurve, Index: cint, P: gp_Pnt)  {.importcpp: "InsertPoleAfter".}
    ## Inserts a pole P after the pole of range Index. If the curve <me> is
    ## rational the weight value for the new pole of range Index is 1.0.
    ## raised if Index is not in the range [1, NbPoles]

proc insertPoleAfter*(this: var Geom_BezierCurve, Index: cint, P: gp_Pnt, Weight: cdouble)  {.importcpp: "InsertPoleAfter".}
    ## Inserts a pole with its weight in the set of poles after the pole of
    ## range Index. If the curve was non rational it can become rational if
    ## all the weights are not identical. Raised if Index is not in the range
    ## [1, NbPoles]

proc insertPoleBefore*(this: var Geom_BezierCurve, Index: cint, P: gp_Pnt)  {.importcpp: "InsertPoleBefore".}
    ## Inserts a pole P before the pole of range Index. If the curve <me> is
    ## rational the weight value for the new pole of range Index is 1.0.
    ## Raised if Index is not in the range [1, NbPoles]

proc insertPoleBefore*(this: var Geom_BezierCurve, Index: cint, P: gp_Pnt, Weight: cdouble)  {.importcpp: "InsertPoleBefore".}
    ## Inserts a pole with its weight in the set of poles after the pole of
    ## range Index. If the curve was non rational it can become rational if
    ## all the weights are not identical. Raised if Index is not in the range
    ## [1, NbPoles]

proc removePole*(this: var Geom_BezierCurve, Index: cint)  {.importcpp: "RemovePole".}
    ## Removes the pole of range Index. If the curve was rational it can
    ## become non rational. Raised if Index is not in the range [1, NbPoles]
    ## Raised if Degree is lower than 2.

proc reverse*(this: var Geom_BezierCurve)  {.importcpp: "Reverse".}
    ## Reverses the direction of parametrization of <me> Value (NewU) = Value
    ## (1 - OldU)

proc reversedParameter*(this: Geom_BezierCurve, U: cdouble): cdouble  {.importcpp: "ReversedParameter".}
    ## Returns the parameter on the reversed curve for the point of parameter
    ## U on <me>.

proc segment*(this: var Geom_BezierCurve, U1: cdouble, U2: cdouble)  {.importcpp: "Segment".}
    ## Segments the curve between U1 and U2 which can be out of the bounds of
    ## the curve. The curve is oriented from U1 to U2. The control points are
    ## modified, the first and the last point are not the same but the
    ## parametrization range is [0, 1] else it could not be a Bezier curve.
    ## Warnings : Even if <me> is not closed it can become closed after the
    ## segmentation for example if U1 or U2 are out of the bounds of the
    ## curve <me> or if the curve makes loop. After the segmentation the
    ## length of a curve can be null.

proc setPole*(this: var Geom_BezierCurve, Index: cint, P: gp_Pnt)  {.importcpp: "SetPole".}
    ## Substitutes the pole of range index with P. If the curve <me> is
    ## rational the weight of range Index is not modified. raiseD if Index is
    ## not in the range [1, NbPoles]

proc setPole*(this: var Geom_BezierCurve, Index: cint, P: gp_Pnt, Weight: cdouble)  {.importcpp: "SetPole".}
    ## Substitutes the pole and the weights of range Index. If the curve <me>
    ## is not rational it can become rational if all the weights are not
    ## identical. If the curve was rational it can become non rational if all
    ## the weights are identical. Raised if Index is not in the range [1,
    ## NbPoles] Raised if Weight <= Resolution from package gp

proc setWeight*(this: var Geom_BezierCurve, Index: cint, Weight: cdouble)  {.importcpp: "SetWeight".}
    ## Changes the weight of the pole of range Index. If the curve <me> is
    ## not rational it can become rational if all the weights are not
    ## identical. If the curve was rational it can become non rational if all
    ## the weights are identical. Raised if Index is not in the range [1,
    ## NbPoles] Raised if Weight <= Resolution from package gp

proc isClosed*(this: Geom_BezierCurve): bool  {.importcpp: "IsClosed".}
    ## Returns True if the distance between the first point and the last
    ## point of the curve is lower or equal to the Resolution from package
    ## gp.

proc isCN*(this: Geom_BezierCurve, N: cint): bool  {.importcpp: "IsCN".}
    ## Continuity of the curve, returns True.

proc isPeriodic*(this: Geom_BezierCurve): bool  {.importcpp: "IsPeriodic".}
    ## Returns True if the parametrization of a curve is periodic. (P(u) =
    ## P(u + T) T = constante)

proc isRational*(this: Geom_BezierCurve): bool  {.importcpp: "IsRational".}
    ## Returns false if all the weights are identical. The tolerance
    ## criterion is Resolution from package gp.

proc continuity*(this: Geom_BezierCurve): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## a Bezier curve is CN

proc degree*(this: Geom_BezierCurve): cint  {.importcpp: "Degree".}
    ## Returns the polynomial degree of the curve. it is the number of poles
    ## - 1 point P and derivatives (V1, V2, V3) computation The Bezier Curve
    ## has a Polynomial representation so the parameter U can be out of the
    ## bounds of the curve.

proc d0*(this: Geom_BezierCurve, U: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}

proc d1*(this: Geom_BezierCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}

proc d2*(this: Geom_BezierCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}

proc d3*(this: Geom_BezierCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## For this Bezier curve, computes - the point P of parameter U, or - the
    ## point P and one or more of the following values: - V1, the first
    ## derivative vector, - V2, the second derivative vector, - V3, the third
    ## derivative vector. Note: the parameter U can be outside the bounds of
    ## the curve.

proc dN*(this: Geom_BezierCurve, U: cdouble, N: cint): gp_Vec  {.importcpp: "DN".}
    ## For the point of parameter U of this Bezier curve, computes the vector
    ## corresponding to the Nth derivative. Note: the parameter U can be
    ## outside the bounds of the curve. Exceptions Standard_RangeError if N
    ## is less than 1.

proc startPoint*(this: Geom_BezierCurve): gp_Pnt  {.importcpp: "StartPoint".}
    ## Returns Value (U=0.), it is the first control point of the curve.

proc endPoint*(this: Geom_BezierCurve): gp_Pnt  {.importcpp: "EndPoint".}
    ## Returns Value (U=1.), it is the last control point of the Bezier
    ## curve.

proc firstParameter*(this: Geom_BezierCurve): cdouble  {.importcpp: "FirstParameter".}
    ## Returns the value of the first parameter of this Bezier curve. This is
    ## 0.0, which gives the start point of this Bezier curve

proc lastParameter*(this: Geom_BezierCurve): cdouble  {.importcpp: "LastParameter".}
    ## Returns the value of the last parameter of this Bezier curve. This is
    ## 1.0, which gives the end point of this Bezier curve.

proc nbPoles*(this: Geom_BezierCurve): cint  {.importcpp: "NbPoles".}
    ## Returns the number of poles of this Bezier curve.

proc pole*(this: Geom_BezierCurve, Index: cint): gp_Pnt  {.importcpp: "Pole".}
    ## Returns the pole of range Index. Raised if Index is not in the range
    ## [1, NbPoles]

proc poles*(this: Geom_BezierCurve, P: var TColgp_Array1OfPnt)  {.importcpp: "Poles".}
    ## Returns all the poles of the curve.

proc poles*(this: Geom_BezierCurve): TColgp_Array1OfPnt  {.importcpp: "Poles".}
    ## Returns all the poles of the curve.

proc weight*(this: Geom_BezierCurve, Index: cint): cdouble  {.importcpp: "Weight".}
    ## Returns the weight of range Index. Raised if Index is not in the range
    ## [1, NbPoles]

proc weights*(this: Geom_BezierCurve, W: var TColStd_Array1OfReal)  {.importcpp: "Weights".}
    ## Returns all the weights of the curve.

proc weights*(this: Geom_BezierCurve): ptr TColStd_Array1OfReal  {.importcpp: "Weights".}
    ## Returns all the weights of the curve.

proc transform*(this: var Geom_BezierCurve, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this Bezier curve.

proc maxDegree*(this: var Geom_BezierCurve): cint  {.importcpp: "MaxDegree".}
    ## Returns the value of the maximum polynomial degree of any
    ## Geom_BezierCurve curve. This value is 25.

proc resolution*(this: var Geom_BezierCurve, Tolerance3D: cdouble, UTolerance: var cdouble)  {.importcpp: "Resolution".}
    ## Computes for this Bezier curve the parametric tolerance UTolerance for
    ## a given 3D tolerance Tolerance3D. If f(t) is the equation of this
    ## Bezier curve, UTolerance ensures that: |t1-t0| < UTolerance ===>
    ## |f(t1)-f(t0)| < Tolerance3D

proc copy*(this: Geom_BezierCurve): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this Bezier curve.

proc dumpJson*(this: Geom_BezierCurve, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_BezierCurve): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_BezierCurve): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_BezierCurve): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc init*(this: var Geom_BezierCurve, Poles: handle[TColgp_HArray1OfPnt], Weights: handle[TColStd_HArray1OfReal])  {.importcpp: "Init".}
    ## Set poles to Poles, weights to Weights (not copied). If Weights is
    ## null the curve is non rational. Create the arrays of coefficients.
    ## Poles and Weights are assumed to have the first coefficient 1. Update
    ## rational and closed.

{.pop.}  # header: "Geom_BezierCurve.hxx"
