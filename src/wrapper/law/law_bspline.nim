import law_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types





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





proc newLawBSpline*(poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                   multiplicities: TColStdArray1OfInteger; degree: cint;
                   periodic: bool = false): LawBSpline {.cdecl, constructor,
    importcpp: "Law_BSpline(@)", header: "Law_BSpline.hxx".}
proc newLawBSpline*(poles: TColStdArray1OfReal; weights: TColStdArray1OfReal;
                   knots: TColStdArray1OfReal;
                   multiplicities: TColStdArray1OfInteger; degree: cint;
                   periodic: bool = false): LawBSpline {.cdecl, constructor,
    importcpp: "Law_BSpline(@)", header: "Law_BSpline.hxx".}
proc increaseDegree*(this: var LawBSpline; degree: cint) {.cdecl,
    importcpp: "IncreaseDegree", header: "Law_BSpline.hxx".}
proc increaseMultiplicity*(this: var LawBSpline; index: cint; m: cint) {.cdecl,
    importcpp: "IncreaseMultiplicity", header: "Law_BSpline.hxx".}
proc increaseMultiplicity*(this: var LawBSpline; i1: cint; i2: cint; m: cint) {.cdecl,
    importcpp: "IncreaseMultiplicity", header: "Law_BSpline.hxx".}
proc incrementMultiplicity*(this: var LawBSpline; i1: cint; i2: cint; m: cint) {.cdecl,
    importcpp: "IncrementMultiplicity", header: "Law_BSpline.hxx".}
proc insertKnot*(this: var LawBSpline; u: cfloat; m: cint = 1;
                parametricTolerance: cfloat = 0.0; add: bool = true) {.cdecl,
    importcpp: "InsertKnot", header: "Law_BSpline.hxx".}
proc insertKnots*(this: var LawBSpline; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; parametricTolerance: cfloat = 0.0;
                 add: bool = false) {.cdecl, importcpp: "InsertKnots",
                                  header: "Law_BSpline.hxx".}
proc removeKnot*(this: var LawBSpline; index: cint; m: cint; tolerance: cfloat): bool {.
    cdecl, importcpp: "RemoveKnot", header: "Law_BSpline.hxx".}
proc reverse*(this: var LawBSpline) {.cdecl, importcpp: "Reverse", header: "Law_BSpline.hxx".}
proc reversedParameter*(this: LawBSpline; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Law_BSpline.hxx".}
proc segment*(this: var LawBSpline; u1: cfloat; u2: cfloat) {.cdecl,
    importcpp: "Segment", header: "Law_BSpline.hxx".}
proc setKnot*(this: var LawBSpline; index: cint; k: cfloat) {.cdecl,
    importcpp: "SetKnot", header: "Law_BSpline.hxx".}
proc setKnots*(this: var LawBSpline; k: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetKnots", header: "Law_BSpline.hxx".}
proc setKnot*(this: var LawBSpline; index: cint; k: cfloat; m: cint) {.cdecl,
    importcpp: "SetKnot", header: "Law_BSpline.hxx".}
proc periodicNormalization*(this: LawBSpline; u: var cfloat) {.noSideEffect, cdecl,
    importcpp: "PeriodicNormalization", header: "Law_BSpline.hxx".}
proc setPeriodic*(this: var LawBSpline) {.cdecl, importcpp: "SetPeriodic",
                                      header: "Law_BSpline.hxx".}
proc setOrigin*(this: var LawBSpline; index: cint) {.cdecl, importcpp: "SetOrigin",
    header: "Law_BSpline.hxx".}
proc setNotPeriodic*(this: var LawBSpline) {.cdecl, importcpp: "SetNotPeriodic",
    header: "Law_BSpline.hxx".}
proc setPole*(this: var LawBSpline; index: cint; p: cfloat) {.cdecl,
    importcpp: "SetPole", header: "Law_BSpline.hxx".}
proc setPole*(this: var LawBSpline; index: cint; p: cfloat; weight: cfloat) {.cdecl,
    importcpp: "SetPole", header: "Law_BSpline.hxx".}
proc setWeight*(this: var LawBSpline; index: cint; weight: cfloat) {.cdecl,
    importcpp: "SetWeight", header: "Law_BSpline.hxx".}
proc isCN*(this: LawBSpline; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                        header: "Law_BSpline.hxx".}
proc isClosed*(this: LawBSpline): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                     header: "Law_BSpline.hxx".}
proc isPeriodic*(this: LawBSpline): bool {.noSideEffect, cdecl,
                                       importcpp: "IsPeriodic", header: "Law_BSpline.hxx".}
proc isRational*(this: LawBSpline): bool {.noSideEffect, cdecl,
                                       importcpp: "IsRational", header: "Law_BSpline.hxx".}
proc continuity*(this: LawBSpline): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Law_BSpline.hxx".}
proc degree*(this: LawBSpline): cint {.noSideEffect, cdecl, importcpp: "Degree",
                                   header: "Law_BSpline.hxx".}
proc value*(this: LawBSpline; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "Law_BSpline.hxx".}
proc d0*(this: LawBSpline; u: cfloat; p: var cfloat) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Law_BSpline.hxx".}
proc d1*(this: LawBSpline; u: cfloat; p: var cfloat; v1: var cfloat) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Law_BSpline.hxx".}
proc d2*(this: LawBSpline; u: cfloat; p: var cfloat; v1: var cfloat; v2: var cfloat) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Law_BSpline.hxx".}
proc d3*(this: LawBSpline; u: cfloat; p: var cfloat; v1: var cfloat; v2: var cfloat;
        v3: var cfloat) {.noSideEffect, cdecl, importcpp: "D3", header: "Law_BSpline.hxx".}
proc dn*(this: LawBSpline; u: cfloat; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "DN", header: "Law_BSpline.hxx".}
proc localValue*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "LocalValue", header: "Law_BSpline.hxx".}
proc localD0*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; p: var cfloat) {.
    noSideEffect, cdecl, importcpp: "LocalD0", header: "Law_BSpline.hxx".}
proc localD1*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; p: var cfloat;
             v1: var cfloat) {.noSideEffect, cdecl, importcpp: "LocalD1",
                            header: "Law_BSpline.hxx".}
proc localD2*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; p: var cfloat;
             v1: var cfloat; v2: var cfloat) {.noSideEffect, cdecl,
    importcpp: "LocalD2", header: "Law_BSpline.hxx".}
proc localD3*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; p: var cfloat;
             v1: var cfloat; v2: var cfloat; v3: var cfloat) {.noSideEffect, cdecl,
    importcpp: "LocalD3", header: "Law_BSpline.hxx".}
proc localDN*(this: LawBSpline; u: cfloat; fromK1: cint; toK2: cint; n: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "LocalDN", header: "Law_BSpline.hxx".}
proc endPoint*(this: LawBSpline): cfloat {.noSideEffect, cdecl, importcpp: "EndPoint",
                                       header: "Law_BSpline.hxx".}
proc firstUKnotIndex*(this: LawBSpline): cint {.noSideEffect, cdecl,
    importcpp: "FirstUKnotIndex", header: "Law_BSpline.hxx".}
proc firstParameter*(this: LawBSpline): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Law_BSpline.hxx".}
proc knot*(this: LawBSpline; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Knot", header: "Law_BSpline.hxx".}
proc knots*(this: LawBSpline; k: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Knots", header: "Law_BSpline.hxx".}
proc knotSequence*(this: LawBSpline; k: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "KnotSequence", header: "Law_BSpline.hxx".}
proc knotDistribution*(this: LawBSpline): GeomAbsBSplKnotDistribution {.
    noSideEffect, cdecl, importcpp: "KnotDistribution", header: "Law_BSpline.hxx".}
proc lastUKnotIndex*(this: LawBSpline): cint {.noSideEffect, cdecl,
    importcpp: "LastUKnotIndex", header: "Law_BSpline.hxx".}
proc lastParameter*(this: LawBSpline): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Law_BSpline.hxx".}
proc locateU*(this: LawBSpline; u: cfloat; parametricTolerance: cfloat; i1: var cint;
             i2: var cint; withKnotRepetition: bool = false) {.noSideEffect, cdecl,
    importcpp: "LocateU", header: "Law_BSpline.hxx".}
proc multiplicity*(this: LawBSpline; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "Multiplicity", header: "Law_BSpline.hxx".}
proc multiplicities*(this: LawBSpline; m: var TColStdArray1OfInteger) {.noSideEffect,
    cdecl, importcpp: "Multiplicities", header: "Law_BSpline.hxx".}
proc nbKnots*(this: LawBSpline): cint {.noSideEffect, cdecl, importcpp: "NbKnots",
                                    header: "Law_BSpline.hxx".}
proc nbPoles*(this: LawBSpline): cint {.noSideEffect, cdecl, importcpp: "NbPoles",
                                    header: "Law_BSpline.hxx".}
proc pole*(this: LawBSpline; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Pole", header: "Law_BSpline.hxx".}
proc poles*(this: LawBSpline; p: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Law_BSpline.hxx".}
proc startPoint*(this: LawBSpline): cfloat {.noSideEffect, cdecl,
    importcpp: "StartPoint", header: "Law_BSpline.hxx".}
proc weight*(this: LawBSpline; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Weight", header: "Law_BSpline.hxx".}
proc weights*(this: LawBSpline; w: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Weights", header: "Law_BSpline.hxx".}
proc lawBSplinemaxDegree*(): cint {.cdecl, importcpp: "Law_BSpline::MaxDegree(@)",
                       header: "Law_BSpline.hxx".}
proc movePointAndTangent*(this: var LawBSpline; u: cfloat; newValue: cfloat;
                         derivative: cfloat; tolerance: cfloat;
                         startingCondition: cint; endingCondition: cint;
                         errorStatus: var cint) {.cdecl,
    importcpp: "MovePointAndTangent", header: "Law_BSpline.hxx".}
proc resolution*(this: LawBSpline; tolerance3D: cfloat; uTolerance: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Resolution", header: "Law_BSpline.hxx".}
proc copy*(this: LawBSpline): Handle[LawBSpline] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Law_BSpline.hxx".}


