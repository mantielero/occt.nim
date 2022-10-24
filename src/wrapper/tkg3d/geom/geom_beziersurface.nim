import geom_types

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
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_BezierSurface"




proc newGeomBezierSurface*(surfacePoles: TColgpArray2OfPnt): GeomBezierSurface {.
    cdecl, constructor, importcpp: "Geom_BezierSurface(@)", header: "Geom_BezierSurface.hxx".}
proc newGeomBezierSurface*(surfacePoles: TColgpArray2OfPnt;
                          poleWeights: TColStdArray2OfReal): GeomBezierSurface {.
    cdecl, constructor, importcpp: "Geom_BezierSurface(@)", header: "Geom_BezierSurface.hxx".}
proc exchangeUV*(this: var GeomBezierSurface) {.cdecl, importcpp: "ExchangeUV",
    header: "Geom_BezierSurface.hxx".}
proc increase*(this: var GeomBezierSurface; uDeg: cint; vDeg: cint) {.cdecl,
    importcpp: "Increase", header: "Geom_BezierSurface.hxx".}
proc insertPoleColAfter*(this: var GeomBezierSurface; vIndex: cint;
                        cPoles: TColgpArray1OfPnt) {.cdecl,
    importcpp: "InsertPoleColAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleColAfter*(this: var GeomBezierSurface; vIndex: cint;
                        cPoles: TColgpArray1OfPnt;
                        cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "InsertPoleColAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleColBefore*(this: var GeomBezierSurface; vIndex: cint;
                         cPoles: TColgpArray1OfPnt) {.cdecl,
    importcpp: "InsertPoleColBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleColBefore*(this: var GeomBezierSurface; vIndex: cint;
                         cPoles: TColgpArray1OfPnt;
                         cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "InsertPoleColBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowAfter*(this: var GeomBezierSurface; uIndex: cint;
                        cPoles: TColgpArray1OfPnt) {.cdecl,
    importcpp: "InsertPoleRowAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowAfter*(this: var GeomBezierSurface; uIndex: cint;
                        cPoles: TColgpArray1OfPnt;
                        cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "InsertPoleRowAfter", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowBefore*(this: var GeomBezierSurface; uIndex: cint;
                         cPoles: TColgpArray1OfPnt) {.cdecl,
    importcpp: "InsertPoleRowBefore", header: "Geom_BezierSurface.hxx".}
proc insertPoleRowBefore*(this: var GeomBezierSurface; uIndex: cint;
                         cPoles: TColgpArray1OfPnt;
                         cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "InsertPoleRowBefore", header: "Geom_BezierSurface.hxx".}
proc removePoleCol*(this: var GeomBezierSurface; vIndex: cint) {.cdecl,
    importcpp: "RemovePoleCol", header: "Geom_BezierSurface.hxx".}
proc removePoleRow*(this: var GeomBezierSurface; uIndex: cint) {.cdecl,
    importcpp: "RemovePoleRow", header: "Geom_BezierSurface.hxx".}
proc segment*(this: var GeomBezierSurface; u1: cfloat; u2: cfloat; v1: cfloat; v2: cfloat) {.
    cdecl, importcpp: "Segment", header: "Geom_BezierSurface.hxx".}
proc setPole*(this: var GeomBezierSurface; uIndex: cint; vIndex: cint; p: PntObj) {.cdecl,
    importcpp: "SetPole", header: "Geom_BezierSurface.hxx".}
proc setPole*(this: var GeomBezierSurface; uIndex: cint; vIndex: cint; p: PntObj;
             weight: cfloat) {.cdecl, importcpp: "SetPole", header: "Geom_BezierSurface.hxx".}
proc setPoleCol*(this: var GeomBezierSurface; vIndex: cint; cPoles: TColgpArray1OfPnt) {.
    cdecl, importcpp: "SetPoleCol", header: "Geom_BezierSurface.hxx".}
proc setPoleCol*(this: var GeomBezierSurface; vIndex: cint; cPoles: TColgpArray1OfPnt;
                cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetPoleCol", header: "Geom_BezierSurface.hxx".}
proc setPoleRow*(this: var GeomBezierSurface; uIndex: cint; cPoles: TColgpArray1OfPnt) {.
    cdecl, importcpp: "SetPoleRow", header: "Geom_BezierSurface.hxx".}
proc setPoleRow*(this: var GeomBezierSurface; uIndex: cint; cPoles: TColgpArray1OfPnt;
                cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetPoleRow", header: "Geom_BezierSurface.hxx".}
proc setWeight*(this: var GeomBezierSurface; uIndex: cint; vIndex: cint; weight: cfloat) {.
    cdecl, importcpp: "SetWeight", header: "Geom_BezierSurface.hxx".}
proc setWeightCol*(this: var GeomBezierSurface; vIndex: cint;
                  cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetWeightCol", header: "Geom_BezierSurface.hxx".}
proc setWeightRow*(this: var GeomBezierSurface; uIndex: cint;
                  cPoleWeights: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetWeightRow", header: "Geom_BezierSurface.hxx".}
proc uReverse*(this: var GeomBezierSurface) {.cdecl, importcpp: "UReverse",
    header: "Geom_BezierSurface.hxx".}
proc uReversedParameter*(this: GeomBezierSurface; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "UReversedParameter", header: "Geom_BezierSurface.hxx".}
proc vReverse*(this: var GeomBezierSurface) {.cdecl, importcpp: "VReverse",
    header: "Geom_BezierSurface.hxx".}
proc vReversedParameter*(this: GeomBezierSurface; v: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "VReversedParameter", header: "Geom_BezierSurface.hxx".}
proc bounds*(this: GeomBezierSurface; u1: var cfloat; u2: var cfloat; v1: var cfloat;
            v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds", header: "Geom_BezierSurface.hxx".}
proc continuity*(this: GeomBezierSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_BezierSurface.hxx".}
proc d0*(this: GeomBezierSurface; u: cfloat; v: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_BezierSurface.hxx".}
proc d1*(this: GeomBezierSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_BezierSurface.hxx".}
proc d2*(this: GeomBezierSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Geom_BezierSurface.hxx".}
proc d3*(this: GeomBezierSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj; d3v: var VecObj;
        d3uuv: var VecObj; d3uvv: var VecObj) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Geom_BezierSurface.hxx".}
proc dn*(this: GeomBezierSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_BezierSurface.hxx".}
proc nbUPoles*(this: GeomBezierSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", header: "Geom_BezierSurface.hxx".}
proc nbVPoles*(this: GeomBezierSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", header: "Geom_BezierSurface.hxx".}
proc pole*(this: GeomBezierSurface; uIndex: cint; vIndex: cint): PntObj {.noSideEffect,
    cdecl, importcpp: "Pole", header: "Geom_BezierSurface.hxx".}
proc poles*(this: GeomBezierSurface; p: var TColgpArray2OfPnt) {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom_BezierSurface.hxx".}
proc poles*(this: GeomBezierSurface): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom_BezierSurface.hxx".}
proc uDegree*(this: GeomBezierSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "Geom_BezierSurface.hxx".}
proc uIso*(this: GeomBezierSurface; u: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "UIso", header: "Geom_BezierSurface.hxx".}
proc vDegree*(this: GeomBezierSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "Geom_BezierSurface.hxx".}
proc vIso*(this: GeomBezierSurface; v: cfloat): Handle[GeomCurve] {.noSideEffect,
    cdecl, importcpp: "VIso", header: "Geom_BezierSurface.hxx".}
proc weight*(this: GeomBezierSurface; uIndex: cint; vIndex: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Weight", header: "Geom_BezierSurface.hxx".}
proc weights*(this: GeomBezierSurface; w: var TColStdArray2OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", header: "Geom_BezierSurface.hxx".}
proc weights*(this: GeomBezierSurface): ptr TColStdArray2OfReal {.noSideEffect, cdecl,
    importcpp: "Weights", header: "Geom_BezierSurface.hxx".}
proc isUClosed*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_BezierSurface.hxx".}
proc isVClosed*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_BezierSurface.hxx".}
proc isCNu*(this: GeomBezierSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", header: "Geom_BezierSurface.hxx".}
proc isCNv*(this: GeomBezierSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", header: "Geom_BezierSurface.hxx".}
proc isUPeriodic*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_BezierSurface.hxx".}
proc isVPeriodic*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_BezierSurface.hxx".}
proc isURational*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", header: "Geom_BezierSurface.hxx".}
proc isVRational*(this: GeomBezierSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", header: "Geom_BezierSurface.hxx".}
proc transform*(this: var GeomBezierSurface; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_BezierSurface.hxx".}
proc maxDegreeBezierSurface*(): cint {.cdecl, importcpp: "Geom_BezierSurface::MaxDegree(@)",
                       header: "Geom_BezierSurface.hxx".}
proc resolution*(this: var GeomBezierSurface; tolerance3D: cfloat;
                uTolerance: var cfloat; vTolerance: var cfloat) {.cdecl,
    importcpp: "Resolution", header: "Geom_BezierSurface.hxx".}
proc copy*(this: GeomBezierSurface): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_BezierSurface.hxx".}
proc dumpJson*(this: GeomBezierSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_BezierSurface.hxx".}
