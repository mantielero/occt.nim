import ../gp/gp_types
import geomadaptor_types
import ../adaptor3d/adaptor3d_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import ../geom/geom_types
import ../geomabs/geomabs_types





##  Created on: 1993-05-14
##  Created by: Bruno DUMORTIER
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



proc newGeomAdaptorSurface*(): GeomAdaptorSurface {.cdecl, constructor,
    importcpp: "GeomAdaptor_Surface(@)", header: "GeomAdaptor_Surface.hxx".}
proc newGeomAdaptorSurface*(s: Handle[GeomSurface]): GeomAdaptorSurface {.cdecl,
    constructor, importcpp: "GeomAdaptor_Surface(@)", header: "GeomAdaptor_Surface.hxx".}
proc newGeomAdaptorSurface*(s: Handle[GeomSurface]; uFirst: cfloat; uLast: cfloat;
                           vFirst: cfloat; vLast: cfloat; tolU: cfloat = 0.0;
                           tolV: cfloat = 0.0): GeomAdaptorSurface {.cdecl,
    constructor, importcpp: "GeomAdaptor_Surface(@)", header: "GeomAdaptor_Surface.hxx".}
proc load*(this: var GeomAdaptorSurface; s: Handle[GeomSurface]) {.cdecl,
    importcpp: "Load", header: "GeomAdaptor_Surface.hxx".}
proc load*(this: var GeomAdaptorSurface; s: Handle[GeomSurface]; uFirst: cfloat;
          uLast: cfloat; vFirst: cfloat; vLast: cfloat; tolU: cfloat = 0.0;
          tolV: cfloat = 0.0) {.cdecl, importcpp: "Load", header: "GeomAdaptor_Surface.hxx".}
proc surface*(this: GeomAdaptorSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", header: "GeomAdaptor_Surface.hxx".}
proc firstUParameter*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstUParameter", header: "GeomAdaptor_Surface.hxx".}
proc lastUParameter*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastUParameter", header: "GeomAdaptor_Surface.hxx".}
proc firstVParameter*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstVParameter", header: "GeomAdaptor_Surface.hxx".}
proc lastVParameter*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastVParameter", header: "GeomAdaptor_Surface.hxx".}
proc uContinuity*(this: GeomAdaptorSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "UContinuity", header: "GeomAdaptor_Surface.hxx".}
proc vContinuity*(this: GeomAdaptorSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "VContinuity", header: "GeomAdaptor_Surface.hxx".}
proc nbUIntervals*(this: GeomAdaptorSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbUIntervals", header: "GeomAdaptor_Surface.hxx".}
proc nbVIntervals*(this: GeomAdaptorSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbVIntervals", header: "GeomAdaptor_Surface.hxx".}
proc uIntervals*(this: GeomAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "UIntervals", header: "GeomAdaptor_Surface.hxx".}
proc vIntervals*(this: GeomAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "VIntervals", header: "GeomAdaptor_Surface.hxx".}
proc uTrim*(this: GeomAdaptorSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "UTrim", header: "GeomAdaptor_Surface.hxx".}
proc vTrim*(this: GeomAdaptorSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "VTrim", header: "GeomAdaptor_Surface.hxx".}
proc isUClosed*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "GeomAdaptor_Surface.hxx".}
proc isVClosed*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "GeomAdaptor_Surface.hxx".}
proc isUPeriodic*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "GeomAdaptor_Surface.hxx".}
proc uPeriod*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", header: "GeomAdaptor_Surface.hxx".}
proc isVPeriodic*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "GeomAdaptor_Surface.hxx".}
proc vPeriod*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", header: "GeomAdaptor_Surface.hxx".}
proc value*(this: GeomAdaptorSurface; u: cfloat; v: cfloat): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Value", header: "GeomAdaptor_Surface.hxx".}
proc d0*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "GeomAdaptor_Surface.hxx".}
proc d1*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D1", header: "GeomAdaptor_Surface.hxx".}
proc d2*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D2", header: "GeomAdaptor_Surface.hxx".}
proc d3*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec; d3u: var gp_Vec; d3v: var gp_Vec;
        d3uuv: var gp_Vec; d3uvv: var gp_Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "GeomAdaptor_Surface.hxx".}
proc dn*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): gp_Vec {.
    noSideEffect, cdecl, importcpp: "DN", header: "GeomAdaptor_Surface.hxx".}
proc uResolution*(this: GeomAdaptorSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UResolution", header: "GeomAdaptor_Surface.hxx".}
proc vResolution*(this: GeomAdaptorSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VResolution", header: "GeomAdaptor_Surface.hxx".}
proc getType*(this: GeomAdaptorSurface): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "GeomAdaptor_Surface.hxx".}
proc plane*(this: GeomAdaptorSurface): gp_Pln {.noSideEffect, cdecl, importcpp: "Plane",
    header: "GeomAdaptor_Surface.hxx".}
proc cylinder*(this: GeomAdaptorSurface): gp_Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", header: "GeomAdaptor_Surface.hxx".}
proc cone*(this: GeomAdaptorSurface): gp_Cone {.noSideEffect, cdecl, importcpp: "Cone",
    header: "GeomAdaptor_Surface.hxx".}
proc sphere*(this: GeomAdaptorSurface): gp_Sphere {.noSideEffect, cdecl,
    importcpp: "Sphere", header: "GeomAdaptor_Surface.hxx".}
proc torus*(this: GeomAdaptorSurface): gp_Torus {.noSideEffect, cdecl,
    importcpp: "Torus", header: "GeomAdaptor_Surface.hxx".}
proc uDegree*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "GeomAdaptor_Surface.hxx".}
proc nbUPoles*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", header: "GeomAdaptor_Surface.hxx".}
proc vDegree*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "GeomAdaptor_Surface.hxx".}
proc nbVPoles*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", header: "GeomAdaptor_Surface.hxx".}
proc nbUKnots*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", header: "GeomAdaptor_Surface.hxx".}
proc nbVKnots*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", header: "GeomAdaptor_Surface.hxx".}
proc isURational*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", header: "GeomAdaptor_Surface.hxx".}
proc isVRational*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", header: "GeomAdaptor_Surface.hxx".}
proc bezier*(this: GeomAdaptorSurface): Handle[GeomBezierSurface] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "GeomAdaptor_Surface.hxx".}
proc bSpline*(this: GeomAdaptorSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "GeomAdaptor_Surface.hxx".}
proc axeOfRevolution*(this: GeomAdaptorSurface): gp_Ax1 {.noSideEffect, cdecl,
    importcpp: "AxeOfRevolution", header: "GeomAdaptor_Surface.hxx".}
proc direction*(this: GeomAdaptorSurface): gp_Dir {.noSideEffect, cdecl,
    importcpp: "Direction", header: "GeomAdaptor_Surface.hxx".}
proc basisCurve*(this: GeomAdaptorSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "BasisCurve", header: "GeomAdaptor_Surface.hxx".}
proc basisSurface*(this: GeomAdaptorSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "BasisSurface", header: "GeomAdaptor_Surface.hxx".}
proc offsetValue*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "OffsetValue", header: "GeomAdaptor_Surface.hxx".}


