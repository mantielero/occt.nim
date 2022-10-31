import ../../tkmath/tcolgp/tcolgp_types
import geom2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types



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





proc newGeom2dBSplineCurve*(poles: TColgpArray1OfPnt2d; knots: TColStdArray1OfReal;
                           multiplicities: TColStdArray1OfInteger; degree: cint;
                           periodic: bool = false): Geom2dBSplineCurve {.cdecl,
    constructor, importcpp: "Geom2d_BSplineCurve(@)", header: "Geom2d_BSplineCurve.hxx".}
proc newGeom2dBSplineCurve*(poles: TColgpArray1OfPnt2d;
                           weights: TColStdArray1OfReal;
                           knots: TColStdArray1OfReal;
                           multiplicities: TColStdArray1OfInteger; degree: cint;
                           periodic: bool = false): Geom2dBSplineCurve {.cdecl,
    constructor, importcpp: "Geom2d_BSplineCurve(@)", header: "Geom2d_BSplineCurve.hxx".}
proc increaseDegree*(this: var Geom2dBSplineCurve; degree: cint) {.cdecl,
    importcpp: "IncreaseDegree", header: "Geom2d_BSplineCurve.hxx".}
proc increaseMultiplicity*(this: var Geom2dBSplineCurve; index: cint; m: cint) {.cdecl,
    importcpp: "IncreaseMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc increaseMultiplicity*(this: var Geom2dBSplineCurve; i1: cint; i2: cint; m: cint) {.
    cdecl, importcpp: "IncreaseMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc incrementMultiplicity*(this: var Geom2dBSplineCurve; i1: cint; i2: cint; m: cint) {.
    cdecl, importcpp: "IncrementMultiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc insertKnot*(this: var Geom2dBSplineCurve; u: cfloat; m: cint = 1;
                parametricTolerance: cfloat = 0.0) {.cdecl, importcpp: "InsertKnot",
    header: "Geom2d_BSplineCurve.hxx".}
proc insertKnots*(this: var Geom2dBSplineCurve; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; parametricTolerance: cfloat = 0.0;
                 add: bool = false) {.cdecl, importcpp: "InsertKnots", header: "Geom2d_BSplineCurve.hxx".}
proc removeKnot*(this: var Geom2dBSplineCurve; index: cint; m: cint; tolerance: cfloat): bool {.
    cdecl, importcpp: "RemoveKnot", header: "Geom2d_BSplineCurve.hxx".}
proc insertPoleAfter*(this: var Geom2dBSplineCurve; index: cint; p: Pnt2dObj;
                     weight: cfloat = 1.0) {.cdecl, importcpp: "InsertPoleAfter",
    header: "Geom2d_BSplineCurve.hxx".}
proc insertPoleBefore*(this: var Geom2dBSplineCurve; index: cint; p: Pnt2dObj;
                      weight: cfloat = 1.0) {.cdecl, importcpp: "InsertPoleBefore",
    header: "Geom2d_BSplineCurve.hxx".}
proc removePole*(this: var Geom2dBSplineCurve; index: cint) {.cdecl,
    importcpp: "RemovePole", header: "Geom2d_BSplineCurve.hxx".}
proc reverse*(this: var Geom2dBSplineCurve) {.cdecl, importcpp: "Reverse",
    header: "Geom2d_BSplineCurve.hxx".}
proc reversedParameter*(this: Geom2dBSplineCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom2d_BSplineCurve.hxx".}
proc segment*(this: var Geom2dBSplineCurve; u1: cfloat; u2: cfloat;
             theTolerance: cfloat = 1.0e-7) {.cdecl, importcpp: "Segment",
    header: "Geom2d_BSplineCurve.hxx".}
proc setKnot*(this: var Geom2dBSplineCurve; index: cint; k: cfloat) {.cdecl,
    importcpp: "SetKnot", header: "Geom2d_BSplineCurve.hxx".}
proc setKnots*(this: var Geom2dBSplineCurve; k: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetKnots", header: "Geom2d_BSplineCurve.hxx".}
proc setKnot*(this: var Geom2dBSplineCurve; index: cint; k: cfloat; m: cint) {.cdecl,
    importcpp: "SetKnot", header: "Geom2d_BSplineCurve.hxx".}
proc periodicNormalization*(this: Geom2dBSplineCurve; u: var cfloat) {.noSideEffect,
    cdecl, importcpp: "PeriodicNormalization", header: "Geom2d_BSplineCurve.hxx".}
proc setPeriodic*(this: var Geom2dBSplineCurve) {.cdecl, importcpp: "SetPeriodic",
    header: "Geom2d_BSplineCurve.hxx".}
proc setOrigin*(this: var Geom2dBSplineCurve; index: cint) {.cdecl,
    importcpp: "SetOrigin", header: "Geom2d_BSplineCurve.hxx".}
proc setNotPeriodic*(this: var Geom2dBSplineCurve) {.cdecl,
    importcpp: "SetNotPeriodic", header: "Geom2d_BSplineCurve.hxx".}
proc setPole*(this: var Geom2dBSplineCurve; index: cint; p: Pnt2dObj) {.cdecl,
    importcpp: "SetPole", header: "Geom2d_BSplineCurve.hxx".}
proc setPole*(this: var Geom2dBSplineCurve; index: cint; p: Pnt2dObj; weight: cfloat) {.
    cdecl, importcpp: "SetPole", header: "Geom2d_BSplineCurve.hxx".}
proc setWeight*(this: var Geom2dBSplineCurve; index: cint; weight: cfloat) {.cdecl,
    importcpp: "SetWeight", header: "Geom2d_BSplineCurve.hxx".}
proc movePoint*(this: var Geom2dBSplineCurve; u: cfloat; p: Pnt2dObj; index1: cint;
               index2: cint; firstModifiedPole: var cint; lastModifiedPole: var cint) {.
    cdecl, importcpp: "MovePoint", header: "Geom2d_BSplineCurve.hxx".}
proc movePointAndTangent*(this: var Geom2dBSplineCurve; u: cfloat; p: Pnt2dObj;
                         tangent: Vec2dObj; tolerance: cfloat; startingCondition: cint;
                         endingCondition: cint; errorStatus: var cint) {.cdecl,
    importcpp: "MovePointAndTangent", header: "Geom2d_BSplineCurve.hxx".}
proc isCN*(this: Geom2dBSplineCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom2d_BSplineCurve.hxx".}
proc isG1*(this: Geom2dBSplineCurve; theTf: cfloat; theTl: cfloat; theAngTol: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsG1", header: "Geom2d_BSplineCurve.hxx".}
proc isClosed*(this: Geom2dBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom2d_BSplineCurve.hxx".}
proc isPeriodic*(this: Geom2dBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_BSplineCurve.hxx".}
proc isRational*(this: Geom2dBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Geom2d_BSplineCurve.hxx".}
proc continuity*(this: Geom2dBSplineCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2d_BSplineCurve.hxx".}
proc degree*(this: Geom2dBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "Geom2d_BSplineCurve.hxx".}
proc d0*(this: Geom2dBSplineCurve; u: cfloat; p: var Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_BSplineCurve.hxx".}
proc d1*(this: Geom2dBSplineCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Geom2d_BSplineCurve.hxx".}
proc d2*(this: Geom2dBSplineCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_BSplineCurve.hxx".}
proc d3*(this: Geom2dBSplineCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj;
        v3: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_BSplineCurve.hxx".}
proc dn*(this: Geom2dBSplineCurve; u: cfloat; n: cint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_BSplineCurve.hxx".}
proc localValue*(this: Geom2dBSplineCurve; u: cfloat; fromK1: cint; toK2: cint): Pnt2dObj {.
    noSideEffect, cdecl, importcpp: "LocalValue", header: "Geom2d_BSplineCurve.hxx".}
proc localD0*(this: Geom2dBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var Pnt2dObj) {.
    noSideEffect, cdecl, importcpp: "LocalD0", header: "Geom2d_BSplineCurve.hxx".}
proc localD1*(this: Geom2dBSplineCurve; u: cfloat; fromK1: cint; toK2: cint;
             p: var Pnt2dObj; v1: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "LocalD1",
                                      header: "Geom2d_BSplineCurve.hxx".}
proc localD2*(this: Geom2dBSplineCurve; u: cfloat; fromK1: cint; toK2: cint;
             p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.noSideEffect, cdecl,
    importcpp: "LocalD2", header: "Geom2d_BSplineCurve.hxx".}
proc localD3*(this: Geom2dBSplineCurve; u: cfloat; fromK1: cint; toK2: cint;
             p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj; v3: var Vec2dObj) {.noSideEffect,
    cdecl, importcpp: "LocalD3", header: "Geom2d_BSplineCurve.hxx".}
proc localDN*(this: Geom2dBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; n: cint): Vec2dObj {.
    noSideEffect, cdecl, importcpp: "LocalDN", header: "Geom2d_BSplineCurve.hxx".}
proc endPoint*(this: Geom2dBSplineCurve): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "EndPoint", header: "Geom2d_BSplineCurve.hxx".}
proc firstUKnotIndex*(this: Geom2dBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "FirstUKnotIndex", header: "Geom2d_BSplineCurve.hxx".}
proc firstParameter*(this: Geom2dBSplineCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_BSplineCurve.hxx".}
proc knot*(this: Geom2dBSplineCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Knot", header: "Geom2d_BSplineCurve.hxx".}
proc knots*(this: Geom2dBSplineCurve; k: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Knots", header: "Geom2d_BSplineCurve.hxx".}
proc knots*(this: Geom2dBSplineCurve): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Knots", header: "Geom2d_BSplineCurve.hxx".}
proc knotSequence*(this: Geom2dBSplineCurve; k: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "KnotSequence", header: "Geom2d_BSplineCurve.hxx".}
proc knotSequence*(this: Geom2dBSplineCurve): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "KnotSequence", header: "Geom2d_BSplineCurve.hxx".}
proc knotDistribution*(this: Geom2dBSplineCurve): GeomAbsBSplKnotDistribution {.
    noSideEffect, cdecl, importcpp: "KnotDistribution", header: "Geom2d_BSplineCurve.hxx".}
proc lastUKnotIndex*(this: Geom2dBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "LastUKnotIndex", header: "Geom2d_BSplineCurve.hxx".}
proc lastParameter*(this: Geom2dBSplineCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_BSplineCurve.hxx".}
proc locateU*(this: Geom2dBSplineCurve; u: cfloat; parametricTolerance: cfloat;
             i1: var cint; i2: var cint; withKnotRepetition: bool = false) {.noSideEffect,
    cdecl, importcpp: "LocateU", header: "Geom2d_BSplineCurve.hxx".}
proc multiplicity*(this: Geom2dBSplineCurve; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "Multiplicity", header: "Geom2d_BSplineCurve.hxx".}
proc multiplicities*(this: Geom2dBSplineCurve; m: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Multiplicities", header: "Geom2d_BSplineCurve.hxx".}
proc multiplicities*(this: Geom2dBSplineCurve): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "Multiplicities", header: "Geom2d_BSplineCurve.hxx".}
proc nbKnots*(this: Geom2dBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "Geom2d_BSplineCurve.hxx".}
proc nbPoles*(this: Geom2dBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Geom2d_BSplineCurve.hxx".}
proc pole*(this: Geom2dBSplineCurve; index: cint): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pole", header: "Geom2d_BSplineCurve.hxx".}
proc poles*(this: Geom2dBSplineCurve; p: var TColgpArray1OfPnt2d) {.noSideEffect,
    cdecl, importcpp: "Poles", header: "Geom2d_BSplineCurve.hxx".}
proc poles*(this: Geom2dBSplineCurve): TColgpArray1OfPnt2d {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom2d_BSplineCurve.hxx".}
proc startPoint*(this: Geom2dBSplineCurve): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "StartPoint", header: "Geom2d_BSplineCurve.hxx".}
proc weight*(this: Geom2dBSplineCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Weight", header: "Geom2d_BSplineCurve.hxx".}
proc weights*(this: Geom2dBSplineCurve; w: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", header: "Geom2d_BSplineCurve.hxx".}
proc weights*(this: Geom2dBSplineCurve): ptr TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "Weights", header: "Geom2d_BSplineCurve.hxx".}
proc transform*(this: var Geom2dBSplineCurve; t: Trsf2dObj) {.cdecl,
    importcpp: "Transform", header: "Geom2d_BSplineCurve.hxx".}
proc maxDegreeBSplineCurve2d*(): cint {.cdecl, importcpp: "Geom2d_BSplineCurve::MaxDegree(@)",
                       header: "Geom2d_BSplineCurve.hxx".}
proc resolution*(this: var Geom2dBSplineCurve; toleranceUV: cfloat;
                uTolerance: var cfloat) {.cdecl, importcpp: "Resolution",
                                       header: "Geom2d_BSplineCurve.hxx".}
proc copy*(this: Geom2dBSplineCurve): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_BSplineCurve.hxx".}
proc dumpJson*(this: Geom2dBSplineCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_BSplineCurve.hxx".}

