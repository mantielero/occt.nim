##  Created on: 1993-03-09
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_BSplineSurface"
type
  HandleGeomBSplineSurface* = Handle[GeomBSplineSurface]

## ! Describes a BSpline surface.
## ! In each parametric direction, a BSpline surface can be:
## ! - uniform or non-uniform,
## ! - rational or non-rational,
## ! - periodic or non-periodic.
## ! A BSpline surface is defined by:
## ! - its degrees, in the u and v parametric directions,
## ! - its periodic characteristic, in the u and v parametric directions,
## ! - a table of poles, also called control points (together
## ! with the associated weights if the surface is rational), and
## ! - a table of knots, together with the associated multiplicities.
## ! The degree of a Geom_BSplineSurface is limited to
## ! a value (25) which is defined and controlled by the
## ! system. This value is returned by the function MaxDegree.
## ! Poles and Weights
## ! Poles and Weights are manipulated using two associative double arrays:
## ! - the poles table, which is a double array of gp_Pnt points, and
## ! - the weights table, which is a double array of reals.
## ! The bounds of the poles and weights arrays are:
## ! - 1 and NbUPoles for the row bounds (provided
## ! that the BSpline surface is not periodic in the u
## ! parametric direction), where NbUPoles is the
## ! number of poles of the surface in the u parametric direction, and
## ! - 1 and NbVPoles for the column bounds (provided
## ! that the BSpline surface is not periodic in the v
## ! parametric direction), where NbVPoles is the
## ! number of poles of the surface in the v parametric direction.
## ! The poles of the surface are the points used to shape
## ! and reshape the surface. They comprise a rectangular network.
## ! If the surface is not periodic:
## ! - The points (1, 1), (NbUPoles, 1), (1,
## ! NbVPoles), and (NbUPoles, NbVPoles)
## ! are the four parametric "corners" of the surface.
## ! - The first column of poles and the last column of
## ! poles define two BSpline curves which delimit the
## ! surface in the v parametric direction. These are the
## ! v isoparametric curves corresponding to the two
## ! bounds of the v parameter.
## ! - The first row of poles and the last row of poles
## ! define two BSpline curves which delimit the surface
## ! in the u parametric direction. These are the u
## ! isoparametric curves corresponding to the two bounds of the u parameter.
## ! If the surface is periodic, these geometric properties are not verified.
## ! It is more difficult to define a geometrical significance
## ! for the weights. However they are useful for
## ! representing a quadric surface precisely. Moreover, if
## ! the weights of all the poles are equal, the surface has
## ! a polynomial equation, and hence is a "non-rational surface".
## ! The non-rational surface is a special, but frequently
## ! used, case, where all poles have identical weights.
## ! The weights are defined and used only in the case of
## ! a rational surface. The rational characteristic is
## ! defined in each parametric direction. A surface can be
## ! rational in the u parametric direction, and
## ! non-rational in the v parametric direction.
## ! Knots and Multiplicities
## ! For a Geom_BSplineSurface the table of knots is
## ! made up of two increasing sequences of reals, without
## ! repetition, one for each parametric direction. The
## ! multiplicities define the repetition of the knots.
## ! A BSpline surface comprises multiple contiguous
## ! patches, which are themselves polynomial or rational
## ! surfaces. The knots are the parameters of the
## ! isoparametric curves which limit these contiguous
## ! patches. The multiplicity of a knot on a BSpline
## ! surface (in a given parametric direction) is related to
## ! the degree of continuity of the surface at that knot in
## ! that parametric direction:
## ! Degree of continuity at knot(i) = Degree - Multi(i) where:
## ! - Degree is the degree of the BSpline surface in
## ! the given parametric direction, and
## ! - Multi(i) is the multiplicity of knot number i in
## ! the given parametric direction.
## ! There are some special cases, where the knots are
## ! regularly spaced in one parametric direction (i.e. the
## ! difference between two consecutive knots is a constant).
## ! - "Uniform": all the multiplicities are equal to 1.
## ! - "Quasi-uniform": all the multiplicities are equal to 1,
## ! except for the first and last knots in this parametric
## ! direction, and these are equal to Degree + 1.
## ! - "Piecewise Bezier": all the multiplicities are equal to
## ! Degree except for the first and last knots, which
## ! are equal to Degree + 1. This surface is a
## ! concatenation of Bezier patches in the given
## ! parametric direction.
## ! If the BSpline surface is not periodic in a given
## ! parametric direction, the bounds of the knots and
## ! multiplicities tables are 1 and NbKnots, where
## ! NbKnots is the number of knots of the BSpline
## ! surface in that parametric direction.
## ! If the BSpline surface is periodic in a given parametric
## ! direction, and there are k periodic knots and p
## ! periodic poles in that parametric direction:
## ! - the period is such that:
## ! period = Knot(k+1) - Knot(1), and
## ! - the poles and knots tables in that parametric
## ! direction can be considered as infinite tables, such that:
## ! Knot(i+k) = Knot(i) + period, and
## ! Pole(i+p) = Pole(i)
## ! Note: The data structure tables for a periodic BSpline
## ! surface are more complex than those of a non-periodic one.
## ! References :
## ! . A survey of curve and surface methods in CADG Wolfgang BOHM
## ! CAGD 1 (1984)
## ! . On de Boor-like algorithms and blossoming Wolfgang BOEHM
## ! cagd 5 (1988)
## ! . Blossoming and knot insertion algorithms for B-spline curves
## ! Ronald N. GOLDMAN
## ! . Modelisation des surfaces en CAO, Henri GIAUME Peugeot SA
## ! . Curves and Surfaces for Computer Aided Geometric Design,
## ! a practical guide Gerald Farin

type
  GeomBSplineSurface* {.importcpp: "Geom_BSplineSurface",
                       header: "Geom_BSplineSurface.hxx", bycopy.} = object of GeomBoundedSurface ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## non-rational
                                                                                           ## b-spline
                                                                                           ## surface
                                                                                           ## (weights
                                                                                           ##
                                                                                           ## !
                                                                                           ## default
                                                                                           ## value
                                                                                           ## is
                                                                                           ## 1.).
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## following
                                                                                           ## conditions
                                                                                           ## must
                                                                                           ## be
                                                                                           ## verified.
                                                                                           ##
                                                                                           ## !
                                                                                           ## 0
                                                                                           ## <
                                                                                           ## UDegree
                                                                                           ## <=
                                                                                           ## MaxDegree.
                                                                                           ##
                                                                                           ## !
                                                                                           ## UKnots.Length()
                                                                                           ## ==
                                                                                           ## UMults.Length()
                                                                                           ## >=
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ## UKnots(i)
                                                                                           ## <
                                                                                           ## UKnots(i+1)
                                                                                           ## (Knots
                                                                                           ## are
                                                                                           ## increasing)
                                                                                           ##
                                                                                           ## !
                                                                                           ## 1
                                                                                           ## <=
                                                                                           ## UMults(i)
                                                                                           ## <=
                                                                                           ## UDegree
                                                                                           ##
                                                                                           ## !
                                                                                           ## On
                                                                                           ## a
                                                                                           ## non
                                                                                           ## uperiodic
                                                                                           ## surface
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## last
                                                                                           ##
                                                                                           ## !
                                                                                           ## umultiplicities
                                                                                           ## may
                                                                                           ## be
                                                                                           ## UDegree+1
                                                                                           ## (this
                                                                                           ## is
                                                                                           ## even
                                                                                           ##
                                                                                           ## !
                                                                                           ## recommanded
                                                                                           ## if
                                                                                           ## you
                                                                                           ## want
                                                                                           ## the
                                                                                           ## curve
                                                                                           ## to
                                                                                           ## start
                                                                                           ## and
                                                                                           ## finish
                                                                                           ## on
                                                                                           ##
                                                                                           ## !
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## last
                                                                                           ## pole).
                                                                                           ##
                                                                                           ## !
                                                                                           ## On
                                                                                           ## a
                                                                                           ## uperiodic
                                                                                           ## surface
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## the
                                                                                           ## last
                                                                                           ##
                                                                                           ## !
                                                                                           ## umultiplicities
                                                                                           ## must
                                                                                           ## be
                                                                                           ## the
                                                                                           ## same.
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## non-uperiodic
                                                                                           ## surfaces
                                                                                           ##
                                                                                           ## !
                                                                                           ## Poles.ColLength()
                                                                                           ## ==
                                                                                           ## Sum(UMults(i))
                                                                                           ## -
                                                                                           ## UDegree
                                                                                           ## -
                                                                                           ## 1
                                                                                           ## >=
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## uperiodic
                                                                                           ## surfaces
                                                                                           ##
                                                                                           ## !
                                                                                           ## Poles.ColLength()
                                                                                           ## ==
                                                                                           ## Sum(UMults(i))
                                                                                           ## except
                                                                                           ## the
                                                                                           ## first
                                                                                           ## or
                                                                                           ## last
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## previous
                                                                                           ## conditions
                                                                                           ## for
                                                                                           ## U
                                                                                           ## holds
                                                                                           ## also
                                                                                           ## for
                                                                                           ## V,
                                                                                           ## with
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## RowLength
                                                                                           ## of
                                                                                           ## the
                                                                                           ## poles.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Segments
                                                                                           ## the
                                                                                           ## surface
                                                                                           ## between
                                                                                           ## U1
                                                                                           ## and
                                                                                           ## U2
                                                                                           ## in
                                                                                           ## the
                                                                                           ## U-Direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## between
                                                                                           ## V1
                                                                                           ## and
                                                                                           ## V2
                                                                                           ## in
                                                                                           ## the
                                                                                           ## V-Direction.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## control
                                                                                           ## points
                                                                                           ## are
                                                                                           ## modified,
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## the
                                                                                           ## last
                                                                                           ## point
                                                                                           ##
                                                                                           ## !
                                                                                           ## are
                                                                                           ## not
                                                                                           ## the
                                                                                           ## same.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Parameters
                                                                                           ## EpsU,
                                                                                           ## EpsV
                                                                                           ## define
                                                                                           ## the
                                                                                           ## proximity
                                                                                           ## along
                                                                                           ## U-Direction
                                                                                           ## and
                                                                                           ## V-Direction
                                                                                           ## respectively.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Recompute
                                                                                           ## the
                                                                                           ## flatknots,
                                                                                           ## the
                                                                                           ## knotsdistribution,
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## continuity
                                                                                           ## for
                                                                                           ## U.


proc constructGeomBSplineSurface*(poles: TColgpArray2OfPnt;
                                 uKnots: TColStdArray1OfReal;
                                 vKnots: TColStdArray1OfReal;
                                 uMults: TColStdArray1OfInteger;
                                 vMults: TColStdArray1OfInteger; uDegree: int;
                                 vDegree: int; uPeriodic: bool = false;
                                 vPeriodic: bool = false): GeomBSplineSurface {.
    constructor, importcpp: "Geom_BSplineSurface(@)",
    header: "Geom_BSplineSurface.hxx".}
proc constructGeomBSplineSurface*(poles: TColgpArray2OfPnt;
                                 weights: TColStdArray2OfReal;
                                 uKnots: TColStdArray1OfReal;
                                 vKnots: TColStdArray1OfReal;
                                 uMults: TColStdArray1OfInteger;
                                 vMults: TColStdArray1OfInteger; uDegree: int;
                                 vDegree: int; uPeriodic: bool = false;
                                 vPeriodic: bool = false): GeomBSplineSurface {.
    constructor, importcpp: "Geom_BSplineSurface(@)",
    header: "Geom_BSplineSurface.hxx".}
proc exchangeUV*(this: var GeomBSplineSurface) {.importcpp: "ExchangeUV",
    header: "Geom_BSplineSurface.hxx".}
proc setUPeriodic*(this: var GeomBSplineSurface) {.importcpp: "SetUPeriodic",
    header: "Geom_BSplineSurface.hxx".}
proc setVPeriodic*(this: var GeomBSplineSurface) {.importcpp: "SetVPeriodic",
    header: "Geom_BSplineSurface.hxx".}
proc periodicNormalization*(this: GeomBSplineSurface; u: var float; v: var float) {.
    noSideEffect, importcpp: "PeriodicNormalization",
    header: "Geom_BSplineSurface.hxx".}
proc setUOrigin*(this: var GeomBSplineSurface; index: int) {.importcpp: "SetUOrigin",
    header: "Geom_BSplineSurface.hxx".}
proc setVOrigin*(this: var GeomBSplineSurface; index: int) {.importcpp: "SetVOrigin",
    header: "Geom_BSplineSurface.hxx".}
proc setUNotPeriodic*(this: var GeomBSplineSurface) {.importcpp: "SetUNotPeriodic",
    header: "Geom_BSplineSurface.hxx".}
proc setVNotPeriodic*(this: var GeomBSplineSurface) {.importcpp: "SetVNotPeriodic",
    header: "Geom_BSplineSurface.hxx".}
proc uReverse*(this: var GeomBSplineSurface) {.importcpp: "UReverse",
    header: "Geom_BSplineSurface.hxx".}
proc vReverse*(this: var GeomBSplineSurface) {.importcpp: "VReverse",
    header: "Geom_BSplineSurface.hxx".}
proc uReversedParameter*(this: GeomBSplineSurface; u: float): float {.noSideEffect,
    importcpp: "UReversedParameter", header: "Geom_BSplineSurface.hxx".}
proc vReversedParameter*(this: GeomBSplineSurface; v: float): float {.noSideEffect,
    importcpp: "VReversedParameter", header: "Geom_BSplineSurface.hxx".}
proc increaseDegree*(this: var GeomBSplineSurface; uDegree: int; vDegree: int) {.
    importcpp: "IncreaseDegree", header: "Geom_BSplineSurface.hxx".}
proc insertUKnots*(this: var GeomBSplineSurface; knots: TColStdArray1OfReal;
                  mults: TColStdArray1OfInteger; parametricTolerance: float = 0.0;
                  add: bool = true) {.importcpp: "InsertUKnots",
                                  header: "Geom_BSplineSurface.hxx".}
proc insertVKnots*(this: var GeomBSplineSurface; knots: TColStdArray1OfReal;
                  mults: TColStdArray1OfInteger; parametricTolerance: float = 0.0;
                  add: bool = true) {.importcpp: "InsertVKnots",
                                  header: "Geom_BSplineSurface.hxx".}
proc removeUKnot*(this: var GeomBSplineSurface; index: int; m: int; tolerance: float): bool {.
    importcpp: "RemoveUKnot", header: "Geom_BSplineSurface.hxx".}
proc removeVKnot*(this: var GeomBSplineSurface; index: int; m: int; tolerance: float): bool {.
    importcpp: "RemoveVKnot", header: "Geom_BSplineSurface.hxx".}
proc increaseUMultiplicity*(this: var GeomBSplineSurface; uIndex: int; m: int) {.
    importcpp: "IncreaseUMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc increaseUMultiplicity*(this: var GeomBSplineSurface; fromI1: int; toI2: int; m: int) {.
    importcpp: "IncreaseUMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc incrementUMultiplicity*(this: var GeomBSplineSurface; fromI1: int; toI2: int;
                            step: int) {.importcpp: "IncrementUMultiplicity",
                                       header: "Geom_BSplineSurface.hxx".}
proc increaseVMultiplicity*(this: var GeomBSplineSurface; vIndex: int; m: int) {.
    importcpp: "IncreaseVMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc increaseVMultiplicity*(this: var GeomBSplineSurface; fromI1: int; toI2: int; m: int) {.
    importcpp: "IncreaseVMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc incrementVMultiplicity*(this: var GeomBSplineSurface; fromI1: int; toI2: int;
                            step: int) {.importcpp: "IncrementVMultiplicity",
                                       header: "Geom_BSplineSurface.hxx".}
proc insertUKnot*(this: var GeomBSplineSurface; u: float; m: int;
                 parametricTolerance: float; add: bool = true) {.
    importcpp: "InsertUKnot", header: "Geom_BSplineSurface.hxx".}
proc insertVKnot*(this: var GeomBSplineSurface; v: float; m: int;
                 parametricTolerance: float; add: bool = true) {.
    importcpp: "InsertVKnot", header: "Geom_BSplineSurface.hxx".}
proc segment*(this: var GeomBSplineSurface; u1: float; u2: float; v1: float; v2: float;
             theUTolerance: float = pConfusion();
             theVTolerance: float = pConfusion()) {.importcpp: "Segment",
    header: "Geom_BSplineSurface.hxx".}
proc checkAndSegment*(this: var GeomBSplineSurface; u1: float; u2: float; v1: float;
                     v2: float; theUTolerance: float = pConfusion();
                     theVTolerance: float = pConfusion()) {.
    importcpp: "CheckAndSegment", header: "Geom_BSplineSurface.hxx".}
proc setUKnot*(this: var GeomBSplineSurface; uIndex: int; k: float) {.
    importcpp: "SetUKnot", header: "Geom_BSplineSurface.hxx".}
proc setUKnots*(this: var GeomBSplineSurface; uk: TColStdArray1OfReal) {.
    importcpp: "SetUKnots", header: "Geom_BSplineSurface.hxx".}
proc setUKnot*(this: var GeomBSplineSurface; uIndex: int; k: float; m: int) {.
    importcpp: "SetUKnot", header: "Geom_BSplineSurface.hxx".}
proc setVKnot*(this: var GeomBSplineSurface; vIndex: int; k: float) {.
    importcpp: "SetVKnot", header: "Geom_BSplineSurface.hxx".}
proc setVKnots*(this: var GeomBSplineSurface; vk: TColStdArray1OfReal) {.
    importcpp: "SetVKnots", header: "Geom_BSplineSurface.hxx".}
proc setVKnot*(this: var GeomBSplineSurface; vIndex: int; k: float; m: int) {.
    importcpp: "SetVKnot", header: "Geom_BSplineSurface.hxx".}
proc locateU*(this: GeomBSplineSurface; u: float; parametricTolerance: float;
             i1: var int; i2: var int; withKnotRepetition: bool = false) {.noSideEffect,
    importcpp: "LocateU", header: "Geom_BSplineSurface.hxx".}
proc locateV*(this: GeomBSplineSurface; v: float; parametricTolerance: float;
             i1: var int; i2: var int; withKnotRepetition: bool = false) {.noSideEffect,
    importcpp: "LocateV", header: "Geom_BSplineSurface.hxx".}
proc setPole*(this: var GeomBSplineSurface; uIndex: int; vIndex: int; p: Pnt) {.
    importcpp: "SetPole", header: "Geom_BSplineSurface.hxx".}
proc setPole*(this: var GeomBSplineSurface; uIndex: int; vIndex: int; p: Pnt;
             weight: float) {.importcpp: "SetPole",
                            header: "Geom_BSplineSurface.hxx".}
proc setPoleCol*(this: var GeomBSplineSurface; vIndex: int; cPoles: TColgpArray1OfPnt) {.
    importcpp: "SetPoleCol", header: "Geom_BSplineSurface.hxx".}
proc setPoleCol*(this: var GeomBSplineSurface; vIndex: int; cPoles: TColgpArray1OfPnt;
                cPoleWeights: TColStdArray1OfReal) {.importcpp: "SetPoleCol",
    header: "Geom_BSplineSurface.hxx".}
proc setPoleRow*(this: var GeomBSplineSurface; uIndex: int; cPoles: TColgpArray1OfPnt;
                cPoleWeights: TColStdArray1OfReal) {.importcpp: "SetPoleRow",
    header: "Geom_BSplineSurface.hxx".}
proc setPoleRow*(this: var GeomBSplineSurface; uIndex: int; cPoles: TColgpArray1OfPnt) {.
    importcpp: "SetPoleRow", header: "Geom_BSplineSurface.hxx".}
proc setWeight*(this: var GeomBSplineSurface; uIndex: int; vIndex: int; weight: float) {.
    importcpp: "SetWeight", header: "Geom_BSplineSurface.hxx".}
proc setWeightCol*(this: var GeomBSplineSurface; vIndex: int;
                  cPoleWeights: TColStdArray1OfReal) {.importcpp: "SetWeightCol",
    header: "Geom_BSplineSurface.hxx".}
proc setWeightRow*(this: var GeomBSplineSurface; uIndex: int;
                  cPoleWeights: TColStdArray1OfReal) {.importcpp: "SetWeightRow",
    header: "Geom_BSplineSurface.hxx".}
proc movePoint*(this: var GeomBSplineSurface; u: float; v: float; p: Pnt; uIndex1: int;
               uIndex2: int; vIndex1: int; vIndex2: int; uFirstIndex: var int;
               uLastIndex: var int; vFirstIndex: var int; vLastIndex: var int) {.
    importcpp: "MovePoint", header: "Geom_BSplineSurface.hxx".}
proc isUClosed*(this: GeomBSplineSurface): bool {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_BSplineSurface.hxx".}
proc isVClosed*(this: GeomBSplineSurface): bool {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_BSplineSurface.hxx".}
proc isCNu*(this: GeomBSplineSurface; n: int): bool {.noSideEffect, importcpp: "IsCNu",
    header: "Geom_BSplineSurface.hxx".}
proc isCNv*(this: GeomBSplineSurface; n: int): bool {.noSideEffect, importcpp: "IsCNv",
    header: "Geom_BSplineSurface.hxx".}
proc isUPeriodic*(this: GeomBSplineSurface): bool {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_BSplineSurface.hxx".}
proc isURational*(this: GeomBSplineSurface): bool {.noSideEffect,
    importcpp: "IsURational", header: "Geom_BSplineSurface.hxx".}
proc isVPeriodic*(this: GeomBSplineSurface): bool {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_BSplineSurface.hxx".}
proc isVRational*(this: GeomBSplineSurface): bool {.noSideEffect,
    importcpp: "IsVRational", header: "Geom_BSplineSurface.hxx".}
proc bounds*(this: GeomBSplineSurface; u1: var float; u2: var float; v1: var float;
            v2: var float) {.noSideEffect, importcpp: "Bounds",
                          header: "Geom_BSplineSurface.hxx".}
proc continuity*(this: GeomBSplineSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_BSplineSurface.hxx".}
proc firstUKnotIndex*(this: GeomBSplineSurface): int {.noSideEffect,
    importcpp: "FirstUKnotIndex", header: "Geom_BSplineSurface.hxx".}
proc firstVKnotIndex*(this: GeomBSplineSurface): int {.noSideEffect,
    importcpp: "FirstVKnotIndex", header: "Geom_BSplineSurface.hxx".}
proc lastUKnotIndex*(this: GeomBSplineSurface): int {.noSideEffect,
    importcpp: "LastUKnotIndex", header: "Geom_BSplineSurface.hxx".}
proc lastVKnotIndex*(this: GeomBSplineSurface): int {.noSideEffect,
    importcpp: "LastVKnotIndex", header: "Geom_BSplineSurface.hxx".}
proc nbUKnots*(this: GeomBSplineSurface): int {.noSideEffect, importcpp: "NbUKnots",
    header: "Geom_BSplineSurface.hxx".}
proc nbUPoles*(this: GeomBSplineSurface): int {.noSideEffect, importcpp: "NbUPoles",
    header: "Geom_BSplineSurface.hxx".}
proc nbVKnots*(this: GeomBSplineSurface): int {.noSideEffect, importcpp: "NbVKnots",
    header: "Geom_BSplineSurface.hxx".}
proc nbVPoles*(this: GeomBSplineSurface): int {.noSideEffect, importcpp: "NbVPoles",
    header: "Geom_BSplineSurface.hxx".}
proc pole*(this: GeomBSplineSurface; uIndex: int; vIndex: int): Pnt {.noSideEffect,
    importcpp: "Pole", header: "Geom_BSplineSurface.hxx".}
proc poles*(this: GeomBSplineSurface; p: var TColgpArray2OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "Geom_BSplineSurface.hxx".}
proc poles*(this: GeomBSplineSurface): TColgpArray2OfPnt {.noSideEffect,
    importcpp: "Poles", header: "Geom_BSplineSurface.hxx".}
proc uDegree*(this: GeomBSplineSurface): int {.noSideEffect, importcpp: "UDegree",
    header: "Geom_BSplineSurface.hxx".}
proc uKnot*(this: GeomBSplineSurface; uIndex: int): float {.noSideEffect,
    importcpp: "UKnot", header: "Geom_BSplineSurface.hxx".}
proc uKnotDistribution*(this: GeomBSplineSurface): GeomAbsBSplKnotDistribution {.
    noSideEffect, importcpp: "UKnotDistribution", header: "Geom_BSplineSurface.hxx".}
proc uKnots*(this: GeomBSplineSurface; ku: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "UKnots", header: "Geom_BSplineSurface.hxx".}
proc uKnots*(this: GeomBSplineSurface): TColStdArray1OfReal {.noSideEffect,
    importcpp: "UKnots", header: "Geom_BSplineSurface.hxx".}
proc uKnotSequence*(this: GeomBSplineSurface; ku: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "UKnotSequence", header: "Geom_BSplineSurface.hxx".}
proc uKnotSequence*(this: GeomBSplineSurface): TColStdArray1OfReal {.noSideEffect,
    importcpp: "UKnotSequence", header: "Geom_BSplineSurface.hxx".}
proc uMultiplicity*(this: GeomBSplineSurface; uIndex: int): int {.noSideEffect,
    importcpp: "UMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc uMultiplicities*(this: GeomBSplineSurface; mu: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "UMultiplicities", header: "Geom_BSplineSurface.hxx".}
proc uMultiplicities*(this: GeomBSplineSurface): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "UMultiplicities", header: "Geom_BSplineSurface.hxx".}
proc vDegree*(this: GeomBSplineSurface): int {.noSideEffect, importcpp: "VDegree",
    header: "Geom_BSplineSurface.hxx".}
proc vKnot*(this: GeomBSplineSurface; vIndex: int): float {.noSideEffect,
    importcpp: "VKnot", header: "Geom_BSplineSurface.hxx".}
proc vKnotDistribution*(this: GeomBSplineSurface): GeomAbsBSplKnotDistribution {.
    noSideEffect, importcpp: "VKnotDistribution", header: "Geom_BSplineSurface.hxx".}
proc vKnots*(this: GeomBSplineSurface; kv: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "VKnots", header: "Geom_BSplineSurface.hxx".}
proc vKnots*(this: GeomBSplineSurface): TColStdArray1OfReal {.noSideEffect,
    importcpp: "VKnots", header: "Geom_BSplineSurface.hxx".}
proc vKnotSequence*(this: GeomBSplineSurface; kv: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "VKnotSequence", header: "Geom_BSplineSurface.hxx".}
proc vKnotSequence*(this: GeomBSplineSurface): TColStdArray1OfReal {.noSideEffect,
    importcpp: "VKnotSequence", header: "Geom_BSplineSurface.hxx".}
proc vMultiplicity*(this: GeomBSplineSurface; vIndex: int): int {.noSideEffect,
    importcpp: "VMultiplicity", header: "Geom_BSplineSurface.hxx".}
proc vMultiplicities*(this: GeomBSplineSurface; mv: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "VMultiplicities", header: "Geom_BSplineSurface.hxx".}
proc vMultiplicities*(this: GeomBSplineSurface): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "VMultiplicities", header: "Geom_BSplineSurface.hxx".}
proc weight*(this: GeomBSplineSurface; uIndex: int; vIndex: int): float {.noSideEffect,
    importcpp: "Weight", header: "Geom_BSplineSurface.hxx".}
proc weights*(this: GeomBSplineSurface; w: var TColStdArray2OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom_BSplineSurface.hxx".}
proc weights*(this: GeomBSplineSurface): ptr TColStdArray2OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom_BSplineSurface.hxx".}
proc d0*(this: GeomBSplineSurface; u: float; v: float; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_BSplineSurface.hxx".}
proc d1*(this: GeomBSplineSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_BSplineSurface.hxx".}
proc d2*(this: GeomBSplineSurface; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect,
    importcpp: "D2", header: "Geom_BSplineSurface.hxx".}
proc d3*(this: GeomBSplineSurface; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_BSplineSurface.hxx".}
proc dn*(this: GeomBSplineSurface; u: float; v: float; nu: int; nv: int): Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_BSplineSurface.hxx".}
proc localD0*(this: GeomBSplineSurface; u: float; v: float; fromUK1: int; toUK2: int;
             fromVK1: int; toVK2: int; p: var Pnt) {.noSideEffect, importcpp: "LocalD0",
    header: "Geom_BSplineSurface.hxx".}
proc localD1*(this: GeomBSplineSurface; u: float; v: float; fromUK1: int; toUK2: int;
             fromVK1: int; toVK2: int; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "LocalD1", header: "Geom_BSplineSurface.hxx".}
proc localD2*(this: GeomBSplineSurface; u: float; v: float; fromUK1: int; toUK2: int;
             fromVK1: int; toVK2: int; p: var Pnt; d1u: var Vec; d1v: var Vec; d2u: var Vec;
             d2v: var Vec; d2uv: var Vec) {.noSideEffect, importcpp: "LocalD2",
                                      header: "Geom_BSplineSurface.hxx".}
proc localD3*(this: GeomBSplineSurface; u: float; v: float; fromUK1: int; toUK2: int;
             fromVK1: int; toVK2: int; p: var Pnt; d1u: var Vec; d1v: var Vec; d2u: var Vec;
             d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
             d3uvv: var Vec) {.noSideEffect, importcpp: "LocalD3",
                            header: "Geom_BSplineSurface.hxx".}
proc localDN*(this: GeomBSplineSurface; u: float; v: float; fromUK1: int; toUK2: int;
             fromVK1: int; toVK2: int; nu: int; nv: int): Vec {.noSideEffect,
    importcpp: "LocalDN", header: "Geom_BSplineSurface.hxx".}
proc localValue*(this: GeomBSplineSurface; u: float; v: float; fromUK1: int; toUK2: int;
                fromVK1: int; toVK2: int): Pnt {.noSideEffect,
    importcpp: "LocalValue", header: "Geom_BSplineSurface.hxx".}
proc uIso*(this: GeomBSplineSurface; u: float): Handle[GeomCurve] {.noSideEffect,
    importcpp: "UIso", header: "Geom_BSplineSurface.hxx".}
proc vIso*(this: GeomBSplineSurface; v: float): Handle[GeomCurve] {.noSideEffect,
    importcpp: "VIso", header: "Geom_BSplineSurface.hxx".}
proc uIso*(this: GeomBSplineSurface; u: float; checkRational: bool): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_BSplineSurface.hxx".}
proc vIso*(this: GeomBSplineSurface; v: float; checkRational: bool): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_BSplineSurface.hxx".}
proc transform*(this: var GeomBSplineSurface; t: Trsf) {.importcpp: "Transform",
    header: "Geom_BSplineSurface.hxx".}
proc maxDegree*(): int {.importcpp: "Geom_BSplineSurface::MaxDegree(@)",
                      header: "Geom_BSplineSurface.hxx".}
proc resolution*(this: var GeomBSplineSurface; tolerance3D: float;
                uTolerance: var float; vTolerance: var float) {.
    importcpp: "Resolution", header: "Geom_BSplineSurface.hxx".}
proc copy*(this: GeomBSplineSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_BSplineSurface.hxx".}
proc dumpJson*(this: GeomBSplineSurface; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_BSplineSurface.hxx".}
type
  GeomBSplineSurfacebaseType* = GeomBoundedSurface

proc getTypeName*(): cstring {.importcpp: "Geom_BSplineSurface::get_type_name(@)",
                            header: "Geom_BSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_BSplineSurface::get_type_descriptor(@)",
    header: "Geom_BSplineSurface.hxx".}
proc dynamicType*(this: GeomBSplineSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_BSplineSurface.hxx".}
