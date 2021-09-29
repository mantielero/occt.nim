##  Created on: 1993-03-24
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
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom2d_UndefinedDerivative"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"

type
  Geom2dBSplineCurve* {.importcpp: "Geom2d_BSplineCurve",
                       header: "Geom2d_BSplineCurve.hxx", bycopy.} = object of Geom2dBoundedCurve ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## non-rational
                                                                                           ## B_spline
                                                                                           ## curve
                                                                                           ## on
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## basis
                                                                                           ## <Knots,
                                                                                           ## Multiplicities>
                                                                                           ## of
                                                                                           ## degree
                                                                                           ## <Degree>.
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
                                                                                           ## Degree
                                                                                           ## <=
                                                                                           ## MaxDegree.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Knots.Length()
                                                                                           ## ==
                                                                                           ## Mults.Length()
                                                                                           ## >=
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Knots(i)
                                                                                           ## <
                                                                                           ## Knots(i+1)
                                                                                           ## (Knots
                                                                                           ## are
                                                                                           ## increasing)
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## 1
                                                                                           ## <=
                                                                                           ## Mults(i)
                                                                                           ## <=
                                                                                           ## Degree
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## On
                                                                                           ## a
                                                                                           ## non
                                                                                           ## periodic
                                                                                           ## curve
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## last
                                                                                           ## multiplicities
                                                                                           ##
                                                                                           ## !
                                                                                           ## may
                                                                                           ## be
                                                                                           ## Degree+1
                                                                                           ## (this
                                                                                           ## is
                                                                                           ## even
                                                                                           ## recommanded
                                                                                           ## if
                                                                                           ## you
                                                                                           ## want
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## curve
                                                                                           ## to
                                                                                           ## start
                                                                                           ## and
                                                                                           ## finish
                                                                                           ## on
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## last
                                                                                           ## pole).
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## On
                                                                                           ## a
                                                                                           ## periodic
                                                                                           ## curve
                                                                                           ## the
                                                                                           ## first
                                                                                           ## and
                                                                                           ## the
                                                                                           ## last
                                                                                           ## multicities
                                                                                           ##
                                                                                           ## !
                                                                                           ## must
                                                                                           ## be
                                                                                           ## the
                                                                                           ## same.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## non-periodic
                                                                                           ## curves
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Poles.Length()
                                                                                           ## ==
                                                                                           ## Sum(Mults(i))
                                                                                           ## -
                                                                                           ## Degree
                                                                                           ## -
                                                                                           ## 1
                                                                                           ## >=
                                                                                           ## 2
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## on
                                                                                           ## periodic
                                                                                           ## curves
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Poles.Length()
                                                                                           ## ==
                                                                                           ## Sum(Mults(i))
                                                                                           ## except
                                                                                           ## the
                                                                                           ## first
                                                                                           ## or
                                                                                           ## last
                                                                                           ##
                                                                                           ## !
                                                                                           ## Recompute
                                                                                           ## the
                                                                                           ## flatknots,
                                                                                           ## the
                                                                                           ## knotsdistribution,
                                                                                           ## the
                                                                                           ## continuity.



type
  HandleGeom2dBSplineCurve* = Handle[Geom2dBSplineCurve]

## ! Describes a BSpline curve.
## ! A BSpline curve can be:
## ! - uniform or non-uniform,
## ! - rational or non-rational,
## ! - periodic or non-periodic.
## ! A BSpline curve is defined by:
## ! - its degree; the degree for a
## ! Geom2d_BSplineCurve is limited to a value (25)
## ! which is defined and controlled by the system. This
## ! value is returned by the function MaxDegree;
## ! - its periodic or non-periodic nature;
## ! - a table of poles (also called control points), with
## ! their associated weights if the BSpline curve is
## ! rational. The poles of the curve are "control points"
## ! used to deform the curve. If the curve is
## ! non-periodic, the first pole is the start point of the
## ! curve, and the last pole is the end point of the
## ! curve. The segment, which joins the first pole to the
## ! second pole, is the tangent to the curve at its start
## ! point, and the segment, which joins the last pole to
## ! the second-from-last pole, is the tangent to the
## ! curve at its end point. If the curve is periodic, these
## ! geometric properties are not verified. It is more
## ! difficult to give a geometric signification to the
## ! weights but they are useful for providing exact
## ! representations of the arcs of a circle or ellipse.
## ! Moreover, if the weights of all the poles are equal,
## ! the curve has a polynomial equation; it is
## ! therefore a non-rational curve.
## ! - a table of knots with their multiplicities. For a
## ! Geom2d_BSplineCurve, the table of knots is an
## ! increasing sequence of reals without repetition; the
## ! multiplicities define the repetition of the knots. A
## ! BSpline curve is a piecewise polynomial or rational
## ! curve. The knots are the parameters of junction
## ! points between two pieces. The multiplicity
## ! Mult(i) of the knot Knot(i) of the BSpline
## ! curve is related to the degree of continuity of the
## ! curve at the knot Knot(i), which is equal to
## ! Degree - Mult(i) where Degree is the
## ! degree of the BSpline curve.
## ! If the knots are regularly spaced (i.e. the difference
## ! between two consecutive knots is a constant), three
## ! specific and frequently used cases of knot distribution
## ! can be identified:
## ! - "uniform" if all multiplicities are equal to 1,
## ! - "quasi-uniform" if all multiplicities are equal to 1,
## ! except the first and the last knot which have a
## ! multiplicity of Degree + 1, where Degree is
## ! the degree of the BSpline curve,
## ! - "Piecewise Bezier" if all multiplicities are equal to
## ! Degree except the first and last knot which have
## ! a multiplicity of Degree + 1, where Degree is
## ! the degree of the BSpline curve. A curve of this
## ! type is a concatenation of arcs of Bezier curves.
## ! If the BSpline curve is not periodic:
## ! - the bounds of the Poles and Weights tables are 1
## ! and NbPoles, where NbPoles is the number of
## ! poles of the BSpline curve,
## ! - the bounds of the Knots and Multiplicities tables are
## ! 1 and NbKnots, where NbKnots is the number
## ! of knots of the BSpline curve.
## ! If the BSpline curve is periodic, and if there are k
## ! periodic knots and p periodic poles, the period is:
## ! period = Knot(k + 1) - Knot(1)
## ! and the poles and knots tables can be considered as
## ! infinite tables, such that:
## ! - Knot(i+k) = Knot(i) + period
## ! - Pole(i+p) = Pole(i)
## ! Note: data structures of a periodic BSpline curve are
## ! more complex than those of a non-periodic one.
## ! Warnings :
## ! In this class we consider that a weight value is zero if
## ! Weight <= Resolution from package gp.
## ! For two parametric values (or two knot values) U1, U2 we
## ! consider that U1 = U2 if Abs (U2 - U1) <= Epsilon (U1).
## ! For two weights values W1, W2 we consider that W1 = W2 if
## ! Abs (W2 - W1) <= Epsilon (W1).  The method Epsilon is
## ! defined in the class Real from package Standard.
## !
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
  Geom2dBSplineCurvebaseType* = Geom2dBoundedCurve
#[ 
proc constructGeom2dBSplineCurve*(poles: TColgpArray1OfPnt2d;
                                 knots: TColStdArray1OfReal;
                                 multiplicities: TColStdArray1OfInteger;
                                 degree: int; periodic: StandardBoolean = false): Geom2dBSplineCurve {.
    constructor, importcpp: "Geom2d_BSplineCurve(@)",
    header: "Geom2d_BSplineCurve.hxx".}
proc constructGeom2dBSplineCurve*(poles: TColgpArray1OfPnt2d;
                                 weights: TColStdArray1OfReal;
                                 knots: TColStdArray1OfReal;
                                 multiplicities: TColStdArray1OfInteger;
                                 degree: int; periodic: StandardBoolean = false): Geom2dBSplineCurve {.
    constructor, importcpp: "Geom2d_BSplineCurve(@)",
    header: "Geom2d_BSplineCurve.hxx".}
proc increaseDegree*(this: var Geom2dBSplineCurve; degree: int) {.
    importcpp: "IncreaseDegree", header: "Geom2d_BSplineCurve.hxx".}
proc increaseMultiplicity*(this: var Geom2dBSplineCurve; index: int; m: int) {.
    importcpp: "IncreaseMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc increaseMultiplicity*(this: var Geom2dBSplineCurve; i1: int; i2: int; m: int) {.
    importcpp: "IncreaseMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc incrementMultiplicity*(this: var Geom2dBSplineCurve; i1: int; i2: int; m: int) {.
    importcpp: "IncrementMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc insertKnot*(this: var Geom2dBSplineCurve; u: StandardReal; m: int = 1;
                parametricTolerance: StandardReal = 0.0) {.importcpp: "InsertKnot",
    header: "Geom2d_BSplineCurve.hxx".}
proc insertKnots*(this: var Geom2dBSplineCurve; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger;
                 parametricTolerance: StandardReal = 0.0;
                 add: StandardBoolean = false) {.importcpp: "InsertKnots",
    header: "Geom2d_BSplineCurve.hxx".}
proc removeKnot*(this: var Geom2dBSplineCurve; index: int; m: int;
                tolerance: StandardReal): StandardBoolean {.
    importcpp: "RemoveKnot", header: "Geom2d_BSplineCurve.hxx".}
proc insertPoleAfter*(this: var Geom2dBSplineCurve; index: int; p: Pnt2d;
                     weight: StandardReal = 1.0) {.importcpp: "InsertPoleAfter",
    header: "Geom2d_BSplineCurve.hxx".}
proc insertPoleBefore*(this: var Geom2dBSplineCurve; index: int; p: Pnt2d;
                      weight: StandardReal = 1.0) {.importcpp: "InsertPoleBefore",
    header: "Geom2d_BSplineCurve.hxx".}
proc removePole*(this: var Geom2dBSplineCurve; index: int) {.importcpp: "RemovePole",
    header: "Geom2d_BSplineCurve.hxx".}
proc reverse*(this: var Geom2dBSplineCurve) {.importcpp: "Reverse",
    header: "Geom2d_BSplineCurve.hxx".}
proc reversedParameter*(this: Geom2dBSplineCurve; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_BSplineCurve.hxx".}
proc segment*(this: var Geom2dBSplineCurve; u1: StandardReal; u2: StandardReal;
             theTolerance: StandardReal = pConfusion()) {.importcpp: "Segment",
    header: "Geom2d_BSplineCurve.hxx".}
proc setKnot*(this: var Geom2dBSplineCurve; index: int; k: StandardReal) {.
    importcpp: "SetKnot", header: "Geom2d_BSplineCurve.hxx".}
proc setKnots*(this: var Geom2dBSplineCurve; k: TColStdArray1OfReal) {.
    importcpp: "SetKnots", header: "Geom2d_BSplineCurve.hxx".}
proc setKnot*(this: var Geom2dBSplineCurve; index: int; k: StandardReal; m: int) {.
    importcpp: "SetKnot", header: "Geom2d_BSplineCurve.hxx".}
proc periodicNormalization*(this: Geom2dBSplineCurve; u: var StandardReal) {.
    noSideEffect, importcpp: "PeriodicNormalization",
    header: "Geom2d_BSplineCurve.hxx".}
proc setPeriodic*(this: var Geom2dBSplineCurve) {.importcpp: "SetPeriodic",
    header: "Geom2d_BSplineCurve.hxx".}
proc setOrigin*(this: var Geom2dBSplineCurve; index: int) {.importcpp: "SetOrigin",
    header: "Geom2d_BSplineCurve.hxx".}
proc setNotPeriodic*(this: var Geom2dBSplineCurve) {.importcpp: "SetNotPeriodic",
    header: "Geom2d_BSplineCurve.hxx".}
proc setPole*(this: var Geom2dBSplineCurve; index: int; p: Pnt2d) {.
    importcpp: "SetPole", header: "Geom2d_BSplineCurve.hxx".}
proc setPole*(this: var Geom2dBSplineCurve; index: int; p: Pnt2d; weight: StandardReal) {.
    importcpp: "SetPole", header: "Geom2d_BSplineCurve.hxx".}
proc setWeight*(this: var Geom2dBSplineCurve; index: int; weight: StandardReal) {.
    importcpp: "SetWeight", header: "Geom2d_BSplineCurve.hxx".}
proc movePoint*(this: var Geom2dBSplineCurve; u: StandardReal; p: Pnt2d; index1: int;
               index2: int; firstModifiedPole: var int; lastModifiedPole: var int) {.
    importcpp: "MovePoint", header: "Geom2d_BSplineCurve.hxx".}
proc movePointAndTangent*(this: var Geom2dBSplineCurve; u: StandardReal; p: Pnt2d;
                         tangent: Vec2d; tolerance: StandardReal;
                         startingCondition: int; endingCondition: int;
                         errorStatus: var int) {.importcpp: "MovePointAndTangent",
    header: "Geom2d_BSplineCurve.hxx".}
proc isCN*(this: Geom2dBSplineCurve; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom2d_BSplineCurve.hxx".}
proc isG1*(this: Geom2dBSplineCurve; theTf: StandardReal; theTl: StandardReal;
          theAngTol: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsG1", header: "Geom2d_BSplineCurve.hxx".}
proc isClosed*(this: Geom2dBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_BSplineCurve.hxx".}
proc isPeriodic*(this: Geom2dBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_BSplineCurve.hxx".}
proc isRational*(this: Geom2dBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom2d_BSplineCurve.hxx".}
proc continuity*(this: Geom2dBSplineCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_BSplineCurve.hxx".}
proc degree*(this: Geom2dBSplineCurve): int {.noSideEffect, importcpp: "Degree",
    header: "Geom2d_BSplineCurve.hxx".}
proc d0*(this: Geom2dBSplineCurve; u: StandardReal; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_BSplineCurve.hxx".}
proc d1*(this: Geom2dBSplineCurve; u: StandardReal; p: var Pnt2d; v1: var Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_BSplineCurve.hxx".}
proc d2*(this: Geom2dBSplineCurve; u: StandardReal; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d) {.noSideEffect, importcpp: "D2",
                      header: "Geom2d_BSplineCurve.hxx".}
proc d3*(this: Geom2dBSplineCurve; u: StandardReal; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d; v3: var Vec2d) {.noSideEffect, importcpp: "D3",
                                  header: "Geom2d_BSplineCurve.hxx".}
proc dn*(this: Geom2dBSplineCurve; u: StandardReal; n: int): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Geom2d_BSplineCurve.hxx".}
proc localValue*(this: Geom2dBSplineCurve; u: StandardReal; fromK1: int; toK2: int): Pnt2d {.
    noSideEffect, importcpp: "LocalValue", header: "Geom2d_BSplineCurve.hxx".}
proc localD0*(this: Geom2dBSplineCurve; u: StandardReal; fromK1: int; toK2: int;
             p: var Pnt2d) {.noSideEffect, importcpp: "LocalD0",
                          header: "Geom2d_BSplineCurve.hxx".}
proc localD1*(this: Geom2dBSplineCurve; u: StandardReal; fromK1: int; toK2: int;
             p: var Pnt2d; v1: var Vec2d) {.noSideEffect, importcpp: "LocalD1",
                                      header: "Geom2d_BSplineCurve.hxx".}
proc localD2*(this: Geom2dBSplineCurve; u: StandardReal; fromK1: int; toK2: int;
             p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.noSideEffect,
    importcpp: "LocalD2", header: "Geom2d_BSplineCurve.hxx".}
proc localD3*(this: Geom2dBSplineCurve; u: StandardReal; fromK1: int; toK2: int;
             p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.noSideEffect,
    importcpp: "LocalD3", header: "Geom2d_BSplineCurve.hxx".}
proc localDN*(this: Geom2dBSplineCurve; u: StandardReal; fromK1: int; toK2: int; n: int): Vec2d {.
    noSideEffect, importcpp: "LocalDN", header: "Geom2d_BSplineCurve.hxx".}
proc endPoint*(this: Geom2dBSplineCurve): Pnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "Geom2d_BSplineCurve.hxx".}
proc firstUKnotIndex*(this: Geom2dBSplineCurve): int {.noSideEffect,
    importcpp: "FirstUKnotIndex", header: "Geom2d_BSplineCurve.hxx".}
proc firstParameter*(this: Geom2dBSplineCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_BSplineCurve.hxx".}
proc knot*(this: Geom2dBSplineCurve; index: int): StandardReal {.noSideEffect,
    importcpp: "Knot", header: "Geom2d_BSplineCurve.hxx".}
proc knots*(this: Geom2dBSplineCurve; k: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "Geom2d_BSplineCurve.hxx".}
proc knots*(this: Geom2dBSplineCurve): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Knots", header: "Geom2d_BSplineCurve.hxx".}
proc knotSequence*(this: Geom2dBSplineCurve; k: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "KnotSequence", header: "Geom2d_BSplineCurve.hxx".}
proc knotSequence*(this: Geom2dBSplineCurve): TColStdArray1OfReal {.noSideEffect,
    importcpp: "KnotSequence", header: "Geom2d_BSplineCurve.hxx".}
proc knotDistribution*(this: Geom2dBSplineCurve): GeomAbsBSplKnotDistribution {.
    noSideEffect, importcpp: "KnotDistribution", header: "Geom2d_BSplineCurve.hxx".}
proc lastUKnotIndex*(this: Geom2dBSplineCurve): int {.noSideEffect,
    importcpp: "LastUKnotIndex", header: "Geom2d_BSplineCurve.hxx".}
proc lastParameter*(this: Geom2dBSplineCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_BSplineCurve.hxx".}
proc locateU*(this: Geom2dBSplineCurve; u: StandardReal;
             parametricTolerance: StandardReal; i1: var int; i2: var int;
             withKnotRepetition: StandardBoolean = false) {.noSideEffect,
    importcpp: "LocateU", header: "Geom2d_BSplineCurve.hxx".}
proc multiplicity*(this: Geom2dBSplineCurve; index: int): int {.noSideEffect,
    importcpp: "Multiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc multiplicities*(this: Geom2dBSplineCurve; m: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Multiplicities", header: "Geom2d_BSplineCurve.hxx".}
proc multiplicities*(this: Geom2dBSplineCurve): TColStdArray1OfInteger {.
    noSideEffect, importcpp: "Multiplicities", header: "Geom2d_BSplineCurve.hxx".}
proc nbKnots*(this: Geom2dBSplineCurve): int {.noSideEffect, importcpp: "NbKnots",
    header: "Geom2d_BSplineCurve.hxx".}
proc nbPoles*(this: Geom2dBSplineCurve): int {.noSideEffect, importcpp: "NbPoles",
    header: "Geom2d_BSplineCurve.hxx".}
proc pole*(this: Geom2dBSplineCurve; index: int): Pnt2d {.noSideEffect,
    importcpp: "Pole", header: "Geom2d_BSplineCurve.hxx".}
proc poles*(this: Geom2dBSplineCurve; p: var TColgpArray1OfPnt2d) {.noSideEffect,
    importcpp: "Poles", header: "Geom2d_BSplineCurve.hxx".}
proc poles*(this: Geom2dBSplineCurve): TColgpArray1OfPnt2d {.noSideEffect,
    importcpp: "Poles", header: "Geom2d_BSplineCurve.hxx".}
proc startPoint*(this: Geom2dBSplineCurve): Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "Geom2d_BSplineCurve.hxx".}
proc weight*(this: Geom2dBSplineCurve; index: int): StandardReal {.noSideEffect,
    importcpp: "Weight", header: "Geom2d_BSplineCurve.hxx".}
proc weights*(this: Geom2dBSplineCurve; w: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom2d_BSplineCurve.hxx".}
proc weights*(this: Geom2dBSplineCurve): ptr TColStdArray1OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom2d_BSplineCurve.hxx".}
proc transform*(this: var Geom2dBSplineCurve; t: Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_BSplineCurve.hxx".}
proc maxDegree*(): int {.importcpp: "Geom2d_BSplineCurve::MaxDegree(@)",
                      header: "Geom2d_BSplineCurve.hxx".}
proc resolution*(this: var Geom2dBSplineCurve; toleranceUV: StandardReal;
                uTolerance: var StandardReal) {.importcpp: "Resolution",
    header: "Geom2d_BSplineCurve.hxx".}
proc copy*(this: Geom2dBSplineCurve): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_BSplineCurve.hxx".}
proc dumpJson*(this: Geom2dBSplineCurve; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom2d_BSplineCurve.hxx".}


proc getTypeName*(): cstring {.importcpp: "Geom2d_BSplineCurve::get_type_name(@)",
                            header: "Geom2d_BSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_BSplineCurve::get_type_descriptor(@)",
    header: "Geom2d_BSplineCurve.hxx".}
proc dynamicType*(this: Geom2dBSplineCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_BSplineCurve.hxx".} ]#