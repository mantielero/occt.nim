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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Law_BSpline"
discard "forward decl of Law_BSpline"
type
  HandleLawBSpline* = Handle[LawBSpline]

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
  LawBSpline* {.importcpp: "Law_BSpline", header: "Law_BSpline.hxx", bycopy.} = object of StandardTransient ##
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


proc constructLawBSpline*(poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                         multiplicities: TColStdArray1OfInteger;
                         degree: StandardInteger;
                         periodic: StandardBoolean = standardFalse): LawBSpline {.
    constructor, importcpp: "Law_BSpline(@)", header: "Law_BSpline.hxx".}
proc constructLawBSpline*(poles: TColStdArray1OfReal; weights: TColStdArray1OfReal;
                         knots: TColStdArray1OfReal;
                         multiplicities: TColStdArray1OfInteger;
                         degree: StandardInteger;
                         periodic: StandardBoolean = standardFalse): LawBSpline {.
    constructor, importcpp: "Law_BSpline(@)", header: "Law_BSpline.hxx".}
proc increaseDegree*(this: var LawBSpline; degree: StandardInteger) {.
    importcpp: "IncreaseDegree", header: "Law_BSpline.hxx".}
proc increaseMultiplicity*(this: var LawBSpline; index: StandardInteger;
                          m: StandardInteger) {.importcpp: "IncreaseMultiplicity",
    header: "Law_BSpline.hxx".}
proc increaseMultiplicity*(this: var LawBSpline; i1: StandardInteger;
                          i2: StandardInteger; m: StandardInteger) {.
    importcpp: "IncreaseMultiplicity", header: "Law_BSpline.hxx".}
proc incrementMultiplicity*(this: var LawBSpline; i1: StandardInteger;
                           i2: StandardInteger; m: StandardInteger) {.
    importcpp: "IncrementMultiplicity", header: "Law_BSpline.hxx".}
proc insertKnot*(this: var LawBSpline; u: StandardReal; m: StandardInteger = 1;
                parametricTolerance: StandardReal = 0.0;
                add: StandardBoolean = standardTrue) {.importcpp: "InsertKnot",
    header: "Law_BSpline.hxx".}
proc insertKnots*(this: var LawBSpline; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger;
                 parametricTolerance: StandardReal = 0.0;
                 add: StandardBoolean = standardFalse) {.importcpp: "InsertKnots",
    header: "Law_BSpline.hxx".}
proc removeKnot*(this: var LawBSpline; index: StandardInteger; m: StandardInteger;
                tolerance: StandardReal): StandardBoolean {.
    importcpp: "RemoveKnot", header: "Law_BSpline.hxx".}
proc reverse*(this: var LawBSpline) {.importcpp: "Reverse", header: "Law_BSpline.hxx".}
proc reversedParameter*(this: LawBSpline; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Law_BSpline.hxx".}
proc segment*(this: var LawBSpline; u1: StandardReal; u2: StandardReal) {.
    importcpp: "Segment", header: "Law_BSpline.hxx".}
proc setKnot*(this: var LawBSpline; index: StandardInteger; k: StandardReal) {.
    importcpp: "SetKnot", header: "Law_BSpline.hxx".}
proc setKnots*(this: var LawBSpline; k: TColStdArray1OfReal) {.importcpp: "SetKnots",
    header: "Law_BSpline.hxx".}
proc setKnot*(this: var LawBSpline; index: StandardInteger; k: StandardReal;
             m: StandardInteger) {.importcpp: "SetKnot", header: "Law_BSpline.hxx".}
proc periodicNormalization*(this: LawBSpline; u: var StandardReal) {.noSideEffect,
    importcpp: "PeriodicNormalization", header: "Law_BSpline.hxx".}
proc setPeriodic*(this: var LawBSpline) {.importcpp: "SetPeriodic",
                                      header: "Law_BSpline.hxx".}
proc setOrigin*(this: var LawBSpline; index: StandardInteger) {.
    importcpp: "SetOrigin", header: "Law_BSpline.hxx".}
proc setNotPeriodic*(this: var LawBSpline) {.importcpp: "SetNotPeriodic",
    header: "Law_BSpline.hxx".}
proc setPole*(this: var LawBSpline; index: StandardInteger; p: StandardReal) {.
    importcpp: "SetPole", header: "Law_BSpline.hxx".}
proc setPole*(this: var LawBSpline; index: StandardInteger; p: StandardReal;
             weight: StandardReal) {.importcpp: "SetPole", header: "Law_BSpline.hxx".}
proc setWeight*(this: var LawBSpline; index: StandardInteger; weight: StandardReal) {.
    importcpp: "SetWeight", header: "Law_BSpline.hxx".}
proc isCN*(this: LawBSpline; n: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsCN", header: "Law_BSpline.hxx".}
proc isClosed*(this: LawBSpline): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Law_BSpline.hxx".}
proc isPeriodic*(this: LawBSpline): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Law_BSpline.hxx".}
proc isRational*(this: LawBSpline): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "Law_BSpline.hxx".}
proc continuity*(this: LawBSpline): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Law_BSpline.hxx".}
proc degree*(this: LawBSpline): StandardInteger {.noSideEffect, importcpp: "Degree",
    header: "Law_BSpline.hxx".}
proc value*(this: LawBSpline; u: StandardReal): StandardReal {.noSideEffect,
    importcpp: "Value", header: "Law_BSpline.hxx".}
proc d0*(this: LawBSpline; u: StandardReal; p: var StandardReal) {.noSideEffect,
    importcpp: "D0", header: "Law_BSpline.hxx".}
proc d1*(this: LawBSpline; u: StandardReal; p: var StandardReal; v1: var StandardReal) {.
    noSideEffect, importcpp: "D1", header: "Law_BSpline.hxx".}
proc d2*(this: LawBSpline; u: StandardReal; p: var StandardReal; v1: var StandardReal;
        v2: var StandardReal) {.noSideEffect, importcpp: "D2",
                             header: "Law_BSpline.hxx".}
proc d3*(this: LawBSpline; u: StandardReal; p: var StandardReal; v1: var StandardReal;
        v2: var StandardReal; v3: var StandardReal) {.noSideEffect, importcpp: "D3",
    header: "Law_BSpline.hxx".}
proc dn*(this: LawBSpline; u: StandardReal; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "DN", header: "Law_BSpline.hxx".}
proc localValue*(this: LawBSpline; u: StandardReal; fromK1: StandardInteger;
                toK2: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "LocalValue", header: "Law_BSpline.hxx".}
proc localD0*(this: LawBSpline; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; p: var StandardReal) {.noSideEffect,
    importcpp: "LocalD0", header: "Law_BSpline.hxx".}
proc localD1*(this: LawBSpline; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; p: var StandardReal; v1: var StandardReal) {.
    noSideEffect, importcpp: "LocalD1", header: "Law_BSpline.hxx".}
proc localD2*(this: LawBSpline; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; p: var StandardReal; v1: var StandardReal;
             v2: var StandardReal) {.noSideEffect, importcpp: "LocalD2",
                                  header: "Law_BSpline.hxx".}
proc localD3*(this: LawBSpline; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; p: var StandardReal; v1: var StandardReal;
             v2: var StandardReal; v3: var StandardReal) {.noSideEffect,
    importcpp: "LocalD3", header: "Law_BSpline.hxx".}
proc localDN*(this: LawBSpline; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; n: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "LocalDN", header: "Law_BSpline.hxx".}
proc endPoint*(this: LawBSpline): StandardReal {.noSideEffect, importcpp: "EndPoint",
    header: "Law_BSpline.hxx".}
proc firstUKnotIndex*(this: LawBSpline): StandardInteger {.noSideEffect,
    importcpp: "FirstUKnotIndex", header: "Law_BSpline.hxx".}
proc firstParameter*(this: LawBSpline): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Law_BSpline.hxx".}
proc knot*(this: LawBSpline; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Knot", header: "Law_BSpline.hxx".}
proc knots*(this: LawBSpline; k: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "Law_BSpline.hxx".}
proc knotSequence*(this: LawBSpline; k: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "KnotSequence", header: "Law_BSpline.hxx".}
proc knotDistribution*(this: LawBSpline): GeomAbsBSplKnotDistribution {.
    noSideEffect, importcpp: "KnotDistribution", header: "Law_BSpline.hxx".}
proc lastUKnotIndex*(this: LawBSpline): StandardInteger {.noSideEffect,
    importcpp: "LastUKnotIndex", header: "Law_BSpline.hxx".}
proc lastParameter*(this: LawBSpline): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Law_BSpline.hxx".}
proc locateU*(this: LawBSpline; u: StandardReal; parametricTolerance: StandardReal;
             i1: var StandardInteger; i2: var StandardInteger;
             withKnotRepetition: StandardBoolean = standardFalse) {.noSideEffect,
    importcpp: "LocateU", header: "Law_BSpline.hxx".}
proc multiplicity*(this: LawBSpline; index: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Multiplicity", header: "Law_BSpline.hxx".}
proc multiplicities*(this: LawBSpline; m: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Multiplicities", header: "Law_BSpline.hxx".}
proc nbKnots*(this: LawBSpline): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "Law_BSpline.hxx".}
proc nbPoles*(this: LawBSpline): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "Law_BSpline.hxx".}
proc pole*(this: LawBSpline; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Pole", header: "Law_BSpline.hxx".}
proc poles*(this: LawBSpline; p: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Poles", header: "Law_BSpline.hxx".}
proc startPoint*(this: LawBSpline): StandardReal {.noSideEffect,
    importcpp: "StartPoint", header: "Law_BSpline.hxx".}
proc weight*(this: LawBSpline; index: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Weight", header: "Law_BSpline.hxx".}
proc weights*(this: LawBSpline; w: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Law_BSpline.hxx".}
proc maxDegree*(): StandardInteger {.importcpp: "Law_BSpline::MaxDegree(@)",
                                  header: "Law_BSpline.hxx".}
proc movePointAndTangent*(this: var LawBSpline; u: StandardReal;
                         newValue: StandardReal; derivative: StandardReal;
                         tolerance: StandardReal;
                         startingCondition: StandardInteger;
                         endingCondition: StandardInteger;
                         errorStatus: var StandardInteger) {.
    importcpp: "MovePointAndTangent", header: "Law_BSpline.hxx".}
proc resolution*(this: LawBSpline; tolerance3D: StandardReal;
                uTolerance: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "Law_BSpline.hxx".}
proc copy*(this: LawBSpline): Handle[LawBSpline] {.noSideEffect, importcpp: "Copy",
    header: "Law_BSpline.hxx".}
type
  LawBSplinebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Law_BSpline::get_type_name(@)",
                            header: "Law_BSpline.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Law_BSpline::get_type_descriptor(@)", header: "Law_BSpline.hxx".}
proc dynamicType*(this: LawBSpline): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_BSpline.hxx".}

