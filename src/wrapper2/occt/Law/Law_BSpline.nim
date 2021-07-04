##  Created on: 1995-10-20
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_BSplKnotDistribution, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Transient,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Law_BSpline"
discard "forward decl of Law_BSpline"
type
  Handle_Law_BSpline* = handle[Law_BSpline]

## ! Definition of the 1D B_spline curve.
## !
## ! Uniform  or non-uniform
## ! Rational or non-rational
## ! Periodic or non-periodic
## !
## ! a b-spline curve is defined by :
## !
## ! The Degree (up to 25)
## !
## ! The Poles  (and the weights if it is rational)
## !
## ! The Knots and Multiplicities
## !
## ! The knot vector   is an  increasing  sequence  of
## ! reals without  repetition. The multiplicities are
## ! the repetition of the knots.
## !
## ! If the knots are regularly spaced (the difference
## ! of two  consecutive  knots  is a   constant), the
## ! knots repartition is :
## !
## ! - Uniform if all multiplicities are 1.
## !
## ! -  Quasi-uniform if  all multiplicities are  1
## ! but the first and the last which are Degree+1.
## !
## ! -   PiecewiseBezier if  all multiplicites  are
## ! Degree but the   first and the  last which are
## ! Degree+1.
## !
## ! The curve may be periodic.
## !
## ! On a periodic curve if there are k knots and p
## ! poles. the period is knot(k) - knot(1)
## !
## ! the poles and knots are infinite vectors with :
## !
## ! knot(i+k) = knot(i) + period
## !
## ! pole(i+p) = pole(i)
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
  Law_BSpline* {.importcpp: "Law_BSpline", header: "Law_BSpline.hxx", bycopy.} = object of Standard_Transient ##
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
                                                                                                    ## Tells
                                                                                                    ## whether
                                                                                                    ## the
                                                                                                    ## Cache
                                                                                                    ## is
                                                                                                    ## valid
                                                                                                    ## for
                                                                                                    ## the
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## given
                                                                                                    ## parameter
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Warnings
                                                                                                    ## :
                                                                                                    ## the
                                                                                                    ## parameter
                                                                                                    ## must
                                                                                                    ## be
                                                                                                    ## normalized
                                                                                                    ## within
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## the
                                                                                                    ## period
                                                                                                    ## if
                                                                                                    ## the
                                                                                                    ## curve
                                                                                                    ## is
                                                                                                    ## periodic.
                                                                                                    ## Otherwise
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## the
                                                                                                    ## answer
                                                                                                    ## will
                                                                                                    ## be
                                                                                                    ## false


proc constructLaw_BSpline*(Poles: TColStd_Array1OfReal;
                          Knots: TColStd_Array1OfReal;
                          Multiplicities: TColStd_Array1OfInteger;
                          Degree: Standard_Integer;
                          Periodic: Standard_Boolean = Standard_False): Law_BSpline {.
    constructor, importcpp: "Law_BSpline(@)", header: "Law_BSpline.hxx".}
proc constructLaw_BSpline*(Poles: TColStd_Array1OfReal;
                          Weights: TColStd_Array1OfReal;
                          Knots: TColStd_Array1OfReal;
                          Multiplicities: TColStd_Array1OfInteger;
                          Degree: Standard_Integer;
                          Periodic: Standard_Boolean = Standard_False): Law_BSpline {.
    constructor, importcpp: "Law_BSpline(@)", header: "Law_BSpline.hxx".}
proc IncreaseDegree*(this: var Law_BSpline; Degree: Standard_Integer) {.
    importcpp: "IncreaseDegree", header: "Law_BSpline.hxx".}
proc IncreaseMultiplicity*(this: var Law_BSpline; Index: Standard_Integer;
                          M: Standard_Integer) {.
    importcpp: "IncreaseMultiplicity", header: "Law_BSpline.hxx".}
proc IncreaseMultiplicity*(this: var Law_BSpline; I1: Standard_Integer;
                          I2: Standard_Integer; M: Standard_Integer) {.
    importcpp: "IncreaseMultiplicity", header: "Law_BSpline.hxx".}
proc IncrementMultiplicity*(this: var Law_BSpline; I1: Standard_Integer;
                           I2: Standard_Integer; M: Standard_Integer) {.
    importcpp: "IncrementMultiplicity", header: "Law_BSpline.hxx".}
proc InsertKnot*(this: var Law_BSpline; U: Standard_Real; M: Standard_Integer = 1;
                ParametricTolerance: Standard_Real = 0.0;
                Add: Standard_Boolean = Standard_True) {.importcpp: "InsertKnot",
    header: "Law_BSpline.hxx".}
proc InsertKnots*(this: var Law_BSpline; Knots: TColStd_Array1OfReal;
                 Mults: TColStd_Array1OfInteger;
                 ParametricTolerance: Standard_Real = 0.0;
                 Add: Standard_Boolean = Standard_False) {.importcpp: "InsertKnots",
    header: "Law_BSpline.hxx".}
proc RemoveKnot*(this: var Law_BSpline; Index: Standard_Integer; M: Standard_Integer;
                Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "RemoveKnot", header: "Law_BSpline.hxx".}
proc Reverse*(this: var Law_BSpline) {.importcpp: "Reverse", header: "Law_BSpline.hxx".}
proc ReversedParameter*(this: Law_BSpline; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Law_BSpline.hxx".}
proc Segment*(this: var Law_BSpline; U1: Standard_Real; U2: Standard_Real) {.
    importcpp: "Segment", header: "Law_BSpline.hxx".}
proc SetKnot*(this: var Law_BSpline; Index: Standard_Integer; K: Standard_Real) {.
    importcpp: "SetKnot", header: "Law_BSpline.hxx".}
proc SetKnots*(this: var Law_BSpline; K: TColStd_Array1OfReal) {.
    importcpp: "SetKnots", header: "Law_BSpline.hxx".}
proc SetKnot*(this: var Law_BSpline; Index: Standard_Integer; K: Standard_Real;
             M: Standard_Integer) {.importcpp: "SetKnot", header: "Law_BSpline.hxx".}
proc PeriodicNormalization*(this: Law_BSpline; U: var Standard_Real) {.noSideEffect,
    importcpp: "PeriodicNormalization", header: "Law_BSpline.hxx".}
proc SetPeriodic*(this: var Law_BSpline) {.importcpp: "SetPeriodic",
                                       header: "Law_BSpline.hxx".}
proc SetOrigin*(this: var Law_BSpline; Index: Standard_Integer) {.
    importcpp: "SetOrigin", header: "Law_BSpline.hxx".}
proc SetNotPeriodic*(this: var Law_BSpline) {.importcpp: "SetNotPeriodic",
    header: "Law_BSpline.hxx".}
proc SetPole*(this: var Law_BSpline; Index: Standard_Integer; P: Standard_Real) {.
    importcpp: "SetPole", header: "Law_BSpline.hxx".}
proc SetPole*(this: var Law_BSpline; Index: Standard_Integer; P: Standard_Real;
             Weight: Standard_Real) {.importcpp: "SetPole",
                                    header: "Law_BSpline.hxx".}
proc SetWeight*(this: var Law_BSpline; Index: Standard_Integer; Weight: Standard_Real) {.
    importcpp: "SetWeight", header: "Law_BSpline.hxx".}
proc IsCN*(this: Law_BSpline; N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCN", header: "Law_BSpline.hxx".}
proc IsClosed*(this: Law_BSpline): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Law_BSpline.hxx".}
proc IsPeriodic*(this: Law_BSpline): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Law_BSpline.hxx".}
proc IsRational*(this: Law_BSpline): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Law_BSpline.hxx".}
proc Continuity*(this: Law_BSpline): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Law_BSpline.hxx".}
proc Degree*(this: Law_BSpline): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Law_BSpline.hxx".}
proc Value*(this: Law_BSpline; U: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "Law_BSpline.hxx".}
proc D0*(this: Law_BSpline; U: Standard_Real; P: var Standard_Real) {.noSideEffect,
    importcpp: "D0", header: "Law_BSpline.hxx".}
proc D1*(this: Law_BSpline; U: Standard_Real; P: var Standard_Real;
        V1: var Standard_Real) {.noSideEffect, importcpp: "D1",
                              header: "Law_BSpline.hxx".}
proc D2*(this: Law_BSpline; U: Standard_Real; P: var Standard_Real;
        V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect, importcpp: "D2",
    header: "Law_BSpline.hxx".}
proc D3*(this: Law_BSpline; U: Standard_Real; P: var Standard_Real;
        V1: var Standard_Real; V2: var Standard_Real; V3: var Standard_Real) {.
    noSideEffect, importcpp: "D3", header: "Law_BSpline.hxx".}
proc DN*(this: Law_BSpline; U: Standard_Real; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "DN", header: "Law_BSpline.hxx".}
proc LocalValue*(this: Law_BSpline; U: Standard_Real; FromK1: Standard_Integer;
                ToK2: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "LocalValue", header: "Law_BSpline.hxx".}
proc LocalD0*(this: Law_BSpline; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var Standard_Real) {.noSideEffect,
    importcpp: "LocalD0", header: "Law_BSpline.hxx".}
proc LocalD1*(this: Law_BSpline; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var Standard_Real; V1: var Standard_Real) {.
    noSideEffect, importcpp: "LocalD1", header: "Law_BSpline.hxx".}
proc LocalD2*(this: Law_BSpline; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var Standard_Real; V1: var Standard_Real;
             V2: var Standard_Real) {.noSideEffect, importcpp: "LocalD2",
                                   header: "Law_BSpline.hxx".}
proc LocalD3*(this: Law_BSpline; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; P: var Standard_Real; V1: var Standard_Real;
             V2: var Standard_Real; V3: var Standard_Real) {.noSideEffect,
    importcpp: "LocalD3", header: "Law_BSpline.hxx".}
proc LocalDN*(this: Law_BSpline; U: Standard_Real; FromK1: Standard_Integer;
             ToK2: Standard_Integer; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "LocalDN", header: "Law_BSpline.hxx".}
proc EndPoint*(this: Law_BSpline): Standard_Real {.noSideEffect,
    importcpp: "EndPoint", header: "Law_BSpline.hxx".}
proc FirstUKnotIndex*(this: Law_BSpline): Standard_Integer {.noSideEffect,
    importcpp: "FirstUKnotIndex", header: "Law_BSpline.hxx".}
proc FirstParameter*(this: Law_BSpline): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Law_BSpline.hxx".}
proc Knot*(this: Law_BSpline; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Knot", header: "Law_BSpline.hxx".}
proc Knots*(this: Law_BSpline; K: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "Law_BSpline.hxx".}
proc KnotSequence*(this: Law_BSpline; K: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "KnotSequence", header: "Law_BSpline.hxx".}
proc KnotDistribution*(this: Law_BSpline): GeomAbs_BSplKnotDistribution {.
    noSideEffect, importcpp: "KnotDistribution", header: "Law_BSpline.hxx".}
proc LastUKnotIndex*(this: Law_BSpline): Standard_Integer {.noSideEffect,
    importcpp: "LastUKnotIndex", header: "Law_BSpline.hxx".}
proc LastParameter*(this: Law_BSpline): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Law_BSpline.hxx".}
proc LocateU*(this: Law_BSpline; U: Standard_Real;
             ParametricTolerance: Standard_Real; I1: var Standard_Integer;
             I2: var Standard_Integer;
             WithKnotRepetition: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "LocateU", header: "Law_BSpline.hxx".}
proc Multiplicity*(this: Law_BSpline; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Multiplicity", header: "Law_BSpline.hxx".}
proc Multiplicities*(this: Law_BSpline; M: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Multiplicities", header: "Law_BSpline.hxx".}
proc NbKnots*(this: Law_BSpline): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Law_BSpline.hxx".}
proc NbPoles*(this: Law_BSpline): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Law_BSpline.hxx".}
proc Pole*(this: Law_BSpline; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Pole", header: "Law_BSpline.hxx".}
proc Poles*(this: Law_BSpline; P: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Poles", header: "Law_BSpline.hxx".}
proc StartPoint*(this: Law_BSpline): Standard_Real {.noSideEffect,
    importcpp: "StartPoint", header: "Law_BSpline.hxx".}
proc Weight*(this: Law_BSpline; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Weight", header: "Law_BSpline.hxx".}
proc Weights*(this: Law_BSpline; W: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Law_BSpline.hxx".}
proc MaxDegree*(): Standard_Integer {.importcpp: "Law_BSpline::MaxDegree(@)",
                                   header: "Law_BSpline.hxx".}
proc MovePointAndTangent*(this: var Law_BSpline; U: Standard_Real;
                         NewValue: Standard_Real; Derivative: Standard_Real;
                         Tolerance: Standard_Real;
                         StartingCondition: Standard_Integer;
                         EndingCondition: Standard_Integer;
                         ErrorStatus: var Standard_Integer) {.
    importcpp: "MovePointAndTangent", header: "Law_BSpline.hxx".}
proc Resolution*(this: Law_BSpline; Tolerance3D: Standard_Real;
                UTolerance: var Standard_Real) {.noSideEffect,
    importcpp: "Resolution", header: "Law_BSpline.hxx".}
proc Copy*(this: Law_BSpline): handle[Law_BSpline] {.noSideEffect, importcpp: "Copy",
    header: "Law_BSpline.hxx".}
type
  Law_BSplinebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Law_BSpline::get_type_name(@)",
                              header: "Law_BSpline.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Law_BSpline::get_type_descriptor(@)", header: "Law_BSpline.hxx".}
proc DynamicType*(this: Law_BSpline): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_BSpline.hxx".}