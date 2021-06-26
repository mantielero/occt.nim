import ../gp/gp_types

{.push header: "ElCLib.hxx".}


# Constructors and methods
#[
proc ` new`*(this: var ElCLib, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var ElCLib, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var ElCLib, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var ElCLib, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var ElCLib, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var ElCLib, pointer, pointer)  {.importcpp: "` delete`".}
]#
proc inPeriod*(this: var ElCLib, U: cdouble, UFirst: cdouble, ULast: cdouble): cdouble  {.importcpp: "InPeriod".}
  ## Return a value in the range <UFirst, ULast> by adding or removing the
  ## period <ULast - UFirst> to <U>. ATTENTION!!! It is expected but not
  ## checked that (ULast > UFirst)

proc adjustPeriodic*(this: var ElCLib, UFirst: cdouble, ULast: cdouble, Precision: cdouble, U1: var cdouble, U2: var cdouble)  {.importcpp: "AdjustPeriodic".}
  ## Adjust U1 and U2 in the parametric range UFirst Ulast of a periodic
  ## curve, where ULast - UFirst is its period. To do this, this function:
  ## - sets U1 in the range [ UFirst, ULast ] by adding/removing the period
  ## to/from the value U1, then - sets U2 in the range [ U1, U1 + period ]
  ## by adding/removing the period to/from the value U2. Precision is used
  ## to test the equalities.

proc value*(this: var ElCLib, U: cdouble, L: gp_Lin): gp_Pnt  {.importcpp: "Value".}
  ## For elementary curves (lines, circles and conics) from the gp package,
  ## computes the point of parameter U. The result is either: - a gp_Pnt
  ## point for a curve in 3D space, or - a gp_Pnt2d point for a curve in 2D
  ## space.

proc value*(this: var ElCLib, U: cdouble, C: gp_Circ): gp_Pnt  {.importcpp: "Value".}

proc value*(this: var ElCLib, U: cdouble, E: gp_Elips): gp_Pnt  {.importcpp: "Value".}

proc value*(this: var ElCLib, U: cdouble, H: gp_Hypr): gp_Pnt  {.importcpp: "Value".}

proc value*(this: var ElCLib, U: cdouble, Prb: gp_Parab): gp_Pnt  {.importcpp: "Value".}

proc d1*(this: var ElCLib, U: cdouble, L: gp_Lin, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
  ## For elementary curves (lines, circles and conics) from the gp package,
  ## computes: - the point P of parameter U, and - the first derivative
  ## vector V1 at this point. The results P and V1 are either: - a gp_Pnt
  ## point and a gp_Vec vector, for a curve in 3D space, or - a gp_Pnt2d
  ## point and a gp_Vec2d vector, for a curve in 2D space.

proc d1*(this: var ElCLib, U: cdouble, C: gp_Circ, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}

proc d1*(this: var ElCLib, U: cdouble, E: gp_Elips, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}

proc d1*(this: var ElCLib, U: cdouble, H: gp_Hypr, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}

proc d1*(this: var ElCLib, U: cdouble, Prb: gp_Parab, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}

proc d2*(this: var ElCLib, U: cdouble, C: gp_Circ, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
  ## For elementary curves (circles and conics) from the gp package,
  ## computes: - the point P of parameter U, and - the first and second
  ## derivative vectors V1 and V2 at this point. The results, P, V1 and V2,
  ## are either: - a gp_Pnt point and two gp_Vec vectors, for a curve in 3D
  ## space, or - a gp_Pnt2d point and two gp_Vec2d vectors, for a curve in
  ## 2D space.

proc d2*(this: var ElCLib, U: cdouble, E: gp_Elips, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}

proc d2*(this: var ElCLib, U: cdouble, H: gp_Hypr, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}

proc d2*(this: var ElCLib, U: cdouble, Prb: gp_Parab, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}

proc d3*(this: var ElCLib, U: cdouble, C: gp_Circ, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
  ## For elementary curves (circles, ellipses and hyperbolae) from the gp
  ## package, computes: - the point P of parameter U, and - the first,
  ## second and third derivative vectors V1, V2 and V3 at this point. The
  ## results, P, V1, V2 and V3, are either: - a gp_Pnt point and three
  ## gp_Vec vectors, for a curve in 3D space, or - a gp_Pnt2d point and
  ## three gp_Vec2d vectors, for a curve in 2D space.

proc d3*(this: var ElCLib, U: cdouble, E: gp_Elips, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}

proc d3*(this: var ElCLib, U: cdouble, H: gp_Hypr, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}

proc dN*(this: var ElCLib, U: cdouble, L: gp_Lin, N: cint): gp_Vec  {.importcpp: "DN".}
  ## For elementary curves (lines, circles and conics) from the gp package,
  ## computes the vector corresponding to the Nth derivative at the point
  ## of parameter U. The result is either: - a gp_Vec vector for a curve in
  ## 3D space, or - a gp_Vec2d vector for a curve in 2D space. In the
  ## following functions N is the order of derivation and should be greater
  ## than 0

proc dN*(this: var ElCLib, U: cdouble, C: gp_Circ, N: cint): gp_Vec  {.importcpp: "DN".}

proc dN*(this: var ElCLib, U: cdouble, E: gp_Elips, N: cint): gp_Vec  {.importcpp: "DN".}

proc dN*(this: var ElCLib, U: cdouble, H: gp_Hypr, N: cint): gp_Vec  {.importcpp: "DN".}

proc dN*(this: var ElCLib, U: cdouble, Prb: gp_Parab, N: cint): gp_Vec  {.importcpp: "DN".}

proc value*(this: var ElCLib, U: cdouble, L: gp_Lin2d): gp_Pnt2d  {.importcpp: "Value".}

proc value*(this: var ElCLib, U: cdouble, C: gp_Circ2d): gp_Pnt2d  {.importcpp: "Value".}

proc value*(this: var ElCLib, U: cdouble, E: gp_Elips2d): gp_Pnt2d  {.importcpp: "Value".}

proc value*(this: var ElCLib, U: cdouble, H: gp_Hypr2d): gp_Pnt2d  {.importcpp: "Value".}

proc value*(this: var ElCLib, U: cdouble, Prb: gp_Parab2d): gp_Pnt2d  {.importcpp: "Value".}

proc d1*(this: var ElCLib, U: cdouble, L: gp_Lin2d, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "D1".}

proc d1*(this: var ElCLib, U: cdouble, C: gp_Circ2d, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "D1".}

proc d1*(this: var ElCLib, U: cdouble, E: gp_Elips2d, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "D1".}

proc d1*(this: var ElCLib, U: cdouble, H: gp_Hypr2d, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "D1".}

proc d1*(this: var ElCLib, U: cdouble, Prb: gp_Parab2d, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "D1".}

proc d2*(this: var ElCLib, U: cdouble, C: gp_Circ2d, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d)  {.importcpp: "D2".}

proc d2*(this: var ElCLib, U: cdouble, E: gp_Elips2d, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d)  {.importcpp: "D2".}

proc d2*(this: var ElCLib, U: cdouble, H: gp_Hypr2d, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d)  {.importcpp: "D2".}

proc d2*(this: var ElCLib, U: cdouble, Prb: gp_Parab2d, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d)  {.importcpp: "D2".}

proc d3*(this: var ElCLib, U: cdouble, C: gp_Circ2d, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d, V3: var gp_Vec2d)  {.importcpp: "D3".}

proc d3*(this: var ElCLib, U: cdouble, E: gp_Elips2d, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d, V3: var gp_Vec2d)  {.importcpp: "D3".}

proc d3*(this: var ElCLib, U: cdouble, H: gp_Hypr2d, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d, V3: var gp_Vec2d)  {.importcpp: "D3".}
  ## In the following functions N is the order of derivation and should be
  ## greater than 0

proc dN*(this: var ElCLib, U: cdouble, L: gp_Lin2d, N: cint): gp_Vec2d  {.importcpp: "DN".}

proc dN*(this: var ElCLib, U: cdouble, C: gp_Circ2d, N: cint): gp_Vec2d  {.importcpp: "DN".}

proc dN*(this: var ElCLib, U: cdouble, E: gp_Elips2d, N: cint): gp_Vec2d  {.importcpp: "DN".}

proc dN*(this: var ElCLib, U: cdouble, H: gp_Hypr2d, N: cint): gp_Vec2d  {.importcpp: "DN".}

proc dN*(this: var ElCLib, U: cdouble, Prb: gp_Parab2d, N: cint): gp_Vec2d  {.importcpp: "DN".}

proc lineValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax1): gp_Pnt  {.importcpp: "LineValue".}
  ## Curve evaluation The following basis functions compute the derivatives
  ## on elementary curves defined by their geometric characteristics. These
  ## functions can be called without constructing a conic from package gp.
  ## They are called by the previous functions. Example : A circle is
  ## defined by its position and its radius.

proc circleValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Radius: cdouble): gp_Pnt  {.importcpp: "CircleValue".}

proc ellipseValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble): gp_Pnt  {.importcpp: "EllipseValue".}

proc hyperbolaValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble): gp_Pnt  {.importcpp: "HyperbolaValue".}

proc parabolaValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Focal: cdouble): gp_Pnt  {.importcpp: "ParabolaValue".}

proc lineD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax1, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "LineD1".}

proc circleD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Radius: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "CircleD1".}

proc ellipseD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "EllipseD1".}

proc hyperbolaD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "HyperbolaD1".}

proc parabolaD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Focal: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "ParabolaD1".}

proc circleD2*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Radius: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "CircleD2".}

proc ellipseD2*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "EllipseD2".}

proc hyperbolaD2*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "HyperbolaD2".}

proc parabolaD2*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Focal: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "ParabolaD2".}

proc circleD3*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Radius: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "CircleD3".}

proc ellipseD3*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "EllipseD3".}

proc hyperbolaD3*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "HyperbolaD3".}

proc lineDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax1, N: cint): gp_Vec  {.importcpp: "LineDN".}
  ## In the following functions N is the order of derivation and should be
  ## greater than 0

proc circleDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Radius: cdouble, N: cint): gp_Vec  {.importcpp: "CircleDN".}

proc ellipseDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, N: cint): gp_Vec  {.importcpp: "EllipseDN".}

proc hyperbolaDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, N: cint): gp_Vec  {.importcpp: "HyperbolaDN".}

proc parabolaDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax2, Focal: cdouble, N: cint): gp_Vec  {.importcpp: "ParabolaDN".}

proc lineValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax2d): gp_Pnt2d  {.importcpp: "LineValue".}

proc circleValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Radius: cdouble): gp_Pnt2d  {.importcpp: "CircleValue".}

proc ellipseValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble): gp_Pnt2d  {.importcpp: "EllipseValue".}

proc hyperbolaValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble): gp_Pnt2d  {.importcpp: "HyperbolaValue".}

proc parabolaValue*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Focal: cdouble): gp_Pnt2d  {.importcpp: "ParabolaValue".}

proc lineD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax2d, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "LineD1".}

proc circleD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Radius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "CircleD1".}

proc ellipseD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "EllipseD1".}

proc hyperbolaD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "HyperbolaD1".}

proc parabolaD1*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Focal: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d)  {.importcpp: "ParabolaD1".}

proc circleD2*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Radius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d)  {.importcpp: "CircleD2".}

proc ellipseD2*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d)  {.importcpp: "EllipseD2".}

proc hyperbolaD2*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d)  {.importcpp: "HyperbolaD2".}

proc parabolaD2*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Focal: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d)  {.importcpp: "ParabolaD2".}

proc circleD3*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Radius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d, V3: var gp_Vec2d)  {.importcpp: "CircleD3".}

proc ellipseD3*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d, V3: var gp_Vec2d)  {.importcpp: "EllipseD3".}

proc hyperbolaD3*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, P: var gp_Pnt2d, V1: var gp_Vec2d, V2: var gp_Vec2d, V3: var gp_Vec2d)  {.importcpp: "HyperbolaD3".}
  ## In the following functions N is the order of derivation and should be
  ## greater than 0

proc lineDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax2d, N: cint): gp_Vec2d  {.importcpp: "LineDN".}

proc circleDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Radius: cdouble, N: cint): gp_Vec2d  {.importcpp: "CircleDN".}

proc ellipseDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, N: cint): gp_Vec2d  {.importcpp: "EllipseDN".}

proc hyperbolaDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, N: cint): gp_Vec2d  {.importcpp: "HyperbolaDN".}

proc parabolaDN*(this: var ElCLib, U: cdouble, Pos: gp_Ax22d, Focal: cdouble, N: cint): gp_Vec2d  {.importcpp: "ParabolaDN".}
  ## The following functions compute the parametric value corresponding to
  ## a given point on a elementary curve. The point should be on the curve.

proc parameter*(this: var ElCLib, L: gp_Lin, P: gp_Pnt): cdouble  {.importcpp: "Parameter".}
  ## Computes the parameter value of the point P on the given curve. Note:
  ## In its local coordinate system, the parametric equation of the curve
  ## is given by the following: - for the line L: P(U) = Po + U*Vo where Po
  ## is the origin and Vo the unit vector of its positioning axis. - for
  ## the circle C: X(U) = Radius*Cos(U), Y(U) = Radius*Sin(U) - for the
  ## ellipse E: X(U) = MajorRadius*Cos(U). Y(U) = MinorRadius*Sin(U) - for
  ## the hyperbola H: X(U) = MajorRadius*Ch(U), Y(U) = MinorRadius*Sh(U) -
  ## for the parabola Prb: X(U) = U**2 / (2*p) Y(U) = U where p is the
  ## distance between the focus and the directrix. Warning The point P must
  ## be on the curve. These functions are not protected, however, and if
  ## point P is not on the curve, an exception may be raised.

proc parameter*(this: var ElCLib, L: gp_Lin2d, P: gp_Pnt2d): cdouble  {.importcpp: "Parameter".}
  ## parametrization P (U) = L.Location() + U * L.Direction()

proc parameter*(this: var ElCLib, C: gp_Circ, P: gp_Pnt): cdouble  {.importcpp: "Parameter".}

proc parameter*(this: var ElCLib, C: gp_Circ2d, P: gp_Pnt2d): cdouble  {.importcpp: "Parameter".}
  ## parametrization In the local coordinate system of the circle X (U) =
  ## Radius * Cos (U) Y (U) = Radius * Sin (U)

proc parameter*(this: var ElCLib, E: gp_Elips, P: gp_Pnt): cdouble  {.importcpp: "Parameter".}

proc parameter*(this: var ElCLib, E: gp_Elips2d, P: gp_Pnt2d): cdouble  {.importcpp: "Parameter".}
  ## parametrization In the local coordinate system of the Ellipse X (U) =
  ## MajorRadius * Cos (U) Y (U) = MinorRadius * Sin (U)

proc parameter*(this: var ElCLib, H: gp_Hypr, P: gp_Pnt): cdouble  {.importcpp: "Parameter".}

proc parameter*(this: var ElCLib, H: gp_Hypr2d, P: gp_Pnt2d): cdouble  {.importcpp: "Parameter".}
  ## parametrization In the local coordinate system of the Hyperbola X (U)
  ## = MajorRadius * Ch (U) Y (U) = MinorRadius * Sh (U)

proc parameter*(this: var ElCLib, Prb: gp_Parab, P: gp_Pnt): cdouble  {.importcpp: "Parameter".}

proc parameter*(this: var ElCLib, Prb: gp_Parab2d, P: gp_Pnt2d): cdouble  {.importcpp: "Parameter".}
  ## parametrization In the local coordinate system of the parabola Y**2 =
  ## (2*P) * X where P is the distance between the focus and the directrix.

proc lineParameter*(this: var ElCLib, Pos: gp_Ax1, P: gp_Pnt): cdouble  {.importcpp: "LineParameter".}

proc lineParameter*(this: var ElCLib, Pos: gp_Ax2d, P: gp_Pnt2d): cdouble  {.importcpp: "LineParameter".}
  ## parametrization P (U) = L.Location() + U * L.Direction()

proc circleParameter*(this: var ElCLib, Pos: gp_Ax2, P: gp_Pnt): cdouble  {.importcpp: "CircleParameter".}

proc circleParameter*(this: var ElCLib, Pos: gp_Ax22d, P: gp_Pnt2d): cdouble  {.importcpp: "CircleParameter".}
  ## Pos is the Axis of the Circle parametrization In the local coordinate
  ## system of the circle X (U) = Radius * Cos (U) Y (U) = Radius * Sin (U)

proc ellipseParameter*(this: var ElCLib, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, P: gp_Pnt): cdouble  {.importcpp: "EllipseParameter".}

proc ellipseParameter*(this: var ElCLib, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, P: gp_Pnt2d): cdouble  {.importcpp: "EllipseParameter".}
  ## Pos is the Axis of the Ellipse parametrization In the local coordinate
  ## system of the Ellipse X (U) = MajorRadius * Cos (U) Y (U) =
  ## MinorRadius * Sin (U)

proc hyperbolaParameter*(this: var ElCLib, Pos: gp_Ax2, MajorRadius: cdouble, MinorRadius: cdouble, P: gp_Pnt): cdouble  {.importcpp: "HyperbolaParameter".}

proc hyperbolaParameter*(this: var ElCLib, Pos: gp_Ax22d, MajorRadius: cdouble, MinorRadius: cdouble, P: gp_Pnt2d): cdouble  {.importcpp: "HyperbolaParameter".}
  ## Pos is the Axis of the Hyperbola parametrization In the local
  ## coordinate system of the Hyperbola X (U) = MajorRadius * Ch (U) Y (U)
  ## = MinorRadius * Sh (U)

proc parabolaParameter*(this: var ElCLib, Pos: gp_Ax2, P: gp_Pnt): cdouble  {.importcpp: "ParabolaParameter".}

proc parabolaParameter*(this: var ElCLib, Pos: gp_Ax22d, P: gp_Pnt2d): cdouble  {.importcpp: "ParabolaParameter".}
  ## Pos is the mirror axis of the parabola parametrization In the local
  ## coordinate system of the parabola Y**2 = (2*P) * X where P is the
  ## distance between the focus and the directrix. The following functions
  ## build a 3d curve from a 2d curve at a given position defined with an
  ## Ax2.

proc to3d*(this: var ElCLib, Pos: gp_Ax2, P: gp_Pnt2d): gp_Pnt  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, V: gp_Vec2d): gp_Vec  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, V: gp_Dir2d): gp_Dir  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, A: gp_Ax2d): gp_Ax1  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, A: gp_Ax22d): gp_Ax2  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, L: gp_Lin2d): gp_Lin  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, C: gp_Circ2d): gp_Circ  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, E: gp_Elips2d): gp_Elips  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, H: gp_Hypr2d): gp_Hypr  {.importcpp: "To3d".}

proc to3d*(this: var ElCLib, Pos: gp_Ax2, Prb: gp_Parab2d): gp_Parab  {.importcpp: "To3d".}
  ## These functions build a 3D geometric entity from a 2D geometric
  ## entity. The "X Axis" and the "Y Axis" of the global coordinate system
  ## (i.e. 2D space) are lined up respectively with the "X Axis" and "Y
  ## Axis" of the 3D coordinate system, Pos.

{.pop.} # header: "ElCLib.hxx
