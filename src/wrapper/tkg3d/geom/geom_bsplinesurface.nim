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


proc newGeomBSplineSurface*(poles: TColgpArray2OfPnt; uKnots: TColStdArray1OfReal;
                           vKnots: TColStdArray1OfReal;
                           uMults: TColStdArray1OfInteger;
                           vMults: TColStdArray1OfInteger; uDegree: cint;
                           vDegree: cint; uPeriodic: bool = false;
                           vPeriodic: bool = false): GeomBSplineSurface {.cdecl,
    constructor, importcpp: "Geom_BSplineSurface(@)", dynlib: tkg3d.}
proc newGeomBSplineSurface*(poles: TColgpArray2OfPnt; weights: TColStdArray2OfReal;
                           uKnots: TColStdArray1OfReal;
                           vKnots: TColStdArray1OfReal;
                           uMults: TColStdArray1OfInteger;
                           vMults: TColStdArray1OfInteger; uDegree: cint;
                           vDegree: cint; uPeriodic: bool = false;
                           vPeriodic: bool = false): GeomBSplineSurface {.cdecl,
    constructor, importcpp: "Geom_BSplineSurface(@)", dynlib: tkg3d.}
proc exchangeUV*(this: var GeomBSplineSurface) {.cdecl, importcpp: "ExchangeUV",
    dynlib: tkg3d.}
proc setUPeriodic*(this: var GeomBSplineSurface) {.cdecl, importcpp: "SetUPeriodic",
    dynlib: tkg3d.}
proc setVPeriodic*(this: var GeomBSplineSurface) {.cdecl, importcpp: "SetVPeriodic",
    dynlib: tkg3d.}
proc periodicNormalization*(this: GeomBSplineSurface; u: var cfloat; v: var cfloat) {.
    noSideEffect, cdecl, importcpp: "PeriodicNormalization", dynlib: tkg3d.}
proc setUOrigin*(this: var GeomBSplineSurface; index: cint) {.cdecl,
    importcpp: "SetUOrigin", dynlib: tkg3d.}
proc setVOrigin*(this: var GeomBSplineSurface; index: cint) {.cdecl,
    importcpp: "SetVOrigin", dynlib: tkg3d.}
proc setUNotPeriodic*(this: var GeomBSplineSurface) {.cdecl,
    importcpp: "SetUNotPeriodic", dynlib: tkg3d.}
proc setVNotPeriodic*(this: var GeomBSplineSurface) {.cdecl,
    importcpp: "SetVNotPeriodic", dynlib: tkg3d.}
proc uReverse*(this: var GeomBSplineSurface) {.cdecl, importcpp: "UReverse",
    dynlib: tkg3d.}
proc vReverse*(this: var GeomBSplineSurface) {.cdecl, importcpp: "VReverse",
    dynlib: tkg3d.}
proc uReversedParameter*(this: GeomBSplineSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", dynlib: tkg3d.}
proc vReversedParameter*(this: GeomBSplineSurface; v: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", dynlib: tkg3d.}
proc increaseDegree*(this: var GeomBSplineSurface; uDegree: cint; vDegree: cint) {.
    cdecl, importcpp: "IncreaseDegree", dynlib: tkg3d.}
proc insertUKnots*(this: var GeomBSplineSurface; knots: TColStdArray1OfReal;
                  mults: TColStdArray1OfInteger;
                  parametricTolerance: cfloat = 0.0; add: bool = true) {.cdecl,
    importcpp: "InsertUKnots", dynlib: tkg3d.}
proc insertVKnots*(this: var GeomBSplineSurface; knots: TColStdArray1OfReal;
                  mults: TColStdArray1OfInteger;
                  parametricTolerance: cfloat = 0.0; add: bool = true) {.cdecl,
    importcpp: "InsertVKnots", dynlib: tkg3d.}
proc removeUKnot*(this: var GeomBSplineSurface; index: cint; m: cint; tolerance: cfloat): bool {.
    cdecl, importcpp: "RemoveUKnot", dynlib: tkg3d.}
proc removeVKnot*(this: var GeomBSplineSurface; index: cint; m: cint; tolerance: cfloat): bool {.
    cdecl, importcpp: "RemoveVKnot", dynlib: tkg3d.}
proc increaseUMultiplicity*(this: var GeomBSplineSurface; uIndex: cint; m: cint) {.
    cdecl, importcpp: "IncreaseUMultiplicity", dynlib: tkg3d.}
proc increaseUMultiplicity*(this: var GeomBSplineSurface; fromI1: cint; toI2: cint;
                           m: cint) {.cdecl, importcpp: "IncreaseUMultiplicity",
                                    dynlib: tkg3d.}
proc incrementUMultiplicity*(this: var GeomBSplineSurface; fromI1: cint; toI2: cint;
                            step: cint) {.cdecl,
                                        importcpp: "IncrementUMultiplicity",
                                        dynlib: tkg3d.}
proc increaseVMultiplicity*(this: var GeomBSplineSurface; vIndex: cint; m: cint) {.
    cdecl, importcpp: "IncreaseVMultiplicity", dynlib: tkg3d.}
proc increaseVMultiplicity*(this: var GeomBSplineSurface; fromI1: cint; toI2: cint;
                           m: cint) {.cdecl, importcpp: "IncreaseVMultiplicity",
                                    dynlib: tkg3d.}
proc incrementVMultiplicity*(this: var GeomBSplineSurface; fromI1: cint; toI2: cint;
                            step: cint) {.cdecl,
                                        importcpp: "IncrementVMultiplicity",
                                        dynlib: tkg3d.}
proc insertUKnot*(this: var GeomBSplineSurface; u: cfloat; m: cint;
                 parametricTolerance: cfloat; add: bool = true) {.cdecl,
    importcpp: "InsertUKnot", dynlib: tkg3d.}
proc insertVKnot*(this: var GeomBSplineSurface; v: cfloat; m: cint;
                 parametricTolerance: cfloat; add: bool = true) {.cdecl,
    importcpp: "InsertVKnot", dynlib: tkg3d.}
proc segment*(this: var GeomBSplineSurface; u1: cfloat; u2: cfloat; v1: cfloat;
             v2: cfloat; theUTolerance: cfloat = 1.0e-7;
             theVTolerance: cfloat = 1.0e-7) {.cdecl, importcpp: "Segment",
    dynlib: tkg3d.}
proc checkAndSegment*(this: var GeomBSplineSurface; u1: cfloat; u2: cfloat; v1: cfloat;
                     v2: cfloat; theUTolerance: cfloat = 1.0e-7;
                     theVTolerance: cfloat = 1.0e-7) {.cdecl,
    importcpp: "CheckAndSegment", dynlib: tkg3d.}
proc setUKnot*(this: var GeomBSplineSurface; uIndex: cint; k: cfloat) {.cdecl,
    importcpp: "SetUKnot", dynlib: tkg3d.}
proc setUKnots*(this: var GeomBSplineSurface; uk: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetUKnots", dynlib: tkg3d.}
proc setUKnot*(this: var GeomBSplineSurface; uIndex: cint; k: cfloat; m: cint) {.cdecl,
    importcpp: "SetUKnot", dynlib: tkg3d.}
proc setVKnot*(this: var GeomBSplineSurface; vIndex: cint; k: cfloat) {.cdecl,
    importcpp: "SetVKnot", dynlib: tkg3d.}
proc setVKnots*(this: var GeomBSplineSurface; vk: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetVKnots", dynlib: tkg3d.}
proc setVKnot*(this: var GeomBSplineSurface; vIndex: cint; k: cfloat; m: cint) {.cdecl,
    importcpp: "SetVKnot", dynlib: tkg3d.}
proc locateU*(this: GeomBSplineSurface; u: cfloat; parametricTolerance: cfloat;
             i1: var cint; i2: var cint; withKnotRepetition: bool = false) {.noSideEffect,
    cdecl, importcpp: "LocateU", dynlib: tkg3d.}
proc locateV*(this: GeomBSplineSurface; v: cfloat; parametricTolerance: cfloat;
             i1: var cint; i2: var cint; withKnotRepetition: bool = false) {.noSideEffect,
    cdecl, importcpp: "LocateV", dynlib: tkg3d.}
proc setPole*(this: var GeomBSplineSurface; uIndex: cint; vIndex: cint; p: Pnt) {.cdecl,
    importcpp: "SetPole", dynlib: tkg3d.}
proc setPole*(this: var GeomBSplineSurface; uIndex: cint; vIndex: cint; p: Pnt;
             weight: cfloat) {.cdecl, importcpp: "SetPole", dynlib: tkg3d.}
proc setPoleCol*(this: var GeomBSplineSurface; vIndex: cint; cPoles: TColgpArray1OfPnt) {.
    cdecl, importcpp: "SetPoleCol", dynlib: tkg3d.}
proc setPoleCol*(this: var GeomBSplineSurface; vIndex: cint;
                cPoles: TColgpArray1OfPnt; cPoleWeights: TColStdArray1OfReal) {.
    cdecl, importcpp: "SetPoleCol", dynlib: tkg3d.}
proc setPoleRow*(this: var GeomBSplineSurface; uIndex: cint;
                cPoles: TColgpArray1OfPnt; cPoleWeights: TColStdArray1OfReal) {.
    cdecl, importcpp: "SetPoleRow", dynlib: tkg3d.}
proc setPoleRow*(this: var GeomBSplineSurface; uIndex: cint; cPoles: TColgpArray1OfPnt) {.
    cdecl, importcpp: "SetPoleRow", dynlib: tkg3d.}
proc setWeight*(this: var GeomBSplineSurface; uIndex: cint; vIndex: cint; weight: cfloat) {.
    cdecl, importcpp: "SetWeight", dynlib: tkg3d.}
proc setWeightCol*(this: var GeomBSplineSurface; vIndex: cint;
                  cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetWeightCol", dynlib: tkg3d.}
proc setWeightRow*(this: var GeomBSplineSurface; uIndex: cint;
                  cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetWeightRow", dynlib: tkg3d.}
proc movePoint*(this: var GeomBSplineSurface; u: cfloat; v: cfloat; p: Pnt; uIndex1: cint;
               uIndex2: cint; vIndex1: cint; vIndex2: cint; uFirstIndex: var cint;
               uLastIndex: var cint; vFirstIndex: var cint; vLastIndex: var cint) {.
    cdecl, importcpp: "MovePoint", dynlib: tkg3d.}
proc isUClosed*(this: GeomBSplineSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkg3d.}
proc isVClosed*(this: GeomBSplineSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkg3d.}
proc isCNu*(this: GeomBSplineSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", dynlib: tkg3d.}
proc isCNv*(this: GeomBSplineSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", dynlib: tkg3d.}
proc isUPeriodic*(this: GeomBSplineSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkg3d.}
proc isURational*(this: GeomBSplineSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", dynlib: tkg3d.}
proc isVPeriodic*(this: GeomBSplineSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkg3d.}
proc isVRational*(this: GeomBSplineSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", dynlib: tkg3d.}
proc bounds*(this: GeomBSplineSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", dynlib: tkg3d.}
proc continuity*(this: GeomBSplineSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg3d.}
proc firstUKnotIndex*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "FirstUKnotIndex", dynlib: tkg3d.}
proc firstVKnotIndex*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "FirstVKnotIndex", dynlib: tkg3d.}
proc lastUKnotIndex*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "LastUKnotIndex", dynlib: tkg3d.}
proc lastVKnotIndex*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "LastVKnotIndex", dynlib: tkg3d.}
proc nbUKnots*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", dynlib: tkg3d.}
proc nbUPoles*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", dynlib: tkg3d.}
proc nbVKnots*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", dynlib: tkg3d.}
proc nbVPoles*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", dynlib: tkg3d.}
proc pole*(this: GeomBSplineSurface; uIndex: cint; vIndex: cint): Pnt {.noSideEffect,
    cdecl, importcpp: "Pole", dynlib: tkg3d.}
proc poles*(this: GeomBSplineSurface; p: var TColgpArray2OfPnt) {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkg3d.}
proc poles*(this: GeomBSplineSurface): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkg3d.}
proc uDegree*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkg3d.}
proc uKnot*(this: GeomBSplineSurface; uIndex: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "UKnot", dynlib: tkg3d.}
proc uKnotDistribution*(this: GeomBSplineSurface): GeomAbsBSplKnotDistribution {.
    noSideEffect, cdecl, importcpp: "UKnotDistribution", dynlib: tkg3d.}
proc uKnots*(this: GeomBSplineSurface; ku: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "UKnots", dynlib: tkg3d.}
proc uKnots*(this: GeomBSplineSurface): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "UKnots", dynlib: tkg3d.}
proc uKnotSequence*(this: GeomBSplineSurface; ku: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "UKnotSequence", dynlib: tkg3d.}
proc uKnotSequence*(this: GeomBSplineSurface): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "UKnotSequence", dynlib: tkg3d.}
proc uMultiplicity*(this: GeomBSplineSurface; uIndex: cint): cint {.noSideEffect,
    cdecl, importcpp: "UMultiplicity", dynlib: tkg3d.}
proc uMultiplicities*(this: GeomBSplineSurface; mu: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "UMultiplicities", dynlib: tkg3d.}
proc uMultiplicities*(this: GeomBSplineSurface): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "UMultiplicities", dynlib: tkg3d.}
proc vDegree*(this: GeomBSplineSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkg3d.}
proc vKnot*(this: GeomBSplineSurface; vIndex: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "VKnot", dynlib: tkg3d.}
proc vKnotDistribution*(this: GeomBSplineSurface): GeomAbsBSplKnotDistribution {.
    noSideEffect, cdecl, importcpp: "VKnotDistribution", dynlib: tkg3d.}
proc vKnots*(this: GeomBSplineSurface; kv: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "VKnots", dynlib: tkg3d.}
proc vKnots*(this: GeomBSplineSurface): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "VKnots", dynlib: tkg3d.}
proc vKnotSequence*(this: GeomBSplineSurface; kv: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "VKnotSequence", dynlib: tkg3d.}
proc vKnotSequence*(this: GeomBSplineSurface): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "VKnotSequence", dynlib: tkg3d.}
proc vMultiplicity*(this: GeomBSplineSurface; vIndex: cint): cint {.noSideEffect,
    cdecl, importcpp: "VMultiplicity", dynlib: tkg3d.}
proc vMultiplicities*(this: GeomBSplineSurface; mv: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "VMultiplicities", dynlib: tkg3d.}
proc vMultiplicities*(this: GeomBSplineSurface): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "VMultiplicities", dynlib: tkg3d.}
proc weight*(this: GeomBSplineSurface; uIndex: cint; vIndex: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Weight", dynlib: tkg3d.}
proc weights*(this: GeomBSplineSurface; w: var TColStdArray2OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", dynlib: tkg3d.}
proc weights*(this: GeomBSplineSurface): ptr TColStdArray2OfReal {.noSideEffect,
    cdecl, importcpp: "Weights", dynlib: tkg3d.}
proc d0*(this: GeomBSplineSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: GeomBSplineSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomBSplineSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomBSplineSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    dynlib: tkg3d.}
proc dn*(this: GeomBSplineSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkg3d.}
proc localD0*(this: GeomBSplineSurface; u: cfloat; v: cfloat; fromUK1: cint; toUK2: cint;
             fromVK1: cint; toVK2: cint; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "LocalD0", dynlib: tkg3d.}
proc localD1*(this: GeomBSplineSurface; u: cfloat; v: cfloat; fromUK1: cint; toUK2: cint;
             fromVK1: cint; toVK2: cint; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, cdecl, importcpp: "LocalD1", dynlib: tkg3d.}
proc localD2*(this: GeomBSplineSurface; u: cfloat; v: cfloat; fromUK1: cint; toUK2: cint;
             fromVK1: cint; toVK2: cint; p: var Pnt; d1u: var Vec; d1v: var Vec;
             d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "LocalD2", dynlib: tkg3d.}
proc localD3*(this: GeomBSplineSurface; u: cfloat; v: cfloat; fromUK1: cint; toUK2: cint;
             fromVK1: cint; toVK2: cint; p: var Pnt; d1u: var Vec; d1v: var Vec;
             d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
             d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl,
    importcpp: "LocalD3", dynlib: tkg3d.}
proc localDN*(this: GeomBSplineSurface; u: cfloat; v: cfloat; fromUK1: cint; toUK2: cint;
             fromVK1: cint; toVK2: cint; nu: cint; nv: cint): Vec {.noSideEffect, cdecl,
    importcpp: "LocalDN", dynlib: tkg3d.}
proc localValue*(this: GeomBSplineSurface; u: cfloat; v: cfloat; fromUK1: cint;
                toUK2: cint; fromVK1: cint; toVK2: cint): Pnt {.noSideEffect, cdecl,
    importcpp: "LocalValue", dynlib: tkg3d.}
proc uIso*(this: GeomBSplineSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", dynlib: tkg3d.}
proc vIso*(this: GeomBSplineSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", dynlib: tkg3d.}
proc uIso*(this: GeomBSplineSurface; u: cfloat; checkRational: bool): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "UIso", dynlib: tkg3d.}
proc vIso*(this: GeomBSplineSurface; v: cfloat; checkRational: bool): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "VIso", dynlib: tkg3d.}
proc transform*(this: var GeomBSplineSurface; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkg3d.}
proc maxDegreeBSplineSurface*(): cint {.cdecl, importcpp: "Geom_BSplineSurface::MaxDegree(@)",
                       dynlib: tkg3d.}
proc resolution*(this: var GeomBSplineSurface; tolerance3D: cfloat;
                uTolerance: var cfloat; vTolerance: var cfloat) {.cdecl,
    importcpp: "Resolution", dynlib: tkg3d.}
proc copy*(this: GeomBSplineSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg3d.}
proc dumpJson*(this: GeomBSplineSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}