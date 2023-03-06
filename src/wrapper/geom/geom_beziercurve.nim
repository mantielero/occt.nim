import ../tcolgp/tcolgp_types
import ../gp/gp_types
import ../standard/standard_types
import geom_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types











##  Created on: 1993-03-09
##  Created by: Philippe DAUTRY
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





proc newGeomBezierCurve*(curvePoles: TColgpArray1OfPnt): GeomBezierCurve {.cdecl,
    constructor, importcpp: "Geom_BezierCurve(@)", header: "Geom_BezierCurve.hxx".}
proc newGeomBezierCurve*(curvePoles: TColgpArray1OfPnt;
                        poleWeights: TColStdArray1OfReal): GeomBezierCurve {.cdecl,
    constructor, importcpp: "Geom_BezierCurve(@)", header: "Geom_BezierCurve.hxx".}
proc increase*(this: var GeomBezierCurve; degree: cint) {.cdecl, importcpp: "Increase",
    header: "Geom_BezierCurve.hxx".}
proc insertPoleAfter*(this: var GeomBezierCurve; index: cint; p: gp_Pnt) {.cdecl,
    importcpp: "InsertPoleAfter", header: "Geom_BezierCurve.hxx".}
proc insertPoleAfter*(this: var GeomBezierCurve; index: cint; p: gp_Pnt; weight: cfloat) {.
    cdecl, importcpp: "InsertPoleAfter", header: "Geom_BezierCurve.hxx".}
proc insertPoleBefore*(this: var GeomBezierCurve; index: cint; p: gp_Pnt) {.cdecl,
    importcpp: "InsertPoleBefore", header: "Geom_BezierCurve.hxx".}
proc insertPoleBefore*(this: var GeomBezierCurve; index: cint; p: gp_Pnt; weight: cfloat) {.
    cdecl, importcpp: "InsertPoleBefore", header: "Geom_BezierCurve.hxx".}
proc removePole*(this: var GeomBezierCurve; index: cint) {.cdecl,
    importcpp: "RemovePole", header: "Geom_BezierCurve.hxx".}
proc reverse*(this: var GeomBezierCurve) {.cdecl, importcpp: "Reverse", header: "Geom_BezierCurve.hxx".}
proc reversedParameter*(this: GeomBezierCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom_BezierCurve.hxx".}
proc segment*(this: var GeomBezierCurve; u1: cfloat; u2: cfloat) {.cdecl,
    importcpp: "Segment", header: "Geom_BezierCurve.hxx".}
proc setPole*(this: var GeomBezierCurve; index: cint; p: gp_Pnt) {.cdecl,
    importcpp: "SetPole", header: "Geom_BezierCurve.hxx".}
proc setPole*(this: var GeomBezierCurve; index: cint; p: gp_Pnt; weight: cfloat) {.cdecl,
    importcpp: "SetPole", header: "Geom_BezierCurve.hxx".}
proc setWeight*(this: var GeomBezierCurve; index: cint; weight: cfloat) {.cdecl,
    importcpp: "SetWeight", header: "Geom_BezierCurve.hxx".}
proc isClosed*(this: GeomBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom_BezierCurve.hxx".}
proc isCN*(this: GeomBezierCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom_BezierCurve.hxx".}
proc isPeriodic*(this: GeomBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom_BezierCurve.hxx".}
proc isRational*(this: GeomBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Geom_BezierCurve.hxx".}
proc continuity*(this: GeomBezierCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_BezierCurve.hxx".}
proc degree*(this: GeomBezierCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
                                        header: "Geom_BezierCurve.hxx".}
proc d0*(this: GeomBezierCurve; u: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_BezierCurve.hxx".}
proc d1*(this: GeomBezierCurve; u: cfloat; p: var gp_Pnt; v1: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_BezierCurve.hxx".}
proc d2*(this: GeomBezierCurve; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom_BezierCurve.hxx".}
proc d3*(this: GeomBezierCurve; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_BezierCurve.hxx".}
proc dn*(this: GeomBezierCurve; u: cfloat; n: cint): gp_Vec {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_BezierCurve.hxx".}
proc startPoint*(this: GeomBezierCurve): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "StartPoint", header: "Geom_BezierCurve.hxx".}
proc endPoint*(this: GeomBezierCurve): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "EndPoint", header: "Geom_BezierCurve.hxx".}
proc firstParameter*(this: GeomBezierCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_BezierCurve.hxx".}
proc lastParameter*(this: GeomBezierCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_BezierCurve.hxx".}
proc nbPoles*(this: GeomBezierCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Geom_BezierCurve.hxx".}
proc pole*(this: GeomBezierCurve; index: cint): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Pole", header: "Geom_BezierCurve.hxx".}
proc poles*(this: GeomBezierCurve; p: var TColgpArray1OfPnt) {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom_BezierCurve.hxx".}
proc poles*(this: GeomBezierCurve): TColgpArray1OfPnt {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Geom_BezierCurve.hxx".}
proc weight*(this: GeomBezierCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Weight", header: "Geom_BezierCurve.hxx".}
proc weights*(this: GeomBezierCurve; w: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Weights", header: "Geom_BezierCurve.hxx".}
proc weights*(this: GeomBezierCurve): ptr TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Weights", header: "Geom_BezierCurve.hxx".}
proc transform*(this: var GeomBezierCurve; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_BezierCurve.hxx".}
proc maxDegreeBezierCurve*(): cint {.cdecl, importcpp: "Geom_BezierCurve::MaxDegree(@)",
                       header: "Geom_BezierCurve.hxx".}
proc resolution*(this: var GeomBezierCurve; tolerance3D: cfloat;
                uTolerance: var cfloat) {.cdecl, importcpp: "Resolution",
                                       header: "Geom_BezierCurve.hxx".}
proc copy*(this: GeomBezierCurve): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_BezierCurve.hxx".}
proc dumpJson*(this: GeomBezierCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_BezierCurve.hxx".}





