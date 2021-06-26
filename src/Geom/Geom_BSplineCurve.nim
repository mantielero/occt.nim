import geom_types


type
  Geom_BSplineCurve* {.header: "Geom_BSplineCurve.hxx", importcpp: "Geom_BSplineCurve", byref.} = object #of class Geom_BoundedCurve
    ## Definition of the B_spline curve. A B-spline curve can be Uniform or
    ## non-uniform Rational or non-rational Periodic or non-periodic

  Handle_Geom_BSplineCurve* {.header: "Geom_BSplineCurve.hxx", importcpp: "Handle_Geom_BSplineCurve".} = handle[Geom_BSplineCurve]
  Base_type* {.header: "Geom_BSplineCurve.hxx", importcpp: "Geom_BSplineCurve::base_type".} = Geom_BoundedCurve


{.push header: "Geom_BSplineCurve.hxx".}

proc constructGeom_BSplineCurve*(Poles: TColgp_Array1OfPnt, Knots: TColStd_Array1OfReal, Multiplicities: TColStd_Array1OfInteger, Degree: cint, Periodic: bool): Geom_BSplineCurve {.constructor,importcpp: "Geom_BSplineCurve::Geom_BSplineCurve(@)".}
    ## Creates a non-rational B_spline curve on the basis <Knots,
    ## Multiplicities> of degree <Degree>.

proc constructGeom_BSplineCurve*(Poles: TColgp_Array1OfPnt, Weights: TColStd_Array1OfReal, Knots: TColStd_Array1OfReal, Multiplicities: TColStd_Array1OfInteger, Degree: cint, Periodic: bool, CheckRational: bool): Geom_BSplineCurve {.constructor,importcpp: "Geom_BSplineCurve::Geom_BSplineCurve(@)".}
    ## Creates a rational B_spline curve on the basis <Knots, Multiplicities>
    ## of degree <Degree>. Raises ConstructionError subject to the following
    ## conditions 0 < Degree <= MaxDegree.

proc increaseDegree*(this: var Geom_BSplineCurve, Degree: cint)  {.importcpp: "IncreaseDegree".}
    ## Increases the degree of this BSpline curve to Degree. As a result, the
    ## poles, weights and multiplicities tables are modified; the knots table
    ## is not changed. Nothing is done if Degree is less than or equal to the
    ## current degree. Exceptions Standard_ConstructionError if Degree is
    ## greater than Geom_BSplineCurve::MaxDegree().

proc increaseMultiplicity*(this: var Geom_BSplineCurve, Index: cint, M: cint)  {.importcpp: "IncreaseMultiplicity".}
    ## Increases the multiplicity of the knot <Index> to <M>.

proc increaseMultiplicity*(this: var Geom_BSplineCurve, I1: cint, I2: cint, M: cint)  {.importcpp: "IncreaseMultiplicity".}
    ## Increases the multiplicities of the knots in [I1,I2] to <M>.

proc incrementMultiplicity*(this: var Geom_BSplineCurve, I1: cint, I2: cint, M: cint)  {.importcpp: "IncrementMultiplicity".}
    ## Increment the multiplicities of the knots in [I1,I2] by <M>.

proc insertKnot*(this: var Geom_BSplineCurve, U: cdouble, M: cint, ParametricTolerance: cdouble, Add: bool)  {.importcpp: "InsertKnot".}
    ## Inserts a knot value in the sequence of knots. If <U> is an existing
    ## knot the multiplicity is increased by <M>.

proc insertKnots*(this: var Geom_BSplineCurve, Knots: TColStd_Array1OfReal, Mults: TColStd_Array1OfInteger, ParametricTolerance: cdouble, Add: bool)  {.importcpp: "InsertKnots".}
    ## Inserts a set of knots values in the sequence of knots.

proc removeKnot*(this: var Geom_BSplineCurve, Index: cint, M: cint, Tolerance: cdouble): bool  {.importcpp: "RemoveKnot".}
    ## Reduces the multiplicity of the knot of index Index to M. If M is
    ## equal to 0, the knot is removed. With a modification of this type, the
    ## array of poles is also modified. Two different algorithms are
    ## systematically used to compute the new poles of the curve. If, for
    ## each pole, the distance between the pole calculated using the first
    ## algorithm and the same pole calculated using the second algorithm, is
    ## less than Tolerance, this ensures that the curve is not modified by
    ## more than Tolerance. Under these conditions, true is returned;
    ## otherwise, false is returned. A low tolerance is used to prevent
    ## modification of the curve. A high tolerance is used to "smooth" the
    ## curve. Exceptions Standard_OutOfRange if Index is outside the bounds
    ## of the knots table. pole insertion and pole removing this operation is
    ## limited to the Uniform or QuasiUniform BSplineCurve. The knot values
    ## are modified . If the BSpline is NonUniform or Piecewise Bezier an
    ## exception Construction error is raised.

proc reverse*(this: var Geom_BSplineCurve)  {.importcpp: "Reverse".}
    ## Changes the direction of parametrization of <me>. The Knot sequence is
    ## modified, the FirstParameter and the LastParameter are not modified.
    ## The StartPoint of the initial curve becomes the EndPoint of the
    ## reversed curve and the EndPoint of the initial curve becomes the
    ## StartPoint of the reversed curve.

proc reversedParameter*(this: Geom_BSplineCurve, U: cdouble): cdouble  {.importcpp: "ReversedParameter".}
    ## Returns the parameter on the reversed curve for the point of parameter
    ## U on <me>.

proc segment*(this: var Geom_BSplineCurve, U1: cdouble, U2: cdouble, theTolerance: cdouble = PConfusion)  {.importcpp: "Segment".}
    ## Modifies this BSpline curve by segmenting it between U1 and U2. Either
    ## of these values can be outside the bounds of the curve, but U2 must be
    ## greater than U1. All data structure tables of this BSpline curve are
    ## modified, but the knots located between U1 and U2 are retained. The
    ## degree of the curve is not modified.

proc setKnot*(this: var Geom_BSplineCurve, Index: cint, K: cdouble)  {.importcpp: "SetKnot".}
    ## Modifies this BSpline curve by assigning the value K to the knot of
    ## index Index in the knots table. This is a relatively local
    ## modification because K must be such that: Knots(Index - 1) < K <
    ## Knots(Index + 1) The second syntax allows you also to increase the
    ## multiplicity of the knot to M (but it is not possible to decrease the
    ## multiplicity of the knot with this function).
    ## Standard_ConstructionError if: - K is not such that: Knots(Index - 1)
    ## < K < Knots(Index + 1) - M is greater than the degree of this BSpline
    ## curve or lower than the previous multiplicity of knot of index Index
    ## in the knots table. Standard_OutOfRange if Index is outside the bounds
    ## of the knots table.

proc setKnots*(this: var Geom_BSplineCurve, K: TColStd_Array1OfReal)  {.importcpp: "SetKnots".}
    ## Modifies this BSpline curve by assigning the array K to its knots
    ## table. The multiplicity of the knots is not modified. Exceptions
    ## Standard_ConstructionError if the values in the array K are not in
    ## ascending order. Standard_OutOfRange if the bounds of the array K are
    ## not respectively 1 and the number of knots of this BSpline curve.

proc setKnot*(this: var Geom_BSplineCurve, Index: cint, K: cdouble, M: cint)  {.importcpp: "SetKnot".}
    ## Changes the knot of range Index with its multiplicity. You can
    ## increase the multiplicity of a knot but it is not allowed to decrease
    ## the multiplicity of an existing knot.

proc periodicNormalization*(this: Geom_BSplineCurve, U: var cdouble)  {.importcpp: "PeriodicNormalization".}
    ## returns the parameter normalized within the period if the curve is
    ## periodic : otherwise does not do anything

proc setPeriodic*(this: var Geom_BSplineCurve)  {.importcpp: "SetPeriodic".}
    ## Changes this BSpline curve into a periodic curve. To become periodic,
    ## the curve must first be closed. Next, the knot sequence must be
    ## periodic. For this, FirstUKnotIndex and LastUKnotIndex are used to
    ## compute I1 and I2, the indexes in the knots array of the knots
    ## corresponding to the first and last parameters of this BSpline curve.
    ## The period is therefore: Knots(I2) - Knots(I1). Consequently, the
    ## knots and poles tables are modified. Exceptions
    ## Standard_ConstructionError if this BSpline curve is not closed.

proc setOrigin*(this: var Geom_BSplineCurve, Index: cint)  {.importcpp: "SetOrigin".}
    ## Assigns the knot of index Index in the knots table as the origin of
    ## this periodic BSpline curve. As a consequence, the knots and poles
    ## tables are modified. Exceptions Standard_NoSuchObject if this curve is
    ## not periodic. Standard_DomainError if Index is outside the bounds of
    ## the knots table.

proc setOrigin*(this: var Geom_BSplineCurve, U: cdouble, Tol: cdouble)  {.importcpp: "SetOrigin".}
    ## Set the origin of a periodic curve at Knot U. If U is not a knot of
    ## the BSpline a new knot is inseted. KnotVector and poles are modified.
    ## Raised if the curve is not periodic

proc setNotPeriodic*(this: var Geom_BSplineCurve)  {.importcpp: "SetNotPeriodic".}
    ## Changes this BSpline curve into a non-periodic curve. If this curve is
    ## already non-periodic, it is not modified. Note: the poles and knots
    ## tables are modified. Warning If this curve is periodic, as the
    ## multiplicity of the first and last knots is not modified, and is not
    ## equal to Degree + 1, where Degree is the degree of this BSpline curve,
    ## the start and end points of the curve are not its first and last
    ## poles.

proc setPole*(this: var Geom_BSplineCurve, Index: cint, P: gp_Pnt)  {.importcpp: "SetPole".}
    ## Modifies this BSpline curve by assigning P to the pole of index Index
    ## in the poles table. Exceptions Standard_OutOfRange if Index is outside
    ## the bounds of the poles table. Standard_ConstructionError if Weight is
    ## negative or null.

proc setPole*(this: var Geom_BSplineCurve, Index: cint, P: gp_Pnt, Weight: cdouble)  {.importcpp: "SetPole".}
    ## Modifies this BSpline curve by assigning P to the pole of index Index
    ## in the poles table. This syntax also allows you to modify the weight
    ## of the modified pole, which becomes Weight. In this case, if this
    ## BSpline curve is non-rational, it can become rational and vice versa.
    ## Exceptions Standard_OutOfRange if Index is outside the bounds of the
    ## poles table. Standard_ConstructionError if Weight is negative or null.

proc setWeight*(this: var Geom_BSplineCurve, Index: cint, Weight: cdouble)  {.importcpp: "SetWeight".}
    ## Changes the weight for the pole of range Index. If the curve was non
    ## rational it can become rational. If the curve was rational it can
    ## become non rational.

proc movePoint*(this: var Geom_BSplineCurve, U: cdouble, P: gp_Pnt, Index1: cint, Index2: cint, FirstModifiedPole: var cint, LastModifiedPole: var cint)  {.importcpp: "MovePoint".}
    ## Moves the point of parameter U of this BSpline curve to P. Index1 and
    ## Index2 are the indexes in the table of poles of this BSpline curve of
    ## the first and last poles designated to be moved. FirstModifiedPole and
    ## LastModifiedPole are the indexes of the first and last poles which are
    ## effectively modified. In the event of incompatibility between Index1,
    ## Index2 and the value U: - no change is made to this BSpline curve, and
    ## - the FirstModifiedPole and LastModifiedPole are returned null.
    ## Exceptions Standard_OutOfRange if: - Index1 is greater than or equal
    ## to Index2, or - Index1 or Index2 is less than 1 or greater than the
    ## number of poles of this BSpline curve.

proc movePointAndTangent*(this: var Geom_BSplineCurve, U: cdouble, P: gp_Pnt, Tangent: gp_Vec, Tolerance: cdouble, StartingCondition: cint, EndingCondition: cint, ErrorStatus: var cint)  {.importcpp: "MovePointAndTangent".}
    ## Move a point with parameter U to P. and makes it tangent at U be
    ## Tangent. StartingCondition = -1 means first can move EndingCondition =
    ## -1 means last point can move StartingCondition = 0 means the first
    ## point cannot move EndingCondition = 0 means the last point cannot move
    ## StartingCondition = 1 means the first point and tangent cannot move
    ## EndingCondition = 1 means the last point and tangent cannot move and
    ## so forth ErrorStatus != 0 means that there are not enought degree of
    ## freedom with the constrain to deform the curve accordingly

proc isCN*(this: Geom_BSplineCurve, N: cint): bool  {.importcpp: "IsCN".}
    ## Returns the continuity of the curve, the curve is at least C0. Raised
    ## if N < 0.

proc isG1*(this: Geom_BSplineCurve, theTf: cdouble, theTl: cdouble, theAngTol: cdouble): bool  {.importcpp: "IsG1".}
    ## Check if curve has at least G1 continuity in interval [theTf, theTl]
    ## Returns true if IsCN(1) or angle betweem "left" and "right" first
    ## derivatives at knots with C0 continuity is less then theAngTol only
    ## knots in interval [theTf, theTl] is checked

proc isClosed*(this: Geom_BSplineCurve): bool  {.importcpp: "IsClosed".}
    ## Returns true if the distance between the first point and the last
    ## point of the curve is lower or equal to Resolution from package gp.
    ## Warnings : The first and the last point can be different from the
    ## first pole and the last pole of the curve.

proc isPeriodic*(this: Geom_BSplineCurve): bool  {.importcpp: "IsPeriodic".}
    ## Returns True if the curve is periodic.

proc isRational*(this: Geom_BSplineCurve): bool  {.importcpp: "IsRational".}
    ## Returns True if the weights are not identical. The tolerance criterion
    ## is Epsilon of the class Real.

proc continuity*(this: Geom_BSplineCurve): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns the global continuity of the curve : C0 : only geometric
    ## continuity, C1 : continuity of the first derivative all along the
    ## Curve, C2 : continuity of the second derivative all along the Curve,
    ## C3 : continuity of the third derivative all along the Curve, CN : the
    ## order of continuity is infinite. For a B-spline curve of degree d if a
    ## knot Ui has a multiplicity p the B-spline curve is only Cd-p
    ## continuous at Ui. So the global continuity of the curve can't be
    ## greater than Cd-p where p is the maximum multiplicity of the interior
    ## Knots. In the interior of a knot span the curve is infinitely
    ## continuously differentiable.

proc degree*(this: Geom_BSplineCurve): cint  {.importcpp: "Degree".}
    ## Returns the degree of this BSpline curve. The degree of a
    ## Geom_BSplineCurve curve cannot be greater than
    ## Geom_BSplineCurve::MaxDegree(). Computation of value and derivatives

proc d0*(this: Geom_BSplineCurve, U: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Returns in P the point of parameter U.

proc d1*(this: Geom_BSplineCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
    ## Raised if the continuity of the curve is not C1.

proc d2*(this: Geom_BSplineCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Raised if the continuity of the curve is not C2.

proc d3*(this: Geom_BSplineCurve, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## Raised if the continuity of the curve is not C3.

proc dN*(this: Geom_BSplineCurve, U: cdouble, N: cint): gp_Vec  {.importcpp: "DN".}
    ## For the point of parameter U of this BSpline curve, computes the
    ## vector corresponding to the Nth derivative. Warning On a point where
    ## the continuity of the curve is not the one requested, this function
    ## impacts the part defined by the parameter with a value greater than U,
    ## i.e. the part of the curve to the "right" of the singularity.
    ## Exceptions Standard_RangeError if N is less than 1.

proc localValue*(this: Geom_BSplineCurve, U: cdouble, FromK1: cint, ToK2: cint): gp_Pnt  {.importcpp: "LocalValue".}
    ## Raised if FromK1 = ToK2.

proc localD0*(this: Geom_BSplineCurve, U: cdouble, FromK1: cint, ToK2: cint, P: var gp_Pnt)  {.importcpp: "LocalD0".}
    ## Raised if FromK1 = ToK2.

proc localD1*(this: Geom_BSplineCurve, U: cdouble, FromK1: cint, ToK2: cint, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "LocalD1".}
    ## Raised if the local continuity of the curve is not C1 between the knot
    ## K1 and the knot K2. Raised if FromK1 = ToK2.

proc localD2*(this: Geom_BSplineCurve, U: cdouble, FromK1: cint, ToK2: cint, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "LocalD2".}
    ## Raised if the local continuity of the curve is not C2 between the knot
    ## K1 and the knot K2. Raised if FromK1 = ToK2.

proc localD3*(this: Geom_BSplineCurve, U: cdouble, FromK1: cint, ToK2: cint, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "LocalD3".}
    ## Raised if the local continuity of the curve is not C3 between the knot
    ## K1 and the knot K2. Raised if FromK1 = ToK2.

proc localDN*(this: Geom_BSplineCurve, U: cdouble, FromK1: cint, ToK2: cint, N: cint): gp_Vec  {.importcpp: "LocalDN".}
    ## Raised if the local continuity of the curve is not CN between the knot
    ## K1 and the knot K2. Raised if FromK1 = ToK2. Raised if N < 1.

proc endPoint*(this: Geom_BSplineCurve): gp_Pnt  {.importcpp: "EndPoint".}
    ## Returns the last point of the curve. Warnings : The last point of the
    ## curve is different from the last pole of the curve if the multiplicity
    ## of the last knot is lower than Degree.

proc firstUKnotIndex*(this: Geom_BSplineCurve): cint  {.importcpp: "FirstUKnotIndex".}
    ## Returns the index in the knot array of the knot corresponding to the
    ## first or last parameter of this BSpline curve. For a BSpline curve,
    ## the first (or last) parameter (which gives the start (or end) point of
    ## the curve) is a knot value. However, if the multiplicity of the first
    ## (or last) knot is less than Degree + 1, where Degree is the degree of
    ## the curve, it is not the first (or last) knot of the curve.

proc firstParameter*(this: Geom_BSplineCurve): cdouble  {.importcpp: "FirstParameter".}
    ## Returns the value of the first parameter of this BSpline curve. This
    ## is a knot value. The first parameter is the one of the start point of
    ## the BSpline curve.

proc knot*(this: Geom_BSplineCurve, Index: cint): cdouble  {.importcpp: "Knot".}
    ## Returns the knot of range Index. When there is a knot with a
    ## multiplicity greater than 1 the knot is not repeated. The method
    ## Multiplicity can be used to get the multiplicity of the Knot. Raised
    ## if Index < 1 or Index > NbKnots

proc knots*(this: Geom_BSplineCurve, K: var TColStd_Array1OfReal)  {.importcpp: "Knots".}
    ## returns the knot values of the B-spline curve; Warning A knot with a
    ## multiplicity greater than 1 is not repeated in the knot table. The
    ## Multiplicity function can be used to obtain the multiplicity of each
    ## knot.

proc knots*(this: Geom_BSplineCurve): TColStd_Array1OfReal  {.importcpp: "Knots".}
    ## returns the knot values of the B-spline curve; Warning A knot with a
    ## multiplicity greater than 1 is not repeated in the knot table. The
    ## Multiplicity function can be used to obtain the multiplicity of each
    ## knot.

proc knotSequence*(this: Geom_BSplineCurve, K: var TColStd_Array1OfReal)  {.importcpp: "KnotSequence".}
    ## Returns K, the knots sequence of this BSpline curve. In this sequence,
    ## knots with a multiplicity greater than 1 are repeated. In the case of
    ## a non-periodic curve the length of the sequence must be equal to the
    ## sum of the NbKnots multiplicities of the knots of the curve (where
    ## NbKnots is the number of knots of this BSpline curve). This sum is
    ## also equal to : NbPoles + Degree + 1 where NbPoles is the number of
    ## poles and Degree the degree of this BSpline curve. In the case of a
    ## periodic curve, if there are k periodic knots, the period is Knot(k+1)
    ## - Knot(1). The initial sequence is built by writing knots 1 to k+1,
    ## which are repeated according to their corresponding multiplicities. If
    ## Degree is the degree of the curve, the degree of continuity of the
    ## curve at the knot of index 1 (or k+1) is equal to c = Degree + 1 -
    ## Mult(1). c knots are then inserted at the beginning and end of the
    ## initial sequence: - the c values of knots preceding the first item
    ## Knot(k+1) in the initial sequence are inserted at the beginning; the
    ## period is subtracted from these c values; - the c values of knots
    ## following the last item Knot(1) in the initial sequence are inserted
    ## at the end; the period is added to these c values. The length of the
    ## sequence must therefore be equal to: NbPoles + 2*Degree - Mult(1) + 2.
    ## Example For a non-periodic BSpline curve of degree 2 where: - the
    ## array of knots is: { k1 k2 k3 k4 }, - with associated multiplicities:
    ## { 3 1 2 3 }, the knot sequence is: K = { k1 k1 k1 k2 k3 k3 k4 k4 k4 }
    ## For a periodic BSpline curve of degree 4 , which is "C1" continuous at
    ## the first knot, and where : - the periodic knots are: { k1 k2 k3 (k4)
    ## } (3 periodic knots: the points of parameter k1 and k4 are identical,
    ## the period is p = k4 - k1), - with associated multiplicities: { 3 1 2
    ## (3) }, the degree of continuity at knots k1 and k4 is: Degree + 1 -
    ## Mult(i) = 2. 2 supplementary knots are added at the beginning and end
    ## of the sequence: - at the beginning: the 2 knots preceding k4 minus
    ## the period; in this example, this is k3 - p both times; - at the end:
    ## the 2 knots following k1 plus the period; in this example, this is k2
    ## + p and k3 + p. The knot sequence is therefore: K = { k3-p k3-p k1 k1
    ## k1 k2 k3 k3 k4 k4 k4 k2+p k3+p } Exceptions Raised if K.Lower() is
    ## less than number of first knot in knot sequence with repetitions or
    ## K.Upper() is more than number of last knot in knot sequence with
    ## repetitions.

proc knotSequence*(this: Geom_BSplineCurve): TColStd_Array1OfReal  {.importcpp: "KnotSequence".}
    ## returns the knots of the B-spline curve. Knots with multiplicit
    ## greater than 1 are repeated

proc knotDistribution*(this: Geom_BSplineCurve): GeomAbs_BSplKnotDistribution  {.importcpp: "KnotDistribution".}
    ## Returns NonUniform or Uniform or QuasiUniform or PiecewiseBezier. If
    ## all the knots differ by a positive constant from the preceding knot
    ## the BSpline Curve can be : - Uniform if all the knots are of
    ## multiplicity 1, - QuasiUniform if all the knots are of multiplicity 1
    ## except for the first and last knot which are of multiplicity Degree +
    ## 1, - PiecewiseBezier if the first and last knots have multiplicity
    ## Degree + 1 and if interior knots have multiplicity Degree A piecewise
    ## Bezier with only two knots is a BezierCurve. else the curve is non
    ## uniform. The tolerance criterion is Epsilon from class Real.

proc lastUKnotIndex*(this: Geom_BSplineCurve): cint  {.importcpp: "LastUKnotIndex".}
    ## For a BSpline curve the last parameter (which gives the end point of
    ## the curve) is a knot value but if the multiplicity of the last knot
    ## index is lower than Degree + 1 it is not the last knot of the curve.
    ## This method computes the index of the knot corresponding to the last
    ## parameter.

proc lastParameter*(this: Geom_BSplineCurve): cdouble  {.importcpp: "LastParameter".}
    ## Computes the parametric value of the end point of the curve. It is a
    ## knot value.

proc locateU*(this: Geom_BSplineCurve, U: cdouble, ParametricTolerance: cdouble, I1: var cint, I2: var cint, WithKnotRepetition: bool)  {.importcpp: "LocateU".}
    ## Locates the parametric value U in the sequence of knots. If
    ## "WithKnotRepetition" is True we consider the knot's representation
    ## with repetition of multiple knot value, otherwise we consider the
    ## knot's representation with no repetition of multiple knot values.
    ## Knots (I1) <= U <= Knots (I2) . if I1 = I2 U is a knot value (the
    ## tolerance criterion ParametricTolerance is used). . if I1 < 1 => U <
    ## Knots (1) - Abs(ParametricTolerance) . if I2 > NbKnots => U > Knots
    ## (NbKnots) + Abs(ParametricTolerance)

proc multiplicity*(this: Geom_BSplineCurve, Index: cint): cint  {.importcpp: "Multiplicity".}
    ## Returns the multiplicity of the knots of range Index. Raised if Index
    ## < 1 or Index > NbKnots

proc multiplicities*(this: Geom_BSplineCurve, M: var TColStd_Array1OfInteger)  {.importcpp: "Multiplicities".}
    ## Returns the multiplicity of the knots of the curve.

proc multiplicities*(this: Geom_BSplineCurve): TColStd_Array1OfInteger  {.importcpp: "Multiplicities".}
    ## returns the multiplicity of the knots of the curve.

proc nbKnots*(this: Geom_BSplineCurve): cint  {.importcpp: "NbKnots".}
    ## Returns the number of knots. This method returns the number of knot
    ## without repetition of multiple knots.

proc nbPoles*(this: Geom_BSplineCurve): cint  {.importcpp: "NbPoles".}
    ## Returns the number of poles

proc pole*(this: Geom_BSplineCurve, Index: cint): gp_Pnt  {.importcpp: "Pole".}
    ## Returns the pole of range Index. Raised if Index < 1 or Index >
    ## NbPoles.

proc poles*(this: Geom_BSplineCurve, P: var TColgp_Array1OfPnt)  {.importcpp: "Poles".}
    ## Returns the poles of the B-spline curve;

proc poles*(this: Geom_BSplineCurve): TColgp_Array1OfPnt  {.importcpp: "Poles".}
    ## Returns the poles of the B-spline curve;

proc startPoint*(this: Geom_BSplineCurve): gp_Pnt  {.importcpp: "StartPoint".}
    ## Returns the start point of the curve. Warnings : This point is
    ## different from the first pole of the curve if the multiplicity of the
    ## first knot is lower than Degree.

proc weight*(this: Geom_BSplineCurve, Index: cint): cdouble  {.importcpp: "Weight".}
    ## Returns the weight of the pole of range Index . Raised if Index < 1 or
    ## Index > NbPoles.

proc weights*(this: Geom_BSplineCurve, W: var TColStd_Array1OfReal)  {.importcpp: "Weights".}
    ## Returns the weights of the B-spline curve;

proc weights*(this: Geom_BSplineCurve): ptr TColStd_Array1OfReal  {.importcpp: "Weights".}
    ## Returns the weights of the B-spline curve;

proc transform*(this: var Geom_BSplineCurve, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this BSpline curve.

proc maxDegree*(this: var Geom_BSplineCurve): cint  {.importcpp: "MaxDegree".}
    ## Returns the value of the maximum degree of the normalized B-spline
    ## basis functions in this package.

proc resolution*(this: var Geom_BSplineCurve, Tolerance3D: cdouble, UTolerance: var cdouble)  {.importcpp: "Resolution".}
    ## Computes for this BSpline curve the parametric tolerance UTolerance
    ## for a given 3D tolerance Tolerance3D. If f(t) is the equation of this
    ## BSpline curve, UTolerance ensures that: | t1 - t0| < Utolerance ===>
    ## |f(t1) - f(t0)| < Tolerance3D

proc copy*(this: Geom_BSplineCurve): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this BSpline curve.

proc isEqual*(this: Geom_BSplineCurve, theOther: handle[Geom_BSplineCurve], thePreci: cdouble): bool  {.importcpp: "IsEqual".}
    ## Comapare two Bspline curve on identity;

proc dumpJson*(this: Geom_BSplineCurve, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_BSplineCurve): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_BSplineCurve): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_BSplineCurve): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc updateKnots*(this: var Geom_BSplineCurve)  {.importcpp: "UpdateKnots".}
    ## Recompute the flatknots, the knotsdistribution, the continuity.

{.pop.}  # header: "Geom_BSplineCurve.hxx"
