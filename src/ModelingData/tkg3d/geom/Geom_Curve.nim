import geom_types


type
  Handle_Geom_Curve* {.header: "Geom_Curve.hxx", importcpp: "Handle_Geom_Curve".} = handle[Geom_Curve]
  Base_type* {.header: "Geom_Curve.hxx", importcpp: "Geom_Curve::base_type".} = Geom_Geometry


{.push header: "Geom_Curve.hxx".}

proc reverse*(this: var Geom_Curve)  {.importcpp: "Reverse".}
    ## Changes the direction of parametrization of <me>. The "FirstParameter"
    ## and the "LastParameter" are not changed but the orientation of the
    ## curve is modified. If the curve is bounded the StartPoint of the
    ## initial curve becomes the EndPoint of the reversed curve and the
    ## EndPoint of the initial curve becomes the StartPoint of the reversed
    ## curve.

proc reversedParameter*(this: Geom_Curve, U: cdouble): cdouble  {.importcpp: "ReversedParameter".}
    ## Returns the parameter on the reversed curve for the point of parameter
    ## U on <me>.

proc transformedParameter*(this: Geom_Curve, U: cdouble, T: gp_Trsf): cdouble  {.importcpp: "TransformedParameter".}
    ## Returns the parameter on the transformed curve for the transform of
    ## the point of parameter U on <me>.

proc parametricTransformation*(this: Geom_Curve, T: gp_Trsf): cdouble  {.importcpp: "ParametricTransformation".}
    ## Returns a coefficient to compute the parameter on the transformed
    ## curve for the transform of the point on <me>.

proc reversed*(this: Geom_Curve): handle[Geom_Curve]  {.importcpp: "Reversed".}
    ## Returns a copy of <me> reversed.

proc firstParameter*(this: Geom_Curve): cdouble  {.importcpp: "FirstParameter".}
    ## Returns the value of the first parameter. Warnings : It can be
    ## RealFirst from package Standard if the curve is infinite

proc lastParameter*(this: Geom_Curve): cdouble  {.importcpp: "LastParameter".}
    ## Returns the value of the last parameter. Warnings : It can be RealLast
    ## from package Standard if the curve is infinite

proc isClosed*(this: Geom_Curve): bool  {.importcpp: "IsClosed".}
    ## Returns true if the curve is closed. Some curves such as circle are
    ## always closed, others such as line are never closed (by definition).
    ## Some Curves such as OffsetCurve can be closed or not. These curves are
    ## considered as closed if the distance between the first point and the
    ## last point of the curve is lower or equal to the Resolution from
    ## package gp wich is a fixed criterion independant of the application.

proc isPeriodic*(this: Geom_Curve): bool  {.importcpp: "IsPeriodic".}
    ## Is the parametrization of the curve periodic ? It is possible only if
    ## the curve is closed and if the following relation is satisfied : for
    ## each parametric value U the distance between the point P(u) and the
    ## point P (u + T) is lower or equal to Resolution from package gp, T is
    ## the period and must be a constant. There are three possibilities : .
    ## the curve is never periodic by definition (SegmentLine) . the curve is
    ## always periodic by definition (Circle) . the curve can be defined as
    ## periodic (BSpline). In this case a function SetPeriodic allows you to
    ## give the shape of the curve. The general rule for this case is : if a
    ## curve can be periodic or not the default periodicity set is non
    ## periodic and you have to turn (explicitly) the curve into a periodic
    ## curve if you want the curve to be periodic.

proc period*(this: Geom_Curve): cdouble  {.importcpp: "Period".}
    ## Returns the period of this curve. Exceptions Standard_NoSuchObject if
    ## this curve is not periodic.

proc continuity*(this: Geom_Curve): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## It is the global continuity of the curve C0 : only geometric
    ## continuity, C1 : continuity of the first derivative all along the
    ## Curve, C2 : continuity of the second derivative all along the Curve,
    ## C3 : continuity of the third derivative all along the Curve, G1 :
    ## tangency continuity all along the Curve, G2 : curvature continuity all
    ## along the Curve, CN : the order of continuity is infinite.

proc isCN*(this: Geom_Curve, N: cint): bool  {.importcpp: "IsCN".}
    ## Returns true if the degree of continuity of this curve is at least N.
    ## Exceptions - Standard_RangeError if N is less than 0.

proc d0*(this: Geom_Curve, U: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Returns in P the point of parameter U. If the curve is periodic then
    ## the returned point is P(U) with U = Ustart + (U - Uend) where Ustart
    ## and Uend are the parametric bounds of the curve.

proc d1*(this: Geom_Curve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
    ## Returns the point P of parameter U and the first derivative V1. Raised
    ## if the continuity of the curve is not C1.

proc d2*(this: Geom_Curve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Returns the point P of parameter U, the first and second derivatives
    ## V1 and V2. Raised if the continuity of the curve is not C2.

proc d3*(this: Geom_Curve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## Returns the point P of parameter U, the first, the second and the
    ## third derivative. Raised if the continuity of the curve is not C3.

proc dN*(this: Geom_Curve, U: cdouble, N: cint): gp_Vec  {.importcpp: "DN".}
    ## The returned vector gives the value of the derivative for the order of
    ## derivation N. Raised if the continuity of the curve is not CN.

proc value*(this: Geom_Curve, U: cdouble): gp_Pnt  {.importcpp: "Value".}
    ## Computes the point of parameter U on <me>. If the curve is periodic
    ## then the returned point is P(U) with U = Ustart + (U - Uend) where
    ## Ustart and Uend are the parametric bounds of the curve. it is
    ## implemented with D0.

proc dumpJson*(this: Geom_Curve, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Curve): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Curve): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Curve): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Curve.hxx"
