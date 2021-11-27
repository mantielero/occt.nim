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


proc newLawBSpline*(poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                   multiplicities: TColStdArray1OfInteger; degree: cint;
                   periodic: bool = false): LawBSpline {.cdecl, constructor,
    importcpp: "Law_BSpline(@)", dynlib: tkgeomalgo.}
proc newLawBSpline*(poles: TColStdArray1OfReal; weights: TColStdArray1OfReal;
                   knots: TColStdArray1OfReal;
                   multiplicities: TColStdArray1OfInteger; degree: cint;
                   periodic: bool = false): LawBSpline {.cdecl, constructor,
    importcpp: "Law_BSpline(@)", dynlib: tkgeomalgo.}
proc increaseDegree*(this: var LawBSpline; degree: cint) {.cdecl,
    importcpp: "IncreaseDegree", dynlib: tkgeomalgo.}
proc increaseMultiplicity*(this: var LawBSpline; index: cint; m: cint) {.cdecl,
    importcpp: "IncreaseMultiplicity", dynlib: tkgeomalgo.}
proc increaseMultiplicity*(this: var LawBSpline; i1: cint; i2: cint; m: cint) {.cdecl,
    importcpp: "IncreaseMultiplicity", dynlib: tkgeomalgo.}
proc incrementMultiplicity*(this: var LawBSpline; i1: cint; i2: cint; m: cint) {.cdecl,
    importcpp: "IncrementMultiplicity", dynlib: tkgeomalgo.}
proc insertKnot*(this: var LawBSpline; u: cfloat; m: cint = 1;
                parametricTolerance: cfloat = 0.0; add: bool = true) {.cdecl,
    importcpp: "InsertKnot", dynlib: tkgeomalgo.}
proc insertKnots*(this: var LawBSpline; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; parametricTolerance: cfloat = 0.0;
                 add: bool = false) {.cdecl, importcpp: "InsertKnots",
                                  dynlib: tkgeomalgo.}
proc removeKnot*(this: var LawBSpline; index: cint; m: cint; tolerance: cfloat): bool {.
    cdecl, importcpp: "RemoveKnot", dynlib: tkgeomalgo.}
proc reverse*(this: var LawBSpline) {.cdecl, importcpp: "Reverse", dynlib: tkgeomalgo.}
proc reversedParameter*(this: LawBSpline; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkgeomalgo.}
proc segment*(this: var LawBSpline; u1: cfloat; u2: cfloat) {.cdecl,
    importcpp: "Segment", dynlib: tkgeomalgo.}
proc setKnot*(this: var LawBSpline; index: cint; k: cfloat) {.cdecl,
    importcpp: "SetKnot", dynlib: tkgeomalgo.}
proc setKnots*(this: var LawBSpline; k: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetKnots", dynlib: tkgeomalgo.}
proc setKnot*(this: var LawBSpline; index: cint; k: cfloat; m: cint) {.cdecl,
    importcpp: "SetKnot", dynlib: tkgeomalgo.}
proc periodicNormalization*(this: LawBSpline; u: var cfloat) {.noSideEffect, cdecl,
    importcpp: "PeriodicNormalization", dynlib: tkgeomalgo.}
proc setPeriodic*(this: var LawBSpline) {.cdecl, importcpp: "SetPeriodic",
                                      dynlib: tkgeomalgo.}
proc setOrigin*(this: var LawBSpline; index: cint) {.cdecl, importcpp: "SetOrigin",
    dynlib: tkgeomalgo.}
proc setNotPeriodic*(this: var LawBSpline) {.cdecl, importcpp: "SetNotPeriodic",
    dynlib: tkgeomalgo.}
proc setPole*(this: var LawBSpline; index: cint; p: cfloat) {.cdecl,
    importcpp: "SetPole", dynlib: tkgeomalgo.}
proc setPole*(this: var LawBSpline; index: cint; p: cfloat; weight: cfloat) {.cdecl,
    importcpp: "SetPole", dynlib: tkgeomalgo.}
proc setWeight*(this: var LawBSpline; index: cint; weight: cfloat) {.cdecl,
    importcpp: "SetWeight", dynlib: tkgeomalgo.}
proc isCN*(this: LawBSpline; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                        dynlib: tkgeomalgo.}
proc isClosed*(this: LawBSpline): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                     dynlib: tkgeomalgo.}
proc isPeriodic*(this: LawBSpline): bool {.noSideEffect, cdecl,
                                       importcpp: "IsPeriodic", dynlib: tkgeomalgo.}
proc isRational*(this: LawBSpline): bool {.noSideEffect, cdecl,
                                       importcpp: "IsRational", dynlib: tkgeomalgo.}
proc continuity*(this: LawBSpline): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkgeomalgo.}
proc degree*(this: LawBSpline): cint {.noSideEffect, cdecl, importcpp: "Degree",
                                   dynlib: tkgeomalgo.}
proc value*(this: LawBSpline; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeomalgo.}
proc d0*(this: LawBSpline; u: cfloat; p: var cfloat) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkgeomalgo.}
proc d1*(this: LawBSpline; u: cfloat; p: var cfloat; v1: var cfloat) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: LawBSpline; u: cfloat; p: var cfloat; v1: var cfloat; v2: var cfloat) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkgeomalgo.}
proc d3*(this: LawBSpline; u: cfloat; p: var cfloat; v1: var cfloat; v2: var cfloat;
        v3: var cfloat) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkgeomalgo.}
proc dn*(this: LawBSpline; u: cfloat; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkgeomalgo.}
proc localValue*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "LocalValue", dynlib: tkgeomalgo.}
proc localD0*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; p: var cfloat) {.
    noSideEffect, cdecl, importcpp: "LocalD0", dynlib: tkgeomalgo.}
proc localD1*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; p: var cfloat;
             v1: var cfloat) {.noSideEffect, cdecl, importcpp: "LocalD1",
                            dynlib: tkgeomalgo.}
proc localD2*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; p: var cfloat;
             v1: var cfloat; v2: var cfloat) {.noSideEffect, cdecl,
    importcpp: "LocalD2", dynlib: tkgeomalgo.}
proc localD3*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; p: var cfloat;
             v1: var cfloat; v2: var cfloat; v3: var cfloat) {.noSideEffect, cdecl,
    importcpp: "LocalD3", dynlib: tkgeomalgo.}
proc localDN*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; n: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "LocalDN", dynlib: tkgeomalgo.}
proc endPoint*(this: LawBSpline): cfloat {.noSideEffect, cdecl, importcpp: "EndPoint",
                                       dynlib: tkgeomalgo.}
proc firstUKnotIndex*(this: LawBSpline): cint {.noSideEffect, cdecl,
    importcpp: "FirstUKnotIndex", dynlib: tkgeomalgo.}
proc firstParameter*(this: LawBSpline): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkgeomalgo.}
proc knot*(this: LawBSpline; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Knot", dynlib: tkgeomalgo.}
proc knots*(this: LawBSpline; k: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Knots", dynlib: tkgeomalgo.}
proc knotSequence*(this: LawBSpline; k: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "KnotSequence", dynlib: tkgeomalgo.}
proc knotDistribution*(this: LawBSpline): GeomAbsBSplKnotDistribution {.
    noSideEffect, cdecl, importcpp: "KnotDistribution", dynlib: tkgeomalgo.}
proc lastUKnotIndex*(this: LawBSpline): cint {.noSideEffect, cdecl,
    importcpp: "LastUKnotIndex", dynlib: tkgeomalgo.}
proc lastParameter*(this: LawBSpline): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkgeomalgo.}
proc locateU*(this: LawBSpline; u: cfloat; parametricTolerance: cfloat; i1: var cint;
             i2: var cint; withKnotRepetition: bool = false) {.noSideEffect, cdecl,
    importcpp: "LocateU", dynlib: tkgeomalgo.}
proc multiplicity*(this: LawBSpline; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "Multiplicity", dynlib: tkgeomalgo.}
proc multiplicities*(this: LawBSpline; m: var TColStdArray1OfInteger) {.noSideEffect,
    cdecl, importcpp: "Multiplicities", dynlib: tkgeomalgo.}
proc nbKnots*(this: LawBSpline): cint {.noSideEffect, cdecl, importcpp: "NbKnots",
                                    dynlib: tkgeomalgo.}
proc nbPoles*(this: LawBSpline): cint {.noSideEffect, cdecl, importcpp: "NbPoles",
                                    dynlib: tkgeomalgo.}
proc pole*(this: LawBSpline; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Pole", dynlib: tkgeomalgo.}
proc poles*(this: LawBSpline; p: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkgeomalgo.}
proc startPoint*(this: LawBSpline): cfloat {.noSideEffect, cdecl,
    importcpp: "StartPoint", dynlib: tkgeomalgo.}
proc weight*(this: LawBSpline; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Weight", dynlib: tkgeomalgo.}
proc weights*(this: LawBSpline; w: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Weights", dynlib: tkgeomalgo.}
proc lawBSplinemaxDegree*(): cint {.cdecl, importcpp: "Law_BSpline::MaxDegree(@)",
                       dynlib: tkgeomalgo.}
proc movePointAndTangent*(this: var LawBSpline; u: cfloat; newValue: cfloat;
                         derivative: cfloat; tolerance: cfloat;
                         startingCondition: cint; endingCondition: cint;
                         errorStatus: var cint) {.cdecl,
    importcpp: "MovePointAndTangent", dynlib: tkgeomalgo.}
proc resolution*(this: LawBSpline; tolerance3D: cfloat; uTolerance: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Resolution", dynlib: tkgeomalgo.}
proc copy*(this: LawBSpline): Handle[LawBSpline] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkgeomalgo.}