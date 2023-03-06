import ../tcolgp/tcolgp_types
import ../gp/gp_types
import ../standard/standard_types
import geom_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types







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





proc newGeomBSplineCurve*(poles: TColgpArray1OfPnt; knots: TColStdArray1OfReal;
                         multiplicities: TColStdArray1OfInteger; degree: cint;
                         periodic: bool = false): GeomBSplineCurve {.cdecl,
    constructor, importcpp: "Geom_BSplineCurve(@)", header: "Geom_BSplineCurve.hxx".}
proc newGeomBSplineCurve*(poles: TColgpArray1OfPnt; weights: TColStdArray1OfReal;
                         knots: TColStdArray1OfReal;
                         multiplicities: TColStdArray1OfInteger; degree: cint;
                         periodic: bool = false; checkRational: bool = true): GeomBSplineCurve {.
    cdecl, constructor, importcpp: "Geom_BSplineCurve(@)", header: "Geom_BSplineCurve.hxx".}
proc increaseDegree*(this: var GeomBSplineCurve; degree: cint) {.cdecl,
    importcpp: "IncreaseDegree", header: "Geom_BSplineCurve.hxx".}
proc increaseMultiplicity*(this: var GeomBSplineCurve; index: cint; m: cint) {.cdecl,
    importcpp: "IncreaseMultiplicity", header: "Geom_BSplineCurve.hxx".}
proc increaseMultiplicity*(this: var GeomBSplineCurve; i1: cint; i2: cint; m: cint) {.
    cdecl, importcpp: "IncreaseMultiplicity", header: "Geom_BSplineCurve.hxx".}
proc incrementMultiplicity*(this: var GeomBSplineCurve; i1: cint; i2: cint; m: cint) {.
    cdecl, importcpp: "IncrementMultiplicity", header: "Geom_BSplineCurve.hxx".}
proc insertKnot*(this: var GeomBSplineCurve; u: cfloat; m: cint = 1;
                parametricTolerance: cfloat = 0.0; add: bool = true) {.cdecl,
    importcpp: "InsertKnot", header: "Geom_BSplineCurve.hxx".}
proc insertKnots*(this: var GeomBSplineCurve; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; parametricTolerance: cfloat = 0.0;
                 add: bool = false) {.cdecl, importcpp: "InsertKnots", header: "Geom_BSplineCurve.hxx".}
proc removeKnot*(this: var GeomBSplineCurve; index: cint; m: cint; tolerance: cfloat): bool {.
    cdecl, importcpp: "RemoveKnot", header: "Geom_BSplineCurve.hxx".}
proc reverse*(this: var GeomBSplineCurve) {.cdecl, importcpp: "Reverse", header: "Geom_BSplineCurve.hxx".}
proc reversedParameter*(this: GeomBSplineCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom_BSplineCurve.hxx".}
proc segment*(this: var GeomBSplineCurve; u1: cfloat; u2: cfloat;
             theTolerance: cfloat = 1.0e-7) {.cdecl, importcpp: "Segment",
    header: "Geom_BSplineCurve.hxx".}
proc setKnot*(this: var GeomBSplineCurve; index: cint; k: cfloat) {.cdecl,
    importcpp: "SetKnot", header: "Geom_BSplineCurve.hxx".}
proc setKnots*(this: var GeomBSplineCurve; k: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetKnots", header: "Geom_BSplineCurve.hxx".}
proc setKnot*(this: var GeomBSplineCurve; index: cint; k: cfloat; m: cint) {.cdecl,
    importcpp: "SetKnot", header: "Geom_BSplineCurve.hxx".}
proc periodicNormalization*(this: GeomBSplineCurve; u: var cfloat) {.noSideEffect,
    cdecl, importcpp: "PeriodicNormalization", header: "Geom_BSplineCurve.hxx".}
proc setPeriodic*(this: var GeomBSplineCurve) {.cdecl, importcpp: "SetPeriodic",
    header: "Geom_BSplineCurve.hxx".}
proc setOrigin*(this: var GeomBSplineCurve; index: cint) {.cdecl,
    importcpp: "SetOrigin", header: "Geom_BSplineCurve.hxx".}
proc setOrigin*(this: var GeomBSplineCurve; u: cfloat; tol: cfloat) {.cdecl,
    importcpp: "SetOrigin", header: "Geom_BSplineCurve.hxx".}
proc setNotPeriodic*(this: var GeomBSplineCurve) {.cdecl,
    importcpp: "SetNotPeriodic", header: "Geom_BSplineCurve.hxx".}
proc setPole*(this: var GeomBSplineCurve; index: cint; p: PntObj) {.cdecl,
    importcpp: "SetPole", header: "Geom_BSplineCurve.hxx".}
proc setPole*(this: var GeomBSplineCurve; index: cint; p: PntObj; weight: cfloat) {.cdecl,
    importcpp: "SetPole", header: "Geom_BSplineCurve.hxx".}
proc setWeight*(this: var GeomBSplineCurve; index: cint; weight: cfloat) {.cdecl,
    importcpp: "SetWeight", header: "Geom_BSplineCurve.hxx".}
proc movePoint*(this: var GeomBSplineCurve; u: cfloat; p: PntObj; index1: cint; index2: cint;
               firstModifiedPole: var cint; lastModifiedPole: var cint) {.cdecl,
    importcpp: "MovePoint", header: "Geom_BSplineCurve.hxx".}
proc movePointAndTangent*(this: var GeomBSplineCurve; u: cfloat; p: PntObj; tangent: VecObj;
                         tolerance: cfloat; startingCondition: cint;
                         endingCondition: cint; errorStatus: var cint) {.cdecl,
    importcpp: "MovePointAndTangent", header: "Geom_BSplineCurve.hxx".}
proc isCN*(this: GeomBSplineCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom_BSplineCurve.hxx".}
proc isG1*(this: GeomBSplineCurve; theTf: cfloat; theTl: cfloat; theAngTol: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsG1", header: "Geom_BSplineCurve.hxx".}
proc isClosed*(this: GeomBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom_BSplineCurve.hxx".}
proc isPeriodic*(this: GeomBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom_BSplineCurve.hxx".}
proc isRational*(this: GeomBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Geom_BSplineCurve.hxx".}
proc continuity*(this: GeomBSplineCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_BSplineCurve.hxx".}
proc degree*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
    header: "Geom_BSplineCurve.hxx".}
proc d0*(this: GeomBSplineCurve; u: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_BSplineCurve.hxx".}
proc d1*(this: GeomBSplineCurve; u: cfloat; p: var PntObj; v1: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_BSplineCurve.hxx".}
proc d2*(this: GeomBSplineCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom_BSplineCurve.hxx".}
proc d3*(this: GeomBSplineCurve; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_BSplineCurve.hxx".}
proc dn*(this: GeomBSplineCurve; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_BSplineCurve.hxx".}
proc localValue*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint): PntObj {.
    noSideEffect, cdecl, importcpp: "LocalValue", header: "Geom_BSplineCurve.hxx".}
proc localD0*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var PntObj) {.
    noSideEffect, cdecl, importcpp: "LocalD0", header: "Geom_BSplineCurve.hxx".}
proc localD1*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var PntObj;
             v1: var VecObj) {.noSideEffect, cdecl, importcpp: "LocalD1", header: "Geom_BSplineCurve.hxx".}
proc localD2*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var PntObj;
             v1: var VecObj; v2: var VecObj) {.noSideEffect, cdecl, importcpp: "LocalD2",
                                   header: "Geom_BSplineCurve.hxx".}
proc localD3*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var PntObj;
             v1: var VecObj; v2: var VecObj; v3: var VecObj) {.noSideEffect, cdecl,
    importcpp: "LocalD3", header: "Geom_BSplineCurve.hxx".}
proc localDN*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; n: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "LocalDN", header: "Geom_BSplineCurve.hxx".}
proc endPoint*(this: GeomBSplineCurve): PntObj {.noSideEffect, cdecl,
    importcpp: "EndPoint", header: "Geom_BSplineCurve.hxx".}
proc firstUKnotIndex*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "FirstUKnotIndex", header: "Geom_BSplineCurve.hxx".}
proc firstParameter*(this: GeomBSplineCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_BSplineCurve.hxx".}
proc knot*(this: GeomBSplineCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Knot", header: "Geom_BSplineCurve.hxx".}
proc knots*(this: GeomBSplineCurve; k: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Knots", header: "Geom_BSplineCurve.hxx".}
proc knots*(this: GeomBSplineCurve): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Knots", header: "Geom_BSplineCurve.hxx".}
proc knotSequence*(this: GeomBSplineCurve; k: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "KnotSequence", header: "Geom_BSplineCurve.hxx".}
proc knotSequence*(this: GeomBSplineCurve): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "KnotSequence", header: "Geom_BSplineCurve.hxx".}
proc knotDistribution*(this: GeomBSplineCurve): GeomAbsBSplKnotDistribution {.
    noSideEffect, cdecl, importcpp: "KnotDistribution", header: "Geom_BSplineCurve.hxx".}
proc lastUKnotIndex*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "LastUKnotIndex", header: "Geom_BSplineCurve.hxx".}
proc lastParameter*(this: GeomBSplineCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_BSplineCurve.hxx".}
proc locateU*(this: GeomBSplineCurve; u: cfloat; parametricTolerance: cfloat;
             i1: var cint; i2: var cint; withKnotRepetition: bool = false) {.noSideEffect,
    cdecl, importcpp: "LocateU", header: "Geom_BSplineCurve.hxx".}
proc multiplicity*(this: GeomBSplineCurve; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "Multiplicity", header: "Geom_BSplineCurve.hxx".}
proc multiplicities*(this: GeomBSplineCurve; m: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Multiplicities", header: "Geom_BSplineCurve.hxx".}
proc multiplicities*(this: GeomBSplineCurve): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "Multiplicities", header: "Geom_BSplineCurve.hxx".}
proc nbKnots*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "Geom_BSplineCurve.hxx".}
proc nbPoles*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Geom_BSplineCurve.hxx".}
proc pole*(this: GeomBSplineCurve; index: cint): PntObj {.noSideEffect, cdecl,
    importcpp: "Pole", header: "Geom_BSplineCurve.hxx".}
proc poles*(this: GeomBSplineCurve; p: var TColgpArray1OfPnt) {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom_BSplineCurve.hxx".}
proc poles*(this: GeomBSplineCurve): TColgpArray1OfPnt {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom_BSplineCurve.hxx".}
proc startPoint*(this: GeomBSplineCurve): PntObj {.noSideEffect, cdecl,
    importcpp: "StartPoint", header: "Geom_BSplineCurve.hxx".}
proc weight*(this: GeomBSplineCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Weight", header: "Geom_BSplineCurve.hxx".}
proc weights*(this: GeomBSplineCurve; w: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", header: "Geom_BSplineCurve.hxx".}
proc weights*(this: GeomBSplineCurve): ptr TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Weights", header: "Geom_BSplineCurve.hxx".}
proc transform*(this: var GeomBSplineCurve; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_BSplineCurve.hxx".}
proc maxDegreeBSplineCurve*(): cint {.cdecl, importcpp: "Geom_BSplineCurve::MaxDegree(@)",
                       header: "Geom_BSplineCurve.hxx".}
proc resolution*(this: var GeomBSplineCurve; tolerance3D: cfloat;
                uTolerance: var cfloat) {.cdecl, importcpp: "Resolution",
                                       header: "Geom_BSplineCurve.hxx".}
proc copy*(this: GeomBSplineCurve): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_BSplineCurve.hxx".}
proc isEqual*(this: GeomBSplineCurve; theOther: Handle[GeomBSplineCurve];
             thePreci: cfloat): bool {.noSideEffect, cdecl, importcpp: "IsEqual",
                                    header: "Geom_BSplineCurve.hxx".}
proc dumpJson*(this: GeomBSplineCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_BSplineCurve.hxx".}



