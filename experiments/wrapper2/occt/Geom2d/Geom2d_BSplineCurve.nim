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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Precision/Precision,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_BSplKnotDistribution,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColgp/TColgp_HArray1OfPnt2d, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Real,
  Geom2d_BoundedCurve, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger

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
  Handle_Geom2d_BSplineCurve* = handle[Geom2d_BSplineCurve]

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
  Geom2d_BSplineCurve* {.importcpp: "Geom2d_BSplineCurve",
                        header: "Geom2d_BSplineCurve.hxx", bycopy.} = object of Geom2d_BoundedCurve ##
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


proc constructGeom2d_BSplineCurve*(Poles: TColgp_Array1OfPnt2d;
                                  Knots: TColStd_Array1OfReal;
                                  Multiplicities: TColStd_Array1OfInteger;
                                  Degree: Standard_Integer;
                                  Periodic: Standard_Boolean = Standard_False): Geom2d_BSplineCurve {.
    constructor, importcpp: "Geom2d_BSplineCurve(@)",
    header: "Geom2d_BSplineCurve.hxx".}
proc constructGeom2d_BSplineCurve*(Poles: TColgp_Array1OfPnt2d;
                                  Weights: TColStd_Array1OfReal;
                                  Knots: TColStd_Array1OfReal;
                                  Multiplicities: TColStd_Array1OfInteger;
                                  Degree: Standard_Integer;
                                  Periodic: Standard_Boolean = Standard_False): Geom2d_BSplineCurve {.
    constructor, importcpp: "Geom2d_BSplineCurve(@)",
    header: "Geom2d_BSplineCurve.hxx".}
proc IncreaseDegree*(this: var Geom2d_BSplineCurve; Degree: Standard_Integer) {.
    importcpp: "IncreaseDegree", header: "Geom2d_BSplineCurve.hxx".}
proc IncreaseMultiplicity*(this: var Geom2d_BSplineCurve; Index: Standard_Integer;
                          M: Standard_Integer) {.
    importcpp: "IncreaseMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc IncreaseMultiplicity*(this: var Geom2d_BSplineCurve; I1: Standard_Integer;
                          I2: Standard_Integer; M: Standard_Integer) {.
    importcpp: "IncreaseMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc IncrementMultiplicity*(this: var Geom2d_BSplineCurve; I1: Standard_Integer;
                           I2: Standard_Integer; M: Standard_Integer) {.
    importcpp: "IncrementMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc InsertKnot*(this: var Geom2d_BSplineCurve; U: Standard_Real;
                M: Standard_Integer = 1; ParametricTolerance: Standard_Real = 0.0) {.
    importcpp: "InsertKnot", header: "Geom2d_BSplineCurve.hxx".}
proc InsertKnots*(this: var Geom2d_BSplineCurve; Knots: TColStd_Array1OfReal;
                 Mults: TColStd_Array1OfInteger;
                 ParametricTolerance: Standard_Real = 0.0;
                 Add: Standard_Boolean = Standard_False) {.importcpp: "InsertKnots",
    header: "Geom2d_BSplineCurve.hxx".}
proc RemoveKnot*(this: var Geom2d_BSplineCurve; Index: Standard_Integer;
                M: Standard_Integer; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "RemoveKnot", header: "Geom2d_BSplineCurve.hxx".}
proc InsertPoleAfter*(this: var Geom2d_BSplineCurve; Index: Standard_Integer;
                     P: gp_Pnt2d; Weight: Standard_Real = 1.0) {.
    importcpp: "InsertPoleAfter", header: "Geom2d_BSplineCurve.hxx".}
proc InsertPoleBefore*(this: var Geom2d_BSplineCurve; Index: Standard_Integer;
                      P: gp_Pnt2d; Weight: Standard_Real = 1.0) {.
    importcpp: "InsertPoleBefore", header: "Geom2d_BSplineCurve.hxx".}
proc RemovePole*(this: var Geom2d_BSplineCurve; Index: Standard_Integer) {.
    importcpp: "RemovePole", header: "Geom2d_BSplineCurve.hxx".}
proc Reverse*(this: var Geom2d_BSplineCurve) {.importcpp: "Reverse",
    header: "Geom2d_BSplineCurve.hxx".}
proc ReversedParameter*(this: Geom2d_BSplineCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_BSplineCurve.hxx".}
proc Segment*(this: var Geom2d_BSplineCurve; U1: Standard_Real; U2: Standard_Real;
             theTolerance: Standard_Real = PConfusion()) {.importcpp: "Segment",
    header: "Geom2d_BSplineCurve.hxx".}
proc SetKnot*(this: var Geom2d_BSplineCurve; Index: Standard_Integer; K: Standard_Real) {.
    importcpp: "SetKnot", header: "Geom2d_BSplineCurve.hxx".}
proc SetKnots*(this: var Geom2d_BSplineCurve; K: TColStd_Array1OfReal) {.
    importcpp: "SetKnots", header: "Geom2d_BSplineCurve.hxx".}
proc SetKnot*(this: var Geom2d_BSplineCurve; Index: Standard_Integer;
             K: Standard_Real; M: Standard_Integer) {.importcpp: "SetKnot",
    header: "Geom2d_BSplineCurve.hxx".}
proc PeriodicNormalization*(this: Geom2d_BSplineCurve; U: var Standard_Real) {.
    noSideEffect, importcpp: "PeriodicNormalization",
    header: "Geom2d_BSplineCurve.hxx".}
proc SetPeriodic*(this: var Geom2d_BSplineCurve) {.importcpp: "SetPeriodic",
    header: "Geom2d_BSplineCurve.hxx".}
proc SetOrigin*(this: var Geom2d_BSplineCurve; Index: Standard_Integer) {.
    importcpp: "SetOrigin", header: "Geom2d_BSplineCurve.hxx".}
proc SetNotPeriodic*(this: var Geom2d_BSplineCurve) {.importcpp: "SetNotPeriodic",
    header: "Geom2d_BSplineCurve.hxx".}
proc SetPole*(this: var Geom2d_BSplineCurve; Index: Standard_Integer; P: gp_Pnt2d) {.
    importcpp: "SetPole", header: "Geom2d_BSplineCurve.hxx".}
proc SetPole*(this: var Geom2d_BSplineCurve; Index: Standard_Integer; P: gp_Pnt2d;
             Weight: Standard_Real) {.importcpp: "SetPole",
                                    header: "Geom2d_BSplineCurve.hxx".}
proc SetWeight*(this: var Geom2d_BSplineCurve; Index: Standard_Integer;
               Weight: Standard_Real) {.importcpp: "SetWeight",
                                      header: "Geom2d_BSplineCurve.hxx".}
proc MovePoint*(this: var Geom2d_BSplineCurve; U: Standard_Real; P: gp_Pnt2d;
               Index1: Standard_Integer; Index2: Standard_Integer;
               FirstModifiedPole: var Standard_Integer;
               LastModifiedPole: var Standard_Integer) {.importcpp: "MovePoint",
    header: "Geom2d_BSplineCurve.hxx".}
proc MovePointAndTangent*(this: var Geom2d_BSplineCurve; U: Standard_Real;
                         P: gp_Pnt2d; Tangent: gp_Vec2d; Tolerance: Standard_Real;
                         StartingCondition: Standard_Integer;
                         EndingCondition: Standard_Integer;
                         ErrorStatus: var Standard_Integer) {.
    importcpp: "MovePointAndTangent", header: "Geom2d_BSplineCurve.hxx".}
proc IsCN*(this: Geom2d_BSplineCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom2d_BSplineCurve.hxx".}
proc IsG1*(this: Geom2d_BSplineCurve; theTf: Standard_Real; theTl: Standard_Real;
          theAngTol: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsG1", header: "Geom2d_BSplineCurve.hxx".}
proc IsClosed*(this: Geom2d_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_BSplineCurve.hxx".}
proc IsPeriodic*(this: Geom2d_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_BSplineCurve.hxx".}
proc IsRational*(this: Geom2d_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom2d_BSplineCurve.hxx".}
proc Continuity*(this: Geom2d_BSplineCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_BSplineCurve.hxx".}
proc Degree*(this: Geom2d_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Geom2d_BSplineCurve.hxx".}
proc D0*(this: Geom2d_BSplineCurve; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_BSplineCurve.hxx".}
proc D1*(this: Geom2d_BSplineCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_BSplineCurve.hxx".}
proc D2*(this: Geom2d_BSplineCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2d_BSplineCurve.hxx".}
proc D3*(this: Geom2d_BSplineCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_BSplineCurve.hxx".}
proc DN*(this: Geom2d_BSplineCurve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_BSplineCurve.hxx".}
proc LocalValue*(this: Geom2d_BSplineCurve; U: Standard_Real;
                FromK1: Standard_Integer; ToK2: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "LocalValue", header: "Geom2d_BSplineCurve.hxx".}
proc LocalD0*(this: Geom2d_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "LocalD0", header: "Geom2d_BSplineCurve.hxx".}
proc LocalD1*(this: Geom2d_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var gp_Pnt2d; V1: var gp_Vec2d) {.noSideEffect,
    importcpp: "LocalD1", header: "Geom2d_BSplineCurve.hxx".}
proc LocalD2*(this: Geom2d_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var gp_Pnt2d; V1: var gp_Vec2d; V2: var gp_Vec2d) {.
    noSideEffect, importcpp: "LocalD2", header: "Geom2d_BSplineCurve.hxx".}
proc LocalD3*(this: Geom2d_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var gp_Pnt2d; V1: var gp_Vec2d;
             V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "LocalD3",
    header: "Geom2d_BSplineCurve.hxx".}
proc LocalDN*(this: Geom2d_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; N: Standard_Integer): gp_Vec2d {.noSideEffect,
    importcpp: "LocalDN", header: "Geom2d_BSplineCurve.hxx".}
proc EndPoint*(this: Geom2d_BSplineCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "Geom2d_BSplineCurve.hxx".}
proc FirstUKnotIndex*(this: Geom2d_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "FirstUKnotIndex", header: "Geom2d_BSplineCurve.hxx".}
proc FirstParameter*(this: Geom2d_BSplineCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_BSplineCurve.hxx".}
proc Knot*(this: Geom2d_BSplineCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Knot", header: "Geom2d_BSplineCurve.hxx".}
proc Knots*(this: Geom2d_BSplineCurve; K: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "Geom2d_BSplineCurve.hxx".}
proc Knots*(this: Geom2d_BSplineCurve): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Knots", header: "Geom2d_BSplineCurve.hxx".}
proc KnotSequence*(this: Geom2d_BSplineCurve; K: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "KnotSequence", header: "Geom2d_BSplineCurve.hxx".}
proc KnotSequence*(this: Geom2d_BSplineCurve): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "KnotSequence", header: "Geom2d_BSplineCurve.hxx".}
proc KnotDistribution*(this: Geom2d_BSplineCurve): GeomAbs_BSplKnotDistribution {.
    noSideEffect, importcpp: "KnotDistribution", header: "Geom2d_BSplineCurve.hxx".}
proc LastUKnotIndex*(this: Geom2d_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "LastUKnotIndex", header: "Geom2d_BSplineCurve.hxx".}
proc LastParameter*(this: Geom2d_BSplineCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_BSplineCurve.hxx".}
proc LocateU*(this: Geom2d_BSplineCurve; U: Standard_Real;
             ParametricTolerance: Standard_Real; I1: var Standard_Integer;
             I2: var Standard_Integer;
             WithKnotRepetition: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "LocateU", header: "Geom2d_BSplineCurve.hxx".}
proc Multiplicity*(this: Geom2d_BSplineCurve; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Multiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc Multiplicities*(this: Geom2d_BSplineCurve; M: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Multiplicities", header: "Geom2d_BSplineCurve.hxx".}
proc Multiplicities*(this: Geom2d_BSplineCurve): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Multiplicities", header: "Geom2d_BSplineCurve.hxx".}
proc NbKnots*(this: Geom2d_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Geom2d_BSplineCurve.hxx".}
proc NbPoles*(this: Geom2d_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Geom2d_BSplineCurve.hxx".}
proc Pole*(this: Geom2d_BSplineCurve; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "Pole", header: "Geom2d_BSplineCurve.hxx".}
proc Poles*(this: Geom2d_BSplineCurve; P: var TColgp_Array1OfPnt2d) {.noSideEffect,
    importcpp: "Poles", header: "Geom2d_BSplineCurve.hxx".}
proc Poles*(this: Geom2d_BSplineCurve): TColgp_Array1OfPnt2d {.noSideEffect,
    importcpp: "Poles", header: "Geom2d_BSplineCurve.hxx".}
proc StartPoint*(this: Geom2d_BSplineCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "Geom2d_BSplineCurve.hxx".}
proc Weight*(this: Geom2d_BSplineCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Weight", header: "Geom2d_BSplineCurve.hxx".}
proc Weights*(this: Geom2d_BSplineCurve; W: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom2d_BSplineCurve.hxx".}
proc Weights*(this: Geom2d_BSplineCurve): ptr TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom2d_BSplineCurve.hxx".}
proc Transform*(this: var Geom2d_BSplineCurve; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_BSplineCurve.hxx".}
proc MaxDegree*(): Standard_Integer {.importcpp: "Geom2d_BSplineCurve::MaxDegree(@)",
                                   header: "Geom2d_BSplineCurve.hxx".}
proc Resolution*(this: var Geom2d_BSplineCurve; ToleranceUV: Standard_Real;
                UTolerance: var Standard_Real) {.importcpp: "Resolution",
    header: "Geom2d_BSplineCurve.hxx".}
proc Copy*(this: Geom2d_BSplineCurve): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_BSplineCurve.hxx".}
proc DumpJson*(this: Geom2d_BSplineCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_BSplineCurve.hxx".}
type
  Geom2d_BSplineCurvebase_type* = Geom2d_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "Geom2d_BSplineCurve::get_type_name(@)",
                              header: "Geom2d_BSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_BSplineCurve::get_type_descriptor(@)",
    header: "Geom2d_BSplineCurve.hxx".}
proc DynamicType*(this: Geom2d_BSplineCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_BSplineCurve.hxx".}