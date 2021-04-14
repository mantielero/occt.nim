import geom_types


type
  Handle_Geom_BSplineSurface* {.header: "Geom_BSplineSurface.hxx", importcpp: "Handle_Geom_BSplineSurface".} = handle[Geom_BSplineSurface]
  Base_type* {.header: "Geom_BSplineSurface.hxx", importcpp: "Geom_BSplineSurface::base_type".} = Geom_BoundedSurface


{.push header: "Geom_BSplineSurface.hxx".}

proc constructGeom_BSplineSurface*(Poles: TColgp_Array2OfPnt, UKnots: TColStd_Array1OfReal, VKnots: TColStd_Array1OfReal, UMults: TColStd_Array1OfInteger, VMults: TColStd_Array1OfInteger, UDegree: cint, VDegree: cint, UPeriodic: bool, VPeriodic: bool): Geom_BSplineSurface {.constructor,importcpp: "Geom_BSplineSurface::Geom_BSplineSurface(@)".}
    ## Creates a non-rational b-spline surface (weights default value is 1.).
    ## The following conditions must be verified. 0 < UDegree <= MaxDegree.
    ## UKnots.Length() == UMults.Length() >= 2 UKnots(i) < UKnots(i+1) (Knots
    ## are increasing) 1 <= UMults(i) <= UDegree On a non uperiodic surface
    ## the first and last umultiplicities may be UDegree+1 (this is even
    ## recommanded if you want the curve to start and finish on the first and
    ## last pole). On a uperiodic surface the first and the last
    ## umultiplicities must be the same. on non-uperiodic surfaces
    ## Poles.ColLength() == Sum(UMults(i)) - UDegree - 1 >= 2 on uperiodic
    ## surfaces Poles.ColLength() == Sum(UMults(i)) except the first or last
    ## The previous conditions for U holds also for V, with the RowLength of
    ## the poles.

proc constructGeom_BSplineSurface*(Poles: TColgp_Array2OfPnt, Weights: TColStd_Array2OfReal, UKnots: TColStd_Array1OfReal, VKnots: TColStd_Array1OfReal, UMults: TColStd_Array1OfInteger, VMults: TColStd_Array1OfInteger, UDegree: cint, VDegree: cint, UPeriodic: bool, VPeriodic: bool): Geom_BSplineSurface {.constructor,importcpp: "Geom_BSplineSurface::Geom_BSplineSurface(@)".}
    ## Creates a non-rational b-spline surface (weights default value is 1.).

proc exchangeUV*(this: var Geom_BSplineSurface)  {.importcpp: "ExchangeUV".}
    ## Exchanges the u and v parametric directions on this BSpline surface.
    ## As a consequence: - the poles and weights tables are transposed, - the
    ## knots and multiplicities tables are exchanged, - degrees of
    ## continuity, and rational, periodic and uniform characteristics are
    ## exchanged, and - the orientation of the surface is inverted.

proc setUPeriodic*(this: var Geom_BSplineSurface)  {.importcpp: "SetUPeriodic".}
    ## Sets the surface U periodic. Modifies this surface to be periodic in
    ## the U parametric direction. To become periodic in a given parametric
    ## direction a surface must be closed in that parametric direction, and
    ## the knot sequence relative to that direction must be periodic. To
    ## generate this periodic sequence of knots, the functions
    ## FirstUKnotIndex and LastUKnotIndex are used to compute I1 and I2.
    ## These are the indexes, in the knot array associated with the given
    ## parametric direction, of the knots that correspond to the first and
    ## last parameters of this BSpline surface in the given parametric
    ## direction. Hence the period is: Knots(I1) - Knots(I2) As a result, the
    ## knots and poles tables are modified. Exceptions
    ## Standard_ConstructionError if the surface is not closed in the given
    ## parametric direction.

proc setVPeriodic*(this: var Geom_BSplineSurface)  {.importcpp: "SetVPeriodic".}
    ## Sets the surface V periodic. Modifies this surface to be periodic in
    ## the V parametric direction. To become periodic in a given parametric
    ## direction a surface must be closed in that parametric direction, and
    ## the knot sequence relative to that direction must be periodic. To
    ## generate this periodic sequence of knots, the functions
    ## FirstVKnotIndex and LastVKnotIndex are used to compute I1 and I2.
    ## These are the indexes, in the knot array associated with the given
    ## parametric direction, of the knots that correspond to the first and
    ## last parameters of this BSpline surface in the given parametric
    ## direction. Hence the period is: Knots(I1) - Knots(I2) As a result, the
    ## knots and poles tables are modified. Exceptions
    ## Standard_ConstructionError if the surface is not closed in the given
    ## parametric direction.

proc periodicNormalization*(this: Geom_BSplineSurface, U: var cdouble, V: var cdouble)  {.importcpp: "PeriodicNormalization".}
    ## returns the parameter normalized within the period if the surface is
    ## periodic : otherwise does not do anything

proc setUOrigin*(this: var Geom_BSplineSurface, Index: cint)  {.importcpp: "SetUOrigin".}
    ## Assigns the knot of index Index in the knots table in the
    ## corresponding parametric direction to be the origin of this periodic
    ## BSpline surface. As a consequence, the knots and poles tables are
    ## modified. Exceptions Standard_NoSuchObject if this BSpline surface is
    ## not periodic in the given parametric direction. Standard_DomainError
    ## if Index is outside the bounds of the knots table in the given
    ## parametric direction.

proc setVOrigin*(this: var Geom_BSplineSurface, Index: cint)  {.importcpp: "SetVOrigin".}
    ## Assigns the knot of index Index in the knots table in the
    ## corresponding parametric direction to be the origin of this periodic
    ## BSpline surface. As a consequence, the knots and poles tables are
    ## modified. Exceptions Standard_NoSuchObject if this BSpline surface is
    ## not periodic in the given parametric direction. Standard_DomainError
    ## if Index is outside the bounds of the knots table in the given
    ## parametric direction.

proc setUNotPeriodic*(this: var Geom_BSplineSurface)  {.importcpp: "SetUNotPeriodic".}
    ## Sets the surface U not periodic. Changes this BSpline surface into a
    ## non-periodic surface along U direction. If this surface is already
    ## non-periodic, it is not modified. Note: the poles and knots tables are
    ## modified.

proc setVNotPeriodic*(this: var Geom_BSplineSurface)  {.importcpp: "SetVNotPeriodic".}
    ## Sets the surface V not periodic. Changes this BSpline surface into a
    ## non-periodic surface along V direction. If this surface is already
    ## non-periodic, it is not modified. Note: the poles and knots tables are
    ## modified.

proc uReverse*(this: var Geom_BSplineSurface)  {.importcpp: "UReverse".}
    ## Changes the orientation of this BSpline surface in the U parametric
    ## direction. The bounds of the surface are not changed but the given
    ## parametric direction is reversed. Hence the orientation of the surface
    ## is reversed. The knots and poles tables are modified.

proc vReverse*(this: var Geom_BSplineSurface)  {.importcpp: "VReverse".}
    ## Changes the orientation of this BSpline surface in the V parametric
    ## direction. The bounds of the surface are not changed but the given
    ## parametric direction is reversed. Hence the orientation of the surface
    ## is reversed. The knots and poles tables are modified.

proc uReversedParameter*(this: Geom_BSplineSurface, U: cdouble): cdouble  {.importcpp: "UReversedParameter".}
    ## Computes the u parameter on the modified surface, produced by
    ## reversing its U parametric direction, for the point of u parameter U,
    ## on this BSpline surface. For a BSpline surface, these functions return
    ## respectively: - UFirst + ULast - U, where UFirst, ULast are the values
    ## of the first and last parameters of this BSpline surface, in the u
    ## parametric directions.

proc vReversedParameter*(this: Geom_BSplineSurface, V: cdouble): cdouble  {.importcpp: "VReversedParameter".}
    ## Computes the v parameter on the modified surface, produced by
    ## reversing its V parametric direction, for the point of v parameter V
    ## on this BSpline surface. For a BSpline surface, these functions return
    ## respectively: - VFirst + VLast - V, VFirst and VLast are the values of
    ## the first and last parameters of this BSpline surface, in the v
    ## pametric directions.

proc increaseDegree*(this: var Geom_BSplineSurface, UDegree: cint, VDegree: cint)  {.importcpp: "IncreaseDegree".}
    ## Increases the degrees of this BSpline surface to UDegree and VDegree
    ## in the u and v parametric directions respectively. As a result, the
    ## tables of poles, weights and multiplicities are modified. The tables
    ## of knots is not changed. Note: Nothing is done if the given degree is
    ## less than or equal to the current degree in the corresponding
    ## parametric direction. Exceptions Standard_ConstructionError if UDegree
    ## or VDegree is greater than Geom_BSplineSurface::MaxDegree().

proc insertUKnots*(this: var Geom_BSplineSurface, Knots: TColStd_Array1OfReal, Mults: TColStd_Array1OfInteger, ParametricTolerance: cdouble, Add: bool)  {.importcpp: "InsertUKnots".}
    ## Inserts into the knots table for the U parametric direction of this
    ## BSpline surface: - the values of the array Knots, with their
    ## respective multiplicities, Mults. If the knot value to insert already
    ## exists in the table, its multiplicity is: - increased by M, if Add is
    ## true (the default), or - increased to M, if Add is false. The
    ## tolerance criterion used to check the equality of the knots is the
    ## larger of the values ParametricTolerance and
    ## cdouble::Epsilon(val), where val is the knot value to be
    ## inserted. Warning - If a given multiplicity coefficient is null, or
    ## negative, nothing is done. - The new multiplicity of a knot is limited
    ## to the degree of this BSpline surface in the corresponding parametric
    ## direction. Exceptions Standard_ConstructionError if a knot value to
    ## insert is outside the bounds of this BSpline surface in the specified
    ## parametric direction. The comparison uses the precision criterion
    ## ParametricTolerance.

proc insertVKnots*(this: var Geom_BSplineSurface, Knots: TColStd_Array1OfReal, Mults: TColStd_Array1OfInteger, ParametricTolerance: cdouble, Add: bool)  {.importcpp: "InsertVKnots".}
    ## Inserts into the knots table for the V parametric direction of this
    ## BSpline surface: - the values of the array Knots, with their
    ## respective multiplicities, Mults. If the knot value to insert already
    ## exists in the table, its multiplicity is: - increased by M, if Add is
    ## true (the default), or - increased to M, if Add is false. The
    ## tolerance criterion used to check the equality of the knots is the
    ## larger of the values ParametricTolerance and
    ## cdouble::Epsilon(val), where val is the knot value to be
    ## inserted. Warning - If a given multiplicity coefficient is null, or
    ## negative, nothing is done. - The new multiplicity of a knot is limited
    ## to the degree of this BSpline surface in the corresponding parametric
    ## direction. Exceptions Standard_ConstructionError if a knot value to
    ## insert is outside the bounds of this BSpline surface in the specified
    ## parametric direction. The comparison uses the precision criterion
    ## ParametricTolerance.

proc removeUKnot*(this: var Geom_BSplineSurface, Index: cint, M: cint, Tolerance: cdouble): bool  {.importcpp: "RemoveUKnot".}
    ## Reduces to M the multiplicity of the knot of index Index in the U
    ## parametric direction. If M is 0, the knot is removed. With a
    ## modification of this type, the table of poles is also modified. Two
    ## different algorithms are used systematically to compute the new poles
    ## of the surface. For each pole, the distance between the pole
    ## calculated using the first algorithm and the same pole calculated
    ## using the second algorithm, is checked. If this distance is less than
    ## Tolerance it ensures that the surface is not modified by more than
    ## Tolerance. Under these conditions, the function returns true;
    ## otherwise, it returns false. A low tolerance prevents modification of
    ## the surface. A high tolerance "smoothes" the surface. Exceptions
    ## Standard_OutOfRange if Index is outside the bounds of the knots table
    ## of this BSpline surface.

proc removeVKnot*(this: var Geom_BSplineSurface, Index: cint, M: cint, Tolerance: cdouble): bool  {.importcpp: "RemoveVKnot".}
    ## Reduces to M the multiplicity of the knot of index Index in the V
    ## parametric direction. If M is 0, the knot is removed. With a
    ## modification of this type, the table of poles is also modified. Two
    ## different algorithms are used systematically to compute the new poles
    ## of the surface. For each pole, the distance between the pole
    ## calculated using the first algorithm and the same pole calculated
    ## using the second algorithm, is checked. If this distance is less than
    ## Tolerance it ensures that the surface is not modified by more than
    ## Tolerance. Under these conditions, the function returns true;
    ## otherwise, it returns false. A low tolerance prevents modification of
    ## the surface. A high tolerance "smoothes" the surface. Exceptions
    ## Standard_OutOfRange if Index is outside the bounds of the knots table
    ## of this BSpline surface.

proc increaseUMultiplicity*(this: var Geom_BSplineSurface, UIndex: cint, M: cint)  {.importcpp: "IncreaseUMultiplicity".}
    ## Increases the multiplicity of the knot of range UIndex in the UKnots
    ## sequence. M is the new multiplicity. M must be greater than the
    ## previous multiplicity and lower or equal to the degree of the surface
    ## in the U parametric direction. Raised if M is not in the range [1,
    ## UDegree]

proc increaseUMultiplicity*(this: var Geom_BSplineSurface, FromI1: cint, ToI2: cint, M: cint)  {.importcpp: "IncreaseUMultiplicity".}
    ## Increases until order M the multiplicity of the set of knots
    ## FromI1,...., ToI2 in the U direction. This method can be used to make
    ## a B_spline surface into a PiecewiseBezier B_spline surface. If <me>
    ## was uniform, it can become non uniform.

proc incrementUMultiplicity*(this: var Geom_BSplineSurface, FromI1: cint, ToI2: cint, Step: cint)  {.importcpp: "IncrementUMultiplicity".}
    ## Increments the multiplicity of the consecutives uknots FromI1..ToI2 by
    ## step. The multiplicity of each knot FromI1,.....,ToI2 must be lower or
    ## equal to the UDegree of the B_spline.

proc increaseVMultiplicity*(this: var Geom_BSplineSurface, VIndex: cint, M: cint)  {.importcpp: "IncreaseVMultiplicity".}
    ## Increases the multiplicity of a knot in the V direction. M is the new
    ## multiplicity.

proc increaseVMultiplicity*(this: var Geom_BSplineSurface, FromI1: cint, ToI2: cint, M: cint)  {.importcpp: "IncreaseVMultiplicity".}
    ## Increases until order M the multiplicity of the set of knots
    ## FromI1,...., ToI2 in the V direction. This method can be used to make
    ## a BSplineSurface into a PiecewiseBezier B_spline surface. If <me> was
    ## uniform, it can become non-uniform.

proc incrementVMultiplicity*(this: var Geom_BSplineSurface, FromI1: cint, ToI2: cint, Step: cint)  {.importcpp: "IncrementVMultiplicity".}
    ## Increments the multiplicity of the consecutives vknots FromI1..ToI2 by
    ## step. The multiplicity of each knot FromI1,.....,ToI2 must be lower or
    ## equal to the VDegree of the B_spline.

proc insertUKnot*(this: var Geom_BSplineSurface, U: cdouble, M: cint, ParametricTolerance: cdouble, Add: bool)  {.importcpp: "InsertUKnot".}
    ## Inserts a knot value in the sequence of UKnots. If U is a knot value
    ## this method increases the multiplicity of the knot if the previous
    ## multiplicity was lower than M else it does nothing. The tolerance
    ## criterion is ParametricTolerance. ParametricTolerance should be
    ## greater or equal than Resolution from package gp.

proc insertVKnot*(this: var Geom_BSplineSurface, V: cdouble, M: cint, ParametricTolerance: cdouble, Add: bool)  {.importcpp: "InsertVKnot".}
    ## Inserts a knot value in the sequence of VKnots. If V is a knot value
    ## this method increases the multiplicity of the knot if the previous
    ## multiplicity was lower than M otherwise it does nothing. The tolerance
    ## criterion is ParametricTolerance. ParametricTolerance should be
    ## greater or equal than Resolution from package gp.

proc segment*(this: var Geom_BSplineSurface, U1: cdouble, U2: cdouble, V1: cdouble, V2: cdouble, theUTolerance: cdouble = PConfusion, theVTolerance: cdouble = PConfusion)  {.importcpp: "Segment".}
    ## Segments the surface between U1 and U2 in the U-Direction. between V1
    ## and V2 in the V-Direction. The control points are modified, the first
    ## and the last point are not the same.

proc checkAndSegment*(this: var Geom_BSplineSurface, U1: cdouble, U2: cdouble, V1: cdouble, V2: cdouble, theUTolerance: cdouble = PConfusion, theVTolerance: cdouble = PConfusion)  {.importcpp: "CheckAndSegment".}
    ## Segments the surface between U1 and U2 in the U-Direction. between V1
    ## and V2 in the V-Direction.

proc setUKnot*(this: var Geom_BSplineSurface, UIndex: cint, K: cdouble)  {.importcpp: "SetUKnot".}
    ## Substitutes the UKnots of range UIndex with K.

proc setUKnots*(this: var Geom_BSplineSurface, UK: TColStd_Array1OfReal)  {.importcpp: "SetUKnots".}
    ## Changes all the U-knots of the surface. The multiplicity of the knots
    ## are not modified.

proc setUKnot*(this: var Geom_BSplineSurface, UIndex: cint, K: cdouble, M: cint)  {.importcpp: "SetUKnot".}
    ## Changes the value of the UKnots of range UIndex and increases its
    ## multiplicity.

proc setVKnot*(this: var Geom_BSplineSurface, VIndex: cint, K: cdouble)  {.importcpp: "SetVKnot".}
    ## Substitutes the VKnots of range VIndex with K.

proc setVKnots*(this: var Geom_BSplineSurface, VK: TColStd_Array1OfReal)  {.importcpp: "SetVKnots".}
    ## Changes all the V-knots of the surface. The multiplicity of the knots
    ## are not modified.

proc setVKnot*(this: var Geom_BSplineSurface, VIndex: cint, K: cdouble, M: cint)  {.importcpp: "SetVKnot".}
    ## Changes the value of the VKnots of range VIndex and increases its
    ## multiplicity.

proc locateU*(this: Geom_BSplineSurface, U: cdouble, ParametricTolerance: cdouble, I1: var cint, I2: var cint, WithKnotRepetition: bool)  {.importcpp: "LocateU".}
    ## Locates the parametric value U in the sequence of UKnots. If
    ## "WithKnotRepetition" is True we consider the knot's representation
    ## with repetition of multiple knot value, otherwise we consider the
    ## knot's representation with no repetition of multiple knot values.
    ## UKnots (I1) <= U <= UKnots (I2) . if I1 = I2 U is a knot value (the
    ## tolerance criterion ParametricTolerance is used). . if I1 < 1 => U <
    ## UKnots(1) - Abs(ParametricTolerance) . if I2 > NbUKnots => U >
    ## UKnots(NbUKnots)+Abs(ParametricTolerance)

proc locateV*(this: Geom_BSplineSurface, V: cdouble, ParametricTolerance: cdouble, I1: var cint, I2: var cint, WithKnotRepetition: bool)  {.importcpp: "LocateV".}
    ## Locates the parametric value V in the sequence of knots. If
    ## "WithKnotRepetition" is True we consider the knot's representation
    ## with repetition of multiple knot value, otherwise we consider the
    ## knot's representation with no repetition of multiple knot values.
    ## VKnots (I1) <= V <= VKnots (I2) . if I1 = I2 V is a knot value (the
    ## tolerance criterion ParametricTolerance is used). . if I1 < 1 => V <
    ## VKnots(1) - Abs(ParametricTolerance) . if I2 > NbVKnots => V >
    ## VKnots(NbVKnots)+Abs(ParametricTolerance) poles insertion and removing
    ## The following methods are available only if the surface is Uniform or
    ## QuasiUniform in the considered direction The knot repartition is
    ## modified.

proc setPole*(this: var Geom_BSplineSurface, UIndex: cint, VIndex: cint, P: gp_Pnt)  {.importcpp: "SetPole".}
    ## Substitutes the pole of range (UIndex, VIndex) with P. If the surface
    ## is rational the weight of range (UIndex, VIndex) is not modified.

proc setPole*(this: var Geom_BSplineSurface, UIndex: cint, VIndex: cint, P: gp_Pnt, Weight: cdouble)  {.importcpp: "SetPole".}
    ## Substitutes the pole and the weight of range (UIndex, VIndex) with P
    ## and W.

proc setPoleCol*(this: var Geom_BSplineSurface, VIndex: cint, CPoles: TColgp_Array1OfPnt)  {.importcpp: "SetPoleCol".}
    ## Changes a column of poles or a part of this column. Raised if Vindex <
    ## 1 or VIndex > NbVPoles.

proc setPoleCol*(this: var Geom_BSplineSurface, VIndex: cint, CPoles: TColgp_Array1OfPnt, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "SetPoleCol".}
    ## Changes a column of poles or a part of this column with the
    ## corresponding weights. If the surface was rational it can become non
    ## rational. If the surface was non rational it can become rational.
    ## Raised if Vindex < 1 or VIndex > NbVPoles.

proc setPoleRow*(this: var Geom_BSplineSurface, UIndex: cint, CPoles: TColgp_Array1OfPnt, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "SetPoleRow".}
    ## Changes a row of poles or a part of this row with the corresponding
    ## weights. If the surface was rational it can become non rational. If
    ## the surface was non rational it can become rational. Raised if Uindex
    ## < 1 or UIndex > NbUPoles.

proc setPoleRow*(this: var Geom_BSplineSurface, UIndex: cint, CPoles: TColgp_Array1OfPnt)  {.importcpp: "SetPoleRow".}
    ## Changes a row of poles or a part of this row. Raised if Uindex < 1 or
    ## UIndex > NbUPoles.

proc setWeight*(this: var Geom_BSplineSurface, UIndex: cint, VIndex: cint, Weight: cdouble)  {.importcpp: "SetWeight".}
    ## Changes the weight of the pole of range UIndex, VIndex. If the surface
    ## was non rational it can become rational. If the surface was rational
    ## it can become non rational.

proc setWeightCol*(this: var Geom_BSplineSurface, VIndex: cint, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "SetWeightCol".}
    ## Changes a column of weights of a part of this column.

proc setWeightRow*(this: var Geom_BSplineSurface, UIndex: cint, CPoleWeights: TColStd_Array1OfReal)  {.importcpp: "SetWeightRow".}
    ## Changes a row of weights or a part of this row.

proc movePoint*(this: var Geom_BSplineSurface, U: cdouble, V: cdouble, P: gp_Pnt, UIndex1: cint, UIndex2: cint, VIndex1: cint, VIndex2: cint, UFirstIndex: var cint, ULastIndex: var cint, VFirstIndex: var cint, VLastIndex: var cint)  {.importcpp: "MovePoint".}
    ## Move a point with parameter U and V to P. given u,v as parameters) to
    ## reach a new position UIndex1, UIndex2, VIndex1, VIndex2: indicates the
    ## poles which can be moved if Problem in BSplineBasis calculation, no
    ## change for the curve and UFirstIndex, VLastIndex = 0 VFirstIndex,
    ## VLastIndex = 0

proc isUClosed*(this: Geom_BSplineSurface): bool  {.importcpp: "IsUClosed".}
    ## Returns true if the first control points row and the last control
    ## points row are identical. The tolerance criterion is Resolution from
    ## package gp.

proc isVClosed*(this: Geom_BSplineSurface): bool  {.importcpp: "IsVClosed".}
    ## Returns true if the first control points column and the last last
    ## control points column are identical. The tolerance criterion is
    ## Resolution from package gp.

proc isCNu*(this: Geom_BSplineSurface, N: cint): bool  {.importcpp: "IsCNu".}
    ## Returns True if the order of continuity of the surface in the U
    ## direction is N. Raised if N < 0.

proc isCNv*(this: Geom_BSplineSurface, N: cint): bool  {.importcpp: "IsCNv".}
    ## Returns True if the order of continuity of the surface in the V
    ## direction is N. Raised if N < 0.

proc isUPeriodic*(this: Geom_BSplineSurface): bool  {.importcpp: "IsUPeriodic".}
    ## Returns True if the surface is closed in the U direction and if the
    ## B-spline has been turned into a periodic surface using the function
    ## SetUPeriodic.

proc isURational*(this: Geom_BSplineSurface): bool  {.importcpp: "IsURational".}
    ## Returns False if for each row of weights all the weights are
    ## identical. The tolerance criterion is resolution from package gp.
    ## Example : |1.0, 1.0, 1.0| if Weights = |0.5, 0.5, 0.5| returns False
    ## |2.0, 2.0, 2.0|

proc isVPeriodic*(this: Geom_BSplineSurface): bool  {.importcpp: "IsVPeriodic".}
    ## Returns True if the surface is closed in the V direction and if the
    ## B-spline has been turned into a periodic surface using the function
    ## SetVPeriodic.

proc isVRational*(this: Geom_BSplineSurface): bool  {.importcpp: "IsVRational".}
    ## Returns False if for each column of weights all the weights are
    ## identical. The tolerance criterion is resolution from package gp.
    ## Examples : |1.0, 2.0, 0.5| if Weights = |1.0, 2.0, 0.5| returns False
    ## |1.0, 2.0, 0.5|

proc bounds*(this: Geom_BSplineSurface, U1: var cdouble, U2: var cdouble, V1: var cdouble, V2: var cdouble)  {.importcpp: "Bounds".}
    ## Returns the parametric bounds of the surface. Warnings : These
    ## parametric values are the bounds of the array of knots UKnots and
    ## VKnots only if the first knots and the last knots have a multiplicity
    ## equal to UDegree + 1 or VDegree + 1

proc continuity*(this: Geom_BSplineSurface): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns the continuity of the surface : C0 : only geometric
    ## continuity, C1 : continuity of the first derivative all along the
    ## Surface, C2 : continuity of the second derivative all along the
    ## Surface, C3 : continuity of the third derivative all along the
    ## Surface, CN : the order of continuity is infinite. A B-spline surface
    ## is infinitely continuously differentiable for the couple of parameters
    ## U, V such thats U != UKnots(i) and V != VKnots(i). The continuity of
    ## the surface at a knot value depends on the multiplicity of this knot.
    ## Example : If the surface is C1 in the V direction and C2 in the U
    ## direction this function returns Shape = C1.

proc firstUKnotIndex*(this: Geom_BSplineSurface): cint  {.importcpp: "FirstUKnotIndex".}
    ## Computes the Index of the UKnots which gives the first parametric
    ## value of the surface in the U direction. The UIso curve corresponding
    ## to this value is a boundary curve of the surface.

proc firstVKnotIndex*(this: Geom_BSplineSurface): cint  {.importcpp: "FirstVKnotIndex".}
    ## Computes the Index of the VKnots which gives the first parametric
    ## value of the surface in the V direction. The VIso curve corresponding
    ## to this knot is a boundary curve of the surface.

proc lastUKnotIndex*(this: Geom_BSplineSurface): cint  {.importcpp: "LastUKnotIndex".}
    ## Computes the Index of the UKnots which gives the last parametric value
    ## of the surface in the U direction. The UIso curve corresponding to
    ## this knot is a boundary curve of the surface.

proc lastVKnotIndex*(this: Geom_BSplineSurface): cint  {.importcpp: "LastVKnotIndex".}
    ## Computes the Index of the VKnots which gives the last parametric value
    ## of the surface in the V direction. The VIso curve corresponding to
    ## this knot is a boundary curve of the surface.

proc nbUKnots*(this: Geom_BSplineSurface): cint  {.importcpp: "NbUKnots".}
    ## Returns the number of knots in the U direction.

proc nbUPoles*(this: Geom_BSplineSurface): cint  {.importcpp: "NbUPoles".}
    ## Returns number of poles in the U direction.

proc nbVKnots*(this: Geom_BSplineSurface): cint  {.importcpp: "NbVKnots".}
    ## Returns the number of knots in the V direction.

proc nbVPoles*(this: Geom_BSplineSurface): cint  {.importcpp: "NbVPoles".}
    ## Returns the number of poles in the V direction.

proc pole*(this: Geom_BSplineSurface, UIndex: cint, VIndex: cint): gp_Pnt  {.importcpp: "Pole".}
    ## Returns the pole of range (UIndex, VIndex).

proc poles*(this: Geom_BSplineSurface, P: var TColgp_Array2OfPnt)  {.importcpp: "Poles".}
    ## Returns the poles of the B-spline surface.

proc poles*(this: Geom_BSplineSurface): TColgp_Array2OfPnt  {.importcpp: "Poles".}
    ## Returns the poles of the B-spline surface.

proc uDegree*(this: Geom_BSplineSurface): cint  {.importcpp: "UDegree".}
    ## Returns the degree of the normalized B-splines Ni,n in the U
    ## direction.

proc uKnot*(this: Geom_BSplineSurface, UIndex: cint): cdouble  {.importcpp: "UKnot".}
    ## Returns the Knot value of range UIndex. Raised if UIndex < 1 or UIndex
    ## > NbUKnots

proc uKnotDistribution*(this: Geom_BSplineSurface): GeomAbs_BSplKnotDistribution  {.importcpp: "UKnotDistribution".}
    ## Returns NonUniform or Uniform or QuasiUniform or PiecewiseBezier. If
    ## all the knots differ by a positive constant from the preceding knot in
    ## the U direction the B-spline surface can be : - Uniform if all the
    ## knots are of multiplicity 1, - QuasiUniform if all the knots are of
    ## multiplicity 1 except for the first and last knot which are of
    ## multiplicity Degree + 1, - PiecewiseBezier if the first and last knots
    ## have multiplicity Degree + 1 and if interior knots have multiplicity
    ## Degree otherwise the surface is non uniform in the U direction The
    ## tolerance criterion is Resolution from package gp.

proc uKnots*(this: Geom_BSplineSurface, Ku: var TColStd_Array1OfReal)  {.importcpp: "UKnots".}
    ## Returns the knots in the U direction.

proc uKnots*(this: Geom_BSplineSurface): TColStd_Array1OfReal  {.importcpp: "UKnots".}
    ## Returns the knots in the U direction.

proc uKnotSequence*(this: Geom_BSplineSurface, Ku: var TColStd_Array1OfReal)  {.importcpp: "UKnotSequence".}
    ## Returns the uknots sequence. In this sequence the knots with a
    ## multiplicity greater than 1 are repeated. Example : Ku = {k1, k1, k1,
    ## k2, k3, k3, k4, k4, k4}

proc uKnotSequence*(this: Geom_BSplineSurface): TColStd_Array1OfReal  {.importcpp: "UKnotSequence".}
    ## Returns the uknots sequence. In this sequence the knots with a
    ## multiplicity greater than 1 are repeated. Example : Ku = {k1, k1, k1,
    ## k2, k3, k3, k4, k4, k4}

proc uMultiplicity*(this: Geom_BSplineSurface, UIndex: cint): cint  {.importcpp: "UMultiplicity".}
    ## Returns the multiplicity value of knot of range UIndex in the u
    ## direction. Raised if UIndex < 1 or UIndex > NbUKnots.

proc uMultiplicities*(this: Geom_BSplineSurface, Mu: var TColStd_Array1OfInteger)  {.importcpp: "UMultiplicities".}
    ## Returns the multiplicities of the knots in the U direction.

proc uMultiplicities*(this: Geom_BSplineSurface): TColStd_Array1OfInteger  {.importcpp: "UMultiplicities".}
    ## Returns the multiplicities of the knots in the U direction.

proc vDegree*(this: Geom_BSplineSurface): cint  {.importcpp: "VDegree".}
    ## Returns the degree of the normalized B-splines Ni,d in the V
    ## direction.

proc vKnot*(this: Geom_BSplineSurface, VIndex: cint): cdouble  {.importcpp: "VKnot".}
    ## Returns the Knot value of range VIndex. Raised if VIndex < 1 or VIndex
    ## > NbVKnots

proc vKnotDistribution*(this: Geom_BSplineSurface): GeomAbs_BSplKnotDistribution  {.importcpp: "VKnotDistribution".}
    ## Returns NonUniform or Uniform or QuasiUniform or PiecewiseBezier. If
    ## all the knots differ by a positive constant from the preceding knot in
    ## the V direction the B-spline surface can be : - Uniform if all the
    ## knots are of multiplicity 1, - QuasiUniform if all the knots are of
    ## multiplicity 1 except for the first and last knot which are of
    ## multiplicity Degree + 1, - PiecewiseBezier if the first and last knots
    ## have multiplicity Degree + 1 and if interior knots have multiplicity
    ## Degree otherwise the surface is non uniform in the V direction. The
    ## tolerance criterion is Resolution from package gp.

proc vKnots*(this: Geom_BSplineSurface, Kv: var TColStd_Array1OfReal)  {.importcpp: "VKnots".}
    ## Returns the knots in the V direction.

proc vKnots*(this: Geom_BSplineSurface): TColStd_Array1OfReal  {.importcpp: "VKnots".}
    ## Returns the knots in the V direction.

proc vKnotSequence*(this: Geom_BSplineSurface, Kv: var TColStd_Array1OfReal)  {.importcpp: "VKnotSequence".}
    ## Returns the vknots sequence. In this sequence the knots with a
    ## multiplicity greater than 1 are repeated. Example : Kv = {k1, k1, k1,
    ## k2, k3, k3, k4, k4, k4}

proc vKnotSequence*(this: Geom_BSplineSurface): TColStd_Array1OfReal  {.importcpp: "VKnotSequence".}
    ## Returns the vknots sequence. In this sequence the knots with a
    ## multiplicity greater than 1 are repeated. Example : Ku = {k1, k1, k1,
    ## k2, k3, k3, k4, k4, k4}

proc vMultiplicity*(this: Geom_BSplineSurface, VIndex: cint): cint  {.importcpp: "VMultiplicity".}
    ## Returns the multiplicity value of knot of range VIndex in the v
    ## direction. Raised if VIndex < 1 or VIndex > NbVKnots

proc vMultiplicities*(this: Geom_BSplineSurface, Mv: var TColStd_Array1OfInteger)  {.importcpp: "VMultiplicities".}
    ## Returns the multiplicities of the knots in the V direction.

proc vMultiplicities*(this: Geom_BSplineSurface): TColStd_Array1OfInteger  {.importcpp: "VMultiplicities".}
    ## Returns the multiplicities of the knots in the V direction.

proc weight*(this: Geom_BSplineSurface, UIndex: cint, VIndex: cint): cdouble  {.importcpp: "Weight".}
    ## Returns the weight value of range UIndex, VIndex.

proc weights*(this: Geom_BSplineSurface, W: var TColStd_Array2OfReal)  {.importcpp: "Weights".}
    ## Returns the weights of the B-spline surface.

proc weights*(this: Geom_BSplineSurface): ptr TColStd_Array2OfReal  {.importcpp: "Weights".}
    ## Returns the weights of the B-spline surface. value and derivatives
    ## computation

proc d0*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}

proc d1*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "D1".}
    ## Raised if the continuity of the surface is not C1.

proc d2*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "D2".}
    ## Raised if the continuity of the surface is not C2.

proc d3*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "D3".}
    ## Raised if the continuity of the surface is not C3.

proc dN*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, Nu: cint, Nv: cint): gp_Vec  {.importcpp: "DN".}
    ## Nu is the order of derivation in the U parametric direction and Nv is
    ## the order of derivation in the V parametric direction.

proc localD0*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, FromUK1: cint, ToUK2: cint, FromVK1: cint, ToVK2: cint, P: var gp_Pnt)  {.importcpp: "LocalD0".}
    ## Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.

proc localD1*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, FromUK1: cint, ToUK2: cint, FromVK1: cint, ToVK2: cint, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec)  {.importcpp: "LocalD1".}
    ## Raised if the local continuity of the surface is not C1 between the
    ## knots FromUK1, ToUK2 and FromVK1, ToVK2. Raised if FromUK1 = ToUK2 or
    ## FromVK1 = ToVK2.

proc localD2*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, FromUK1: cint, ToUK2: cint, FromVK1: cint, ToVK2: cint, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec)  {.importcpp: "LocalD2".}
    ## Raised if the local continuity of the surface is not C2 between the
    ## knots FromUK1, ToUK2 and FromVK1, ToVK2. Raised if FromUK1 = ToUK2 or
    ## FromVK1 = ToVK2.

proc localD3*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, FromUK1: cint, ToUK2: cint, FromVK1: cint, ToVK2: cint, P: var gp_Pnt, D1U: var gp_Vec, D1V: var gp_Vec, D2U: var gp_Vec, D2V: var gp_Vec, D2UV: var gp_Vec, D3U: var gp_Vec, D3V: var gp_Vec, D3UUV: var gp_Vec, D3UVV: var gp_Vec)  {.importcpp: "LocalD3".}
    ## Raised if the local continuity of the surface is not C3 between the
    ## knots FromUK1, ToUK2 and FromVK1, ToVK2. Raised if FromUK1 = ToUK2 or
    ## FromVK1 = ToVK2.

proc localDN*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, FromUK1: cint, ToUK2: cint, FromVK1: cint, ToVK2: cint, Nu: cint, Nv: cint): gp_Vec  {.importcpp: "LocalDN".}
    ## Raised if the local continuity of the surface is not CNu between the
    ## knots FromUK1, ToUK2 and CNv between the knots FromVK1, ToVK2. Raised
    ## if FromUK1 = ToUK2 or FromVK1 = ToVK2.

proc localValue*(this: Geom_BSplineSurface, U: cdouble, V: cdouble, FromUK1: cint, ToUK2: cint, FromVK1: cint, ToVK2: cint): gp_Pnt  {.importcpp: "LocalValue".}
    ## Computes the point of parameter U, V on the BSpline surface patch
    ## defines between the knots UK1 UK2, VK1, VK2. U can be out of the
    ## bounds [Knot UK1, Knot UK2] and V can be outof the bounds [Knot VK1,
    ## Knot VK2] but for the computation we only use the definition of the
    ## surface between these knot values. Raises if FromUK1 = ToUK2 or
    ## FromVK1 = ToVK2.

proc uIso*(this: Geom_BSplineSurface, U: cdouble): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve. A B-spline curve is returned.

proc vIso*(this: Geom_BSplineSurface, V: cdouble): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve. A B-spline curve is returned.

proc uIso*(this: Geom_BSplineSurface, U: cdouble, CheckRational: bool): handle[Geom_Curve]  {.importcpp: "UIso".}
    ## Computes the U isoparametric curve. If CheckRational=False, no try to
    ## make it non-rational. A B-spline curve is returned.

proc vIso*(this: Geom_BSplineSurface, V: cdouble, CheckRational: bool): handle[Geom_Curve]  {.importcpp: "VIso".}
    ## Computes the V isoparametric curve. If CheckRational=False, no try to
    ## make it non-rational. A B-spline curve is returned. transformations

proc transform*(this: var Geom_BSplineSurface, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this BSpline surface.

proc maxDegree*(this: var Geom_BSplineSurface): cint  {.importcpp: "MaxDegree".}
    ## Returns the value of the maximum degree of the normalized B-spline
    ## basis functions in the u and v directions.

proc resolution*(this: var Geom_BSplineSurface, Tolerance3D: cdouble, UTolerance: var cdouble, VTolerance: var cdouble)  {.importcpp: "Resolution".}
    ## Computes two tolerance values for this BSpline surface, based on the
    ## given tolerance in 3D space Tolerance3D. The tolerances computed are:
    ## - UTolerance in the u parametric direction, and - VTolerance in the v
    ## parametric direction. If f(u,v) is the equation of this BSpline
    ## surface, UTolerance and VTolerance guarantee that : | u1 - u0 | <
    ## UTolerance and | v1 - v0 | < VTolerance ====> |f (u1,v1) - f (u0,v0)|
    ## < Tolerance3D

proc copy*(this: Geom_BSplineSurface): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this BSpline surface.

proc dumpJson*(this: Geom_BSplineSurface, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_BSplineSurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_BSplineSurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_BSplineSurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc segment*(this: var Geom_BSplineSurface, U1: cdouble, U2: cdouble, V1: cdouble, V2: cdouble, EpsU: cdouble, EpsV: cdouble, SegmentInU: bool, SegmentInV: bool)  {.importcpp: "segment".}
    ## Segments the surface between U1 and U2 in the U-Direction. between V1
    ## and V2 in the V-Direction. The control points are modified, the first
    ## and the last point are not the same.

proc updateUKnots*(this: var Geom_BSplineSurface)  {.importcpp: "UpdateUKnots".}
    ## Recompute the flatknots, the knotsdistribution, the continuity for U.

proc updateVKnots*(this: var Geom_BSplineSurface)  {.importcpp: "UpdateVKnots".}
    ## Recompute the flatknots, the knotsdistribution, the continuity for V.

{.pop.}  # header: "Geom_BSplineSurface.hxx"
