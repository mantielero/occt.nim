import geom_types


type
  Geom_BezierSurface* {.header: "Geom_BezierSurface.hxx", importcpp: "Geom_BezierSurface", byref.} = object #of class Geom_BoundedSurface
    ## Describes a rational or non-rational Bezier surface. - A non-rational
    ## Bezier surface is defined by a table of poles (also known as control
    ## points). - A rational Bezier surface is defined by a table of poles
    ## with varying associated weights. This data is manipulated using two
    ## associative 2D arrays: - the poles table, which is a 2D array of
    ## gp_Pnt, and - the weights table, which is a 2D array of reals. The
    ## bounds of these arrays are: - 1 and NbUPoles for the row bounds, where
    ## NbUPoles is the number of poles of the surface in the u parametric
    ## direction, and - 1 and NbVPoles for the column bounds, where NbVPoles
    ## is the number of poles of the surface in the v parametric direction.
    ## The poles of the surface, the "control points", are the points used to
    ## shape and reshape the surface. They comprise a rectangular network of
    ## points: - The points (1, 1), (NbUPoles, 1), (1, NbVPoles) and
    ## (NbUPoles, NbVPoles) are the four parametric "corners" of the surface.
    ## - The first column of poles and the last column of poles define two
    ## Bezier curves which delimit the surface in the v parametric direction.
    ## These are the v isoparametric curves corresponding to values 0 and 1
    ## of the v parameter. - The first row of poles and the last row of poles
    ## define two Bezier curves which delimit the surface in the u parametric
    ## direction. These are the u isoparametric curves corresponding to
    ## values 0 and 1 of the u parameter. It is more difficult to define a
    ## geometrical significance for the weights. However they are useful for
    ## representing a quadric surface precisely. Moreover, if the weights of
    ## all the poles are equal, the surface has a polynomial equation, and
    ## hence is a "non-rational surface". The non-rational surface is a
    ## special, but frequently used, case, where all poles have identical
    ## weights. The weights are defined and used only in the case of a
    ## rational surface. This rational characteristic is defined in each
    ## parametric direction. Hence, a surface can be rational in the u
    ## parametric direction, and non-rational in the v parametric direction.
    ## Likewise, the degree of a surface is defined in each parametric
    ## direction. The degree of a Bezier surface in a given parametric
    ## direction is equal to the number of poles of the surface in that
    ## parametric direction, minus 1. This must be greater than or equal to
    ## 1. However, the degree for a Geom_BezierSurface is limited to a value
    ## of (25) which is defined and controlled by the system. This value is
    ## returned by the function MaxDegree. The parameter range for a Bezier
    ## surface is [ 0, 1 ] in the two parametric directions. A Bezier surface
    ## can also be closed, or open, in each parametric direction. If the
    ## first row of poles is identical to the last row of poles, the surface
    ## is closed in the u parametric direction. If the first column of poles
    ## is identical to the last column of poles, the surface is closed in the
    ## v parametric direction. The continuity of a Bezier surface is infinite
    ## in the u parametric direction and the in v parametric direction. Note:
    ## It is not possible to build a Bezier surface with negative weights.
    ## Any weight value that is less than, or equal to, gp::Resolution() is
    ## considered to be zero. Two weight values, W1 and W2, are considered
    ## equal if: |W2-W1| <= gp::Resolution()

  Handle_Geom_BezierSurface* {.header: "Geom_BezierSurface.hxx", importcpp: "Handle_Geom_BezierSurface".} = handle[Geom_BezierSurface]
  Base_type* {.header: "Geom_BezierSurface.hxx", importcpp: "Geom_BezierSurface::base_type".} = Geom_BoundedSurface


{.push header: "Geom_BezierSurface.hxx".}

proc constructGeom_BezierSurface*(SurfacePoles: TColgp_Array2OfPnt): Geom_BezierSurface {.constructor,importcpp: "Geom_BezierSurface::Geom_BezierSurface(@)".}
    ## Creates a non-rational Bezier surface with a set of poles. Control
    ## points representation : SPoles(Uorigin,Vorigin)
    ## ...................SPoles(Uorigin,Vend) . . . . SPoles(Uend, Vorigin)
    ## .....................SPoles(Uend, Vend) For the double array the row
    ## indice corresponds to the parametric U direction and the columns
    ## indice corresponds to the parametric V direction. The weights are
    ## defaulted to all being 1.

proc constructGeom_BezierSurface*(SurfacePoles: TColgp_Array2OfPnt, PoleWeights: TColStd_Array2OfReal): Geom_BezierSurface {.constructor,importcpp: "Geom_BezierSurface::Geom_BezierSurface(@)".}
    ## ---Purpose Creates a rational Bezier surface with a set of poles and a
    ## set of weights. For the double array the row indice corresponds to the
    ## parametric U direction and the columns indice corresponds to the
    ## parametric V direction. If all the weights are identical the surface
    ## is considered as non-rational (the tolerance criterion is Resolution
    ## from package gp).

proc constructGeom_BezierSurface*(SurfacePoles: handle[TColgp_HArray2OfPnt], PoleWeights: handle[TColStd_HArray2OfReal], IsURational: Standard_Boolean, IsVRational: Standard_Boolean): Geom_BezierSurface {.constructor,importcpp: "Geom_BezierSurface::Geom_BezierSurface(@)".}

proc exchangeUV*(this: var Geom_BezierSurface)  {.importcpp: "ExchangeUV".}
    ## Exchanges the direction U and V on a Bezier surface As a consequence:
    ## - the poles and weights tables are transposed, - degrees, rational
    ## characteristics and so on are exchanged between the two parametric
    ## directions, and - the orientation of the surface is reversed.

proc increase*(this: var Geom_BezierSurface, UDeg: Standard_Integer, VDeg: Standard_Integer)  {.importcpp: "Increase".}
    ## Increases the degree of this Bezier surface in the two parametric
    ## directions.

proc insertPoleColAfter*(this: var Geom_BezierSurface, VIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt)  {.importcpp: "InsertPoleColAfter".}
    ## Inserts a column of poles. If the surface is rational the weights
    ## values associated with CPoles are equal defaulted to 1.

proc insertPoleColAfter*(this: var Geom_BezierSurface, VIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "InsertPoleColAfter".}
    ## Inserts a column of poles and weights. If the surface was non-rational
    ## it can become rational.

proc insertPoleColBefore*(this: var Geom_BezierSurface, VIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt)  {.importcpp: "InsertPoleColBefore".}
    ## Inserts a column of poles. If the surface is rational the weights
    ## values associated with CPoles are equal defaulted to 1.

proc insertPoleColBefore*(this: var Geom_BezierSurface, VIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "InsertPoleColBefore".}
    ## Inserts a column of poles and weights. If the surface was non-rational
    ## it can become rational.

proc insertPoleRowAfter*(this: var Geom_BezierSurface, UIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt)  {.importcpp: "InsertPoleRowAfter".}
    ## Inserts a row of poles. If the surface is rational the weights values
    ## associated with CPoles are equal defaulted to 1.

proc insertPoleRowAfter*(this: var Geom_BezierSurface, UIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "InsertPoleRowAfter".}
    ## Inserts a row of poles and weights. If the surface was non-rational it
    ## can become rational.

proc insertPoleRowBefore*(this: var Geom_BezierSurface, UIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt)  {.importcpp: "InsertPoleRowBefore".}
    ## Inserts a row of poles. If the surface is rational the weights values
    ## associated with CPoles are equal defaulted to 1.

proc insertPoleRowBefore*(this: var Geom_BezierSurface, UIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "InsertPoleRowBefore".}
    ## Inserts a row of poles and weights. If the surface was non-rational it
    ## can become rational.

proc removePoleCol*(this: var Geom_BezierSurface, VIndex: Standard_Integer)  {.importcpp: "RemovePoleCol".}
    ## Removes a column of poles. If the surface was rational it can become
    ## non-rational.

proc removePoleRow*(this: var Geom_BezierSurface, UIndex: Standard_Integer)  {.importcpp: "RemovePoleRow".}
    ## Removes a row of poles. If the surface was rational it can become non-
    ## rational.

proc segment*(this: var Geom_BezierSurface, U1: Standard_Real, U2: Standard_Real, V1: Standard_Real, V2: Standard_Real)  {.importcpp: "Segment".}
    ## Modifies this Bezier surface by segmenting it between U1 and U2 in the
    ## u parametric direction, and between V1 and V2 in the v parametric
    ## direction. U1, U2, V1, and V2 can be outside the bounds of this
    ## surface. - U1 and U2 isoparametric Bezier curves, segmented between V1
    ## and V2, become the two bounds of the surface in the v parametric
    ## direction (0. and 1. u isoparametric curves). - V1 and V2
    ## isoparametric Bezier curves, segmented between U1 and U2, become the
    ## two bounds of the surface in the u parametric direction (0. and 1. v
    ## isoparametric curves). The poles and weights tables are modified, but
    ## the degree of this surface in the u and v parametric directions does
    ## not change. U1 can be greater than U2, and V1 can be greater than V2.
    ## In these cases, the corresponding parametric direction is inverted.
    ## The orientation of the surface is inverted if one (and only one)
    ## parametric direction is inverted.

proc setPole*(this: var Geom_BezierSurface, UIndex: Standard_Integer, VIndex: Standard_Integer, P: gp_Pnt)  {.importcpp: "SetPole".}
    ## Modifies a pole value. If the surface is rational the weight of range
    ## (UIndex, VIndex) is not modified.

proc setPole*(this: var Geom_BezierSurface, UIndex: Standard_Integer, VIndex: Standard_Integer, P: gp_Pnt, Weight: Standard_Real)  {.importcpp: "SetPole".}
    ## Substitutes the pole and the weight of range UIndex, VIndex. If the
    ## surface <me> is not rational it can become rational. if the surface
    ## was rational it can become non-rational.

proc setPoleCol*(this: var Geom_BezierSurface, VIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt)  {.importcpp: "SetPoleCol".}
    ## Modifies a column of poles. The length of CPoles can be lower but not
    ## greater than NbUPoles so you can modify just a part of the column.
    ## Raised if VIndex < 1 or VIndex > NbVPoles

proc setPoleCol*(this: var Geom_BezierSurface, VIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "SetPoleCol".}
    ## Modifies a column of poles. If the surface was rational it can become
    ## non-rational If the surface was non-rational it can become rational.
    ## The length of CPoles can be lower but not greater than NbUPoles so you
    ## can modify just a part of the column. Raised if VIndex < 1 or VIndex >
    ## NbVPoles

proc setPoleRow*(this: var Geom_BezierSurface, UIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt)  {.importcpp: "SetPoleRow".}
    ## Modifies a row of poles. The length of CPoles can be lower but not
    ## greater than NbVPoles so you can modify just a part of the row. Raised
    ## if UIndex < 1 or UIndex > NbUPoles

proc setPoleRow*(this: var Geom_BezierSurface, UIndex: Standard_Integer, CPoles: TColgp_Array1OfPnt, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "SetPoleRow".}
    ## Modifies a row of poles and weights. If the surface was rational it
    ## can become non-rational. If the surface was non-rational it can become
    ## rational. The length of CPoles can be lower but not greater than
    ## NbVPoles so you can modify just a part of the row. Raised if UIndex <
    ## 1 or UIndex > NbUPoles

proc setWeight*(this: var Geom_BezierSurface, UIndex: Standard_Integer, VIndex: Standard_Integer, Weight: Standard_Real)  {.importcpp: "SetWeight".}
    ## Modifies the weight of the pole of range UIndex, VIndex. If the
    ## surface was non-rational it can become rational. If the surface was
    ## rational it can become non-rational.

proc setWeightCol*(this: var Geom_BezierSurface, VIndex: Standard_Integer, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "SetWeightCol".}
    ## Modifies a column of weights. If the surface was rational it can
    ## become non-rational. If the surface was non-rational it can become
    ## rational. The length of CPoleWeights can be lower but not greater than
    ## NbUPoles. Raised if VIndex < 1 or VIndex > NbVPoles

proc setWeightRow*(this: var Geom_BezierSurface, UIndex: Standard_Integer, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "SetWeightRow".}
    ## Modifies a row of weights. If the surface was rational it can become
    ## non-rational. If the surface was non-rational it can become rational.
    ## The length of CPoleWeights can be lower but not greater than NbVPoles.
    ## Raised if UIndex < 1 or UIndex > NbUPoles

proc uReverse*(this: var Geom_BezierSurface)  {.importcpp: "UReverse".}
    ## Changes the orientation of this Bezier surface in the u parametric
    ## direction. The bounds of the surface are not changed, but the given
    ## parametric direction is reversed. Hence, the orientation of the
    ## surface is reversed.

proc uReversedParameter*(this: Geom_BezierSurface, U: Standard_Real): Standard_Real  {.importcpp: "UReversedParameter".}
    ## Computes the u (or v) parameter on the modified surface, produced by
    ## reversing its u (or v) parametric direction, for any point of u
    ## parameter U (or of v parameter V) on this Bezier surface. In the case
    ## of a Bezier surface, these functions return respectively: - 1.-U, or
    ## 1.-V.

proc vReverse*(this: var Geom_BezierSurface)  {.importcpp: "VReverse".}
    ## Changes the orientation of this Bezier surface in the v parametric
    ## direction. The bounds of the surface are not changed, but the given
    ## parametric direction is reversed. Hence, the orientation of the
    ## surface is reversed.

proc vReversedParameter*(this: Geom_BezierSurface, V: Standard_Real): Standard_Real  {.importcpp: "VReversedParameter".}
    ## Computes the u (or v) parameter on the modified surface, produced by
    ## reversing its u (or v) parametric direction, for any point of u
    ## parameter U (or of v parameter V) on this Bezier surface. In the case
    ## of a Bezier surface, these functions return respectively: - 1.-U, or
    ## 1.-V.

proc bounds*(this: Geom_BezierSurface, U1: var Standard_Real, U2: var Standard_Real, V1: var Standard_Real, V2: var Standard_Real)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds U1, U2, V1 and V2 of this Bezier
    ## surface. In the case of a Bezier surface, this function returns U1 =
    ## 0, V1 = 0, U2 = 1, V2 = 1.

proc continuity*(this: Geom_BezierSurface): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns the continuity of the surface CN : the order of continuity is
    ## infinite.

proc d0*(this: Geom_BezierSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt)  {.importcpp: "D0".}

proc d1*(this: Geom_BezierSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}

proc d2*(this: Geom_BezierSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}

proc d3*(this: Geom_BezierSurface, U: Standard_Real, V: Standard_Real, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Computes P, the point of parameters (U, V) of this Bezier surface, and
    ## - one or more of the following sets of vectors: - D1U and D1V, the
    ## first derivative vectors at this point, - D2U, D2V and D2UV, the
    ## second derivative vectors at this point, - D3U, D3V, D3UUV and D3UVV,
    ## the third derivative vectors at this point. Note: The parameters U and
    ## V can be outside the bounds of the surface.

proc dN*(this: Geom_BezierSurface, U: Standard_Real, V: Standard_Real, Nu: Standard_Integer, Nv: Standard_Integer): gp_Vec  {.importcpp: "DN".}
    ## Computes the derivative of order Nu in the u parametric direction, and
    ## Nv in the v parametric direction, at the point of parameters (U, V) of
    ## this Bezier surface. Note: The parameters U and V can be outside the
    ## bounds of the surface. Exceptions Standard_RangeError if: - Nu + Nv is
    ## less than 1, or Nu or Nv is negative.

proc nbUPoles*(this: Geom_BezierSurface): Standard_Integer  {.importcpp: "NbUPoles".}
    ## Returns the number of poles in the U direction.

proc nbVPoles*(this: Geom_BezierSurface): Standard_Integer  {.importcpp: "NbVPoles".}
    ## Returns the number of poles in the V direction.

proc pole*(this: Geom_BezierSurface, UIndex: Standard_Integer, VIndex: Standard_Integer): gp_Pnt  {.importcpp: "Pole".}
    ## Returns the pole of range UIndex, VIndex Raised if UIndex < 1 or
    ## UIndex > NbUPoles, or VIndex < 1 or VIndex > NbVPoles.

proc poles*(this: Geom_BezierSurface, P: var TColgp_Array2OfPnt)  {.importcpp: "Poles".}
    ## Returns the poles of the Bezier surface.

proc poles*(this: Geom_BezierSurface): TColgp_Array2OfPnt  {.importcpp: "Poles".}
    ## Returns the poles of the Bezier surface.

proc uDegree*(this: Geom_BezierSurface): Standard_Integer  {.importcpp: "UDegree".}
    ## Returns the degree of the surface in the U direction it is NbUPoles -
    ## 1

proc uIso*(this: Geom_BezierSurface, U: Standard_Real): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve. For a Bezier surface the UIso
    ## curve is a Bezier curve.

proc vDegree*(this: Geom_BezierSurface): Standard_Integer  {.importcpp: "VDegree".}
    ## Returns the degree of the surface in the V direction it is NbVPoles -
    ## 1

proc vIso*(this: Geom_BezierSurface, V: Standard_Real): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve. For a Bezier surface the VIso
    ## curve is a Bezier curve.

proc weight*(this: Geom_BezierSurface, UIndex: Standard_Integer, VIndex: Standard_Integer): Standard_Real  {.importcpp: "Weight".}
    ## Returns the weight of range UIndex, VIndex

proc weights*(this: Geom_BezierSurface, W: var TColStd_Array2OfReal)  {.importcpp: "Weights".}
    ## Returns the weights of the Bezier surface.

proc weights*(this: Geom_BezierSurface): ptr TColStd_Array2OfReal  {.importcpp: "Weights".}
    ## Returns the weights of the Bezier surface.

proc isUClosed*(this: Geom_BezierSurface): Standard_Boolean  {.importcpp: "IsUClosed".}
    ## Returns True if the first control points row and the last control
    ## points row are identical. The tolerance criterion is Resolution from
    ## package gp.

proc isVClosed*(this: Geom_BezierSurface): Standard_Boolean  {.importcpp: "IsVClosed".}
    ## Returns True if the first control points column and the last control
    ## points column are identical. The tolerance criterion is Resolution
    ## from package gp.

proc isCNu*(this: Geom_BezierSurface, N: Standard_Integer): Standard_Boolean  {.importcpp: "IsCNu".}
    ## Returns True, a Bezier surface is always CN

proc isCNv*(this: Geom_BezierSurface, N: Standard_Integer): Standard_Boolean  {.importcpp: "IsCNv".}
    ## Returns True, a BezierSurface is always CN

proc isUPeriodic*(this: Geom_BezierSurface): Standard_Boolean  {.importcpp: "IsUPeriodic".}
    ## Returns False.

proc isVPeriodic*(this: Geom_BezierSurface): Standard_Boolean  {.importcpp: "IsVPeriodic".}
    ## Returns False.

proc isURational*(this: Geom_BezierSurface): Standard_Boolean  {.importcpp: "IsURational".}
    ## Returns False if the weights are identical in the U direction, The
    ## tolerance criterion is Resolution from package gp. Example : |1.0,
    ## 1.0, 1.0| if Weights = |0.5, 0.5, 0.5| returns False |2.0, 2.0, 2.0|

proc isVRational*(this: Geom_BezierSurface): Standard_Boolean  {.importcpp: "IsVRational".}
    ## Returns False if the weights are identical in the V direction, The
    ## tolerance criterion is Resolution from package gp. Example : |1.0,
    ## 2.0, 0.5| if Weights = |1.0, 2.0, 0.5| returns False |1.0, 2.0, 0.5|

proc transform*(this: var Geom_BezierSurface, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this Bezier surface.

proc maxDegree*(this: var Geom_BezierSurface): Standard_Integer  {.importcpp: "MaxDegree".}
    ## Returns the value of the maximum polynomial degree of a Bezier
    ## surface. This value is 25.

proc resolution*(this: var Geom_BezierSurface, Tolerance3D: Standard_Real, UTolerance: var Standard_Real, VTolerance: var Standard_Real)  {.importcpp: "Resolution".}
    ## Computes two tolerance values for this Bezier surface, based on the
    ## given tolerance in 3D space Tolerance3D. The tolerances computed are:
    ## - UTolerance in the u parametric direction, and - VTolerance in the v
    ## parametric direction. If f(u,v) is the equation of this Bezier
    ## surface, UTolerance and VTolerance guarantee that: | u1 - u0 | <
    ## UTolerance and | v1 - v0 | < VTolerance ====> |f (u1,v1) - f (u0,v0)|
    ## < Tolerance3D

proc copy*(this: Geom_BezierSurface): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this Bezier surface.

proc dumpJson*(this: Geom_BezierSurface, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_BezierSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_BezierSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_BezierSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc init*(this: var Geom_BezierSurface, Poles: handle[TColgp_HArray2OfPnt], Weights: handle[TColStd_HArray2OfReal])  {.importcpp: "Init".}
    ## Set poles to Poles, weights to Weights (not copied). Create the arrays
    ## of coefficients. Poles and Weights are assumed to have the first
    ## coefficient 1.

{.pop.}  # header: "Geom_BezierSurface.hxx"
