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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Precision/Precision,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_BSplKnotDistribution,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColgp/TColgp_HArray1OfPnt, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Real,
  Geom_BoundedCurve, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_BSplineCurve"
type
  Handle_Geom_BSplineCurve* = handle[Geom_BSplineCurve]

## ! Definition of the B_spline curve.
## ! A B-spline curve can be
## ! Uniform  or non-uniform
## ! Rational or non-rational
## ! Periodic or non-periodic
## !
## ! a b-spline curve is defined by :
## ! its degree; the degree for a
## ! Geom_BSplineCurve is limited to a value (25)
## ! which is defined and controlled by the system.
## ! This value is returned by the function MaxDegree;
## ! - its periodic or non-periodic nature;
## ! - a table of poles (also called control points), with
## ! their associated weights if the BSpline curve is
## ! rational. The poles of the curve are "control
## ! points" used to deform the curve. If the curve is
## ! non-periodic, the first pole is the start point of
## ! the curve, and the last pole is the end point of
## ! the curve. The segment which joins the first pole
## ! to the second pole is the tangent to the curve at
## ! its start point, and the segment which joins the
## ! last pole to the second-from-last pole is the
## ! tangent to the curve at its end point. If the curve
## ! is periodic, these geometric properties are not
## ! verified. It is more difficult to give a geometric
## ! signification to the weights but are useful for
## ! providing exact representations of the arcs of a
## ! circle or ellipse. Moreover, if the weights of all the
## ! poles are equal, the curve has a polynomial
## ! equation; it is therefore a non-rational curve.
## ! - a table of knots with their multiplicities. For a
## ! Geom_BSplineCurve, the table of knots is an
## ! increasing sequence of reals without repetition;
## ! the multiplicities define the repetition of the knots.
## ! A BSpline curve is a piecewise polynomial or
## ! rational curve. The knots are the parameters of
## ! junction points between two pieces. The
## ! multiplicity Mult(i) of the knot Knot(i) of
## ! the BSpline curve is related to the degree of
## ! continuity of the curve at the knot Knot(i),
## ! which is equal to Degree - Mult(i)
## ! where Degree is the degree of the BSpline curve.
## ! If the knots are regularly spaced (i.e. the difference
## ! between two consecutive knots is a constant), three
## ! specific and frequently used cases of knot
## ! distribution can be identified:
## ! - "uniform" if all multiplicities are equal to 1,
## ! - "quasi-uniform" if all multiplicities are equal to 1,
## ! except the first and the last knot which have a
## ! multiplicity of Degree + 1, where Degree is
## ! the degree of the BSpline curve,
## ! - "Piecewise Bezier" if all multiplicities are equal to
## ! Degree except the first and last knot which
## ! have a multiplicity of Degree + 1, where
## ! Degree is the degree of the BSpline curve. A
## ! curve of this type is a concatenation of arcs of Bezier curves.
## ! If the BSpline curve is not periodic:
## ! - the bounds of the Poles and Weights tables are 1
## ! and NbPoles, where NbPoles is the number
## ! of poles of the BSpline curve,
## ! - the bounds of the Knots and Multiplicities tables
## ! are 1 and NbKnots, where NbKnots is the
## ! number of knots of the BSpline curve.
## ! If the BSpline curve is periodic, and if there are k
## ! periodic knots and p periodic poles, the period is:
## ! period = Knot(k + 1) - Knot(1)
## ! and the poles and knots tables can be considered
## ! as infinite tables, verifying:
## ! - Knot(i+k) = Knot(i) + period
## ! - Pole(i+p) = Pole(i)
## ! Note: data structures of a periodic BSpline curve
## ! are more complex than those of a non-periodic one.
## ! Warning
## ! In this class, weight value is considered to be zero if
## ! the weight is less than or equal to gp::Resolution().
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
  Geom_BSplineCurve* {.importcpp: "Geom_BSplineCurve",
                      header: "Geom_BSplineCurve.hxx", bycopy.} = object of Geom_BoundedCurve ##
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
                                                                                       ## Recompute
                                                                                       ## the
                                                                                       ## flatknots,
                                                                                       ## the
                                                                                       ## knotsdistribution,
                                                                                       ## the
                                                                                       ## continuity.


proc constructGeom_BSplineCurve*(Poles: TColgp_Array1OfPnt;
                                Knots: TColStd_Array1OfReal;
                                Multiplicities: TColStd_Array1OfInteger;
                                Degree: Standard_Integer;
                                Periodic: Standard_Boolean = Standard_False): Geom_BSplineCurve {.
    constructor, importcpp: "Geom_BSplineCurve(@)", header: "Geom_BSplineCurve.hxx".}
proc constructGeom_BSplineCurve*(Poles: TColgp_Array1OfPnt;
                                Weights: TColStd_Array1OfReal;
                                Knots: TColStd_Array1OfReal;
                                Multiplicities: TColStd_Array1OfInteger;
                                Degree: Standard_Integer;
                                Periodic: Standard_Boolean = Standard_False;
                                CheckRational: Standard_Boolean = Standard_True): Geom_BSplineCurve {.
    constructor, importcpp: "Geom_BSplineCurve(@)", header: "Geom_BSplineCurve.hxx".}
proc IncreaseDegree*(this: var Geom_BSplineCurve; Degree: Standard_Integer) {.
    importcpp: "IncreaseDegree", header: "Geom_BSplineCurve.hxx".}
proc IncreaseMultiplicity*(this: var Geom_BSplineCurve; Index: Standard_Integer;
                          M: Standard_Integer) {.
    importcpp: "IncreaseMultiplicity", header: "Geom_BSplineCurve.hxx".}
proc IncreaseMultiplicity*(this: var Geom_BSplineCurve; I1: Standard_Integer;
                          I2: Standard_Integer; M: Standard_Integer) {.
    importcpp: "IncreaseMultiplicity", header: "Geom_BSplineCurve.hxx".}
proc IncrementMultiplicity*(this: var Geom_BSplineCurve; I1: Standard_Integer;
                           I2: Standard_Integer; M: Standard_Integer) {.
    importcpp: "IncrementMultiplicity", header: "Geom_BSplineCurve.hxx".}
proc InsertKnot*(this: var Geom_BSplineCurve; U: Standard_Real;
                M: Standard_Integer = 1; ParametricTolerance: Standard_Real = 0.0;
                Add: Standard_Boolean = Standard_True) {.importcpp: "InsertKnot",
    header: "Geom_BSplineCurve.hxx".}
proc InsertKnots*(this: var Geom_BSplineCurve; Knots: TColStd_Array1OfReal;
                 Mults: TColStd_Array1OfInteger;
                 ParametricTolerance: Standard_Real = 0.0;
                 Add: Standard_Boolean = Standard_False) {.importcpp: "InsertKnots",
    header: "Geom_BSplineCurve.hxx".}
proc RemoveKnot*(this: var Geom_BSplineCurve; Index: Standard_Integer;
                M: Standard_Integer; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "RemoveKnot", header: "Geom_BSplineCurve.hxx".}
proc Reverse*(this: var Geom_BSplineCurve) {.importcpp: "Reverse",
    header: "Geom_BSplineCurve.hxx".}
proc ReversedParameter*(this: Geom_BSplineCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_BSplineCurve.hxx".}
proc Segment*(this: var Geom_BSplineCurve; U1: Standard_Real; U2: Standard_Real;
             theTolerance: Standard_Real = PConfusion()) {.importcpp: "Segment",
    header: "Geom_BSplineCurve.hxx".}
proc SetKnot*(this: var Geom_BSplineCurve; Index: Standard_Integer; K: Standard_Real) {.
    importcpp: "SetKnot", header: "Geom_BSplineCurve.hxx".}
proc SetKnots*(this: var Geom_BSplineCurve; K: TColStd_Array1OfReal) {.
    importcpp: "SetKnots", header: "Geom_BSplineCurve.hxx".}
proc SetKnot*(this: var Geom_BSplineCurve; Index: Standard_Integer; K: Standard_Real;
             M: Standard_Integer) {.importcpp: "SetKnot",
                                  header: "Geom_BSplineCurve.hxx".}
proc PeriodicNormalization*(this: Geom_BSplineCurve; U: var Standard_Real) {.
    noSideEffect, importcpp: "PeriodicNormalization",
    header: "Geom_BSplineCurve.hxx".}
proc SetPeriodic*(this: var Geom_BSplineCurve) {.importcpp: "SetPeriodic",
    header: "Geom_BSplineCurve.hxx".}
proc SetOrigin*(this: var Geom_BSplineCurve; Index: Standard_Integer) {.
    importcpp: "SetOrigin", header: "Geom_BSplineCurve.hxx".}
proc SetOrigin*(this: var Geom_BSplineCurve; U: Standard_Real; Tol: Standard_Real) {.
    importcpp: "SetOrigin", header: "Geom_BSplineCurve.hxx".}
proc SetNotPeriodic*(this: var Geom_BSplineCurve) {.importcpp: "SetNotPeriodic",
    header: "Geom_BSplineCurve.hxx".}
proc SetPole*(this: var Geom_BSplineCurve; Index: Standard_Integer; P: gp_Pnt) {.
    importcpp: "SetPole", header: "Geom_BSplineCurve.hxx".}
proc SetPole*(this: var Geom_BSplineCurve; Index: Standard_Integer; P: gp_Pnt;
             Weight: Standard_Real) {.importcpp: "SetPole",
                                    header: "Geom_BSplineCurve.hxx".}
proc SetWeight*(this: var Geom_BSplineCurve; Index: Standard_Integer;
               Weight: Standard_Real) {.importcpp: "SetWeight",
                                      header: "Geom_BSplineCurve.hxx".}
proc MovePoint*(this: var Geom_BSplineCurve; U: Standard_Real; P: gp_Pnt;
               Index1: Standard_Integer; Index2: Standard_Integer;
               FirstModifiedPole: var Standard_Integer;
               LastModifiedPole: var Standard_Integer) {.importcpp: "MovePoint",
    header: "Geom_BSplineCurve.hxx".}
proc MovePointAndTangent*(this: var Geom_BSplineCurve; U: Standard_Real; P: gp_Pnt;
                         Tangent: gp_Vec; Tolerance: Standard_Real;
                         StartingCondition: Standard_Integer;
                         EndingCondition: Standard_Integer;
                         ErrorStatus: var Standard_Integer) {.
    importcpp: "MovePointAndTangent", header: "Geom_BSplineCurve.hxx".}
proc IsCN*(this: Geom_BSplineCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom_BSplineCurve.hxx".}
proc IsG1*(this: Geom_BSplineCurve; theTf: Standard_Real; theTl: Standard_Real;
          theAngTol: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsG1", header: "Geom_BSplineCurve.hxx".}
proc IsClosed*(this: Geom_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_BSplineCurve.hxx".}
proc IsPeriodic*(this: Geom_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_BSplineCurve.hxx".}
proc IsRational*(this: Geom_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom_BSplineCurve.hxx".}
proc Continuity*(this: Geom_BSplineCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_BSplineCurve.hxx".}
proc Degree*(this: Geom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Geom_BSplineCurve.hxx".}
proc D0*(this: Geom_BSplineCurve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_BSplineCurve.hxx".}
proc D1*(this: Geom_BSplineCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_BSplineCurve.hxx".}
proc D2*(this: Geom_BSplineCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "Geom_BSplineCurve.hxx".}
proc D3*(this: Geom_BSplineCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_BSplineCurve.hxx".}
proc DN*(this: Geom_BSplineCurve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_BSplineCurve.hxx".}
proc LocalValue*(this: Geom_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
                ToK2: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "LocalValue", header: "Geom_BSplineCurve.hxx".}
proc LocalD0*(this: Geom_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var gp_Pnt) {.noSideEffect,
    importcpp: "LocalD0", header: "Geom_BSplineCurve.hxx".}
proc LocalD1*(this: Geom_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var gp_Pnt; V1: var gp_Vec) {.noSideEffect,
    importcpp: "LocalD1", header: "Geom_BSplineCurve.hxx".}
proc LocalD2*(this: Geom_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    noSideEffect, importcpp: "LocalD2", header: "Geom_BSplineCurve.hxx".}
proc LocalD3*(this: Geom_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
             V3: var gp_Vec) {.noSideEffect, importcpp: "LocalD3",
                            header: "Geom_BSplineCurve.hxx".}
proc LocalDN*(this: Geom_BSplineCurve; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; N: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "LocalDN", header: "Geom_BSplineCurve.hxx".}
proc EndPoint*(this: Geom_BSplineCurve): gp_Pnt {.noSideEffect,
    importcpp: "EndPoint", header: "Geom_BSplineCurve.hxx".}
proc FirstUKnotIndex*(this: Geom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "FirstUKnotIndex", header: "Geom_BSplineCurve.hxx".}
proc FirstParameter*(this: Geom_BSplineCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_BSplineCurve.hxx".}
proc Knot*(this: Geom_BSplineCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Knot", header: "Geom_BSplineCurve.hxx".}
proc Knots*(this: Geom_BSplineCurve; K: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "Geom_BSplineCurve.hxx".}
proc Knots*(this: Geom_BSplineCurve): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Knots", header: "Geom_BSplineCurve.hxx".}
proc KnotSequence*(this: Geom_BSplineCurve; K: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "KnotSequence", header: "Geom_BSplineCurve.hxx".}
proc KnotSequence*(this: Geom_BSplineCurve): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "KnotSequence", header: "Geom_BSplineCurve.hxx".}
proc KnotDistribution*(this: Geom_BSplineCurve): GeomAbs_BSplKnotDistribution {.
    noSideEffect, importcpp: "KnotDistribution", header: "Geom_BSplineCurve.hxx".}
proc LastUKnotIndex*(this: Geom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "LastUKnotIndex", header: "Geom_BSplineCurve.hxx".}
proc LastParameter*(this: Geom_BSplineCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_BSplineCurve.hxx".}
proc LocateU*(this: Geom_BSplineCurve; U: Standard_Real;
             ParametricTolerance: Standard_Real; I1: var Standard_Integer;
             I2: var Standard_Integer;
             WithKnotRepetition: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "LocateU", header: "Geom_BSplineCurve.hxx".}
proc Multiplicity*(this: Geom_BSplineCurve; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Multiplicity", header: "Geom_BSplineCurve.hxx".}
proc Multiplicities*(this: Geom_BSplineCurve; M: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Multiplicities", header: "Geom_BSplineCurve.hxx".}
proc Multiplicities*(this: Geom_BSplineCurve): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Multiplicities", header: "Geom_BSplineCurve.hxx".}
proc NbKnots*(this: Geom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Geom_BSplineCurve.hxx".}
proc NbPoles*(this: Geom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Geom_BSplineCurve.hxx".}
proc Pole*(this: Geom_BSplineCurve; Index: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Pole", header: "Geom_BSplineCurve.hxx".}
proc Poles*(this: Geom_BSplineCurve; P: var TColgp_Array1OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "Geom_BSplineCurve.hxx".}
proc Poles*(this: Geom_BSplineCurve): TColgp_Array1OfPnt {.noSideEffect,
    importcpp: "Poles", header: "Geom_BSplineCurve.hxx".}
proc StartPoint*(this: Geom_BSplineCurve): gp_Pnt {.noSideEffect,
    importcpp: "StartPoint", header: "Geom_BSplineCurve.hxx".}
proc Weight*(this: Geom_BSplineCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Weight", header: "Geom_BSplineCurve.hxx".}
proc Weights*(this: Geom_BSplineCurve; W: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom_BSplineCurve.hxx".}
proc Weights*(this: Geom_BSplineCurve): ptr TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom_BSplineCurve.hxx".}
proc Transform*(this: var Geom_BSplineCurve; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_BSplineCurve.hxx".}
proc MaxDegree*(): Standard_Integer {.importcpp: "Geom_BSplineCurve::MaxDegree(@)",
                                   header: "Geom_BSplineCurve.hxx".}
proc Resolution*(this: var Geom_BSplineCurve; Tolerance3D: Standard_Real;
                UTolerance: var Standard_Real) {.importcpp: "Resolution",
    header: "Geom_BSplineCurve.hxx".}
proc Copy*(this: Geom_BSplineCurve): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_BSplineCurve.hxx".}
proc IsEqual*(this: Geom_BSplineCurve; theOther: handle[Geom_BSplineCurve];
             thePreci: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsEqual", header: "Geom_BSplineCurve.hxx".}
proc DumpJson*(this: Geom_BSplineCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_BSplineCurve.hxx".}
type
  Geom_BSplineCurvebase_type* = Geom_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "Geom_BSplineCurve::get_type_name(@)",
                              header: "Geom_BSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_BSplineCurve::get_type_descriptor(@)",
    header: "Geom_BSplineCurve.hxx".}
proc DynamicType*(this: Geom_BSplineCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_BSplineCurve.hxx".}