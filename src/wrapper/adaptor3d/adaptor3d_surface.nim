import ../gp/gp_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import adaptor3d_types
import ../geom/geom_types
import ../geomabs/geomabs_types





##  Created on: 1993-03-31
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



proc firstUParameter*(this: Adaptor3dSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstUParameter", header: "Adaptor3d_Surface.hxx".}
proc lastUParameter*(this: Adaptor3dSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastUParameter", header: "Adaptor3d_Surface.hxx".}
proc firstVParameter*(this: Adaptor3dSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstVParameter", header: "Adaptor3d_Surface.hxx".}
proc lastVParameter*(this: Adaptor3dSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastVParameter", header: "Adaptor3d_Surface.hxx".}
proc uContinuity*(this: Adaptor3dSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "UContinuity", header: "Adaptor3d_Surface.hxx".}
proc vContinuity*(this: Adaptor3dSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "VContinuity", header: "Adaptor3d_Surface.hxx".}
proc nbUIntervals*(this: Adaptor3dSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbUIntervals", header: "Adaptor3d_Surface.hxx".}
proc nbVIntervals*(this: Adaptor3dSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbVIntervals", header: "Adaptor3d_Surface.hxx".}
proc uIntervals*(this: Adaptor3dSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "UIntervals", header: "Adaptor3d_Surface.hxx".}
proc vIntervals*(this: Adaptor3dSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "VIntervals", header: "Adaptor3d_Surface.hxx".}
proc uTrim*(this: Adaptor3dSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "UTrim", header: "Adaptor3d_Surface.hxx".}
proc vTrim*(this: Adaptor3dSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "VTrim", header: "Adaptor3d_Surface.hxx".}
proc isUClosed*(this: Adaptor3dSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Adaptor3d_Surface.hxx".}
proc isVClosed*(this: Adaptor3dSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Adaptor3d_Surface.hxx".}
proc isUPeriodic*(this: Adaptor3dSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Adaptor3d_Surface.hxx".}
proc uPeriod*(this: Adaptor3dSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", header: "Adaptor3d_Surface.hxx".}
proc isVPeriodic*(this: Adaptor3dSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Adaptor3d_Surface.hxx".}
proc vPeriod*(this: Adaptor3dSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", header: "Adaptor3d_Surface.hxx".}
proc value*(this: Adaptor3dSurface; u: cfloat; v: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "Adaptor3d_Surface.hxx".}
proc d0*(this: Adaptor3dSurface; u: cfloat; v: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Adaptor3d_Surface.hxx".}
proc d1*(this: Adaptor3dSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj; d1v: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D1", header: "Adaptor3d_Surface.hxx".}
proc d2*(this: Adaptor3dSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Adaptor3d_Surface.hxx".}
proc d3*(this: Adaptor3dSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj; d3v: var VecObj;
        d3uuv: var VecObj; d3uvv: var VecObj) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Adaptor3d_Surface.hxx".}
proc dn*(this: Adaptor3dSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "Adaptor3d_Surface.hxx".}
proc uResolution*(this: Adaptor3dSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UResolution", header: "Adaptor3d_Surface.hxx".}
proc vResolution*(this: Adaptor3dSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VResolution", header: "Adaptor3d_Surface.hxx".}
proc getType*(this: Adaptor3dSurface): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "Adaptor3d_Surface.hxx".}
proc plane*(this: Adaptor3dSurface): PlnObj {.noSideEffect, cdecl, importcpp: "Plane",
                                       header: "Adaptor3d_Surface.hxx".}
proc cylinder*(this: Adaptor3dSurface): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Cylinder", header: "Adaptor3d_Surface.hxx".}
proc cone*(this: Adaptor3dSurface): ConeObj {.noSideEffect, cdecl, importcpp: "Cone",
                                       header: "Adaptor3d_Surface.hxx".}
proc sphere*(this: Adaptor3dSurface): SphereObj {.noSideEffect, cdecl,
    importcpp: "Sphere", header: "Adaptor3d_Surface.hxx".}
proc torus*(this: Adaptor3dSurface): TorusObj {.noSideEffect, cdecl, importcpp: "Torus",
    header: "Adaptor3d_Surface.hxx".}
proc uDegree*(this: Adaptor3dSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "Adaptor3d_Surface.hxx".}
proc nbUPoles*(this: Adaptor3dSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", header: "Adaptor3d_Surface.hxx".}
proc vDegree*(this: Adaptor3dSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "Adaptor3d_Surface.hxx".}
proc nbVPoles*(this: Adaptor3dSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", header: "Adaptor3d_Surface.hxx".}
proc nbUKnots*(this: Adaptor3dSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", header: "Adaptor3d_Surface.hxx".}
proc nbVKnots*(this: Adaptor3dSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", header: "Adaptor3d_Surface.hxx".}
proc isURational*(this: Adaptor3dSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", header: "Adaptor3d_Surface.hxx".}
proc isVRational*(this: Adaptor3dSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", header: "Adaptor3d_Surface.hxx".}
proc bezier*(this: Adaptor3dSurface): Handle[GeomBezierSurface] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "Adaptor3d_Surface.hxx".}
proc bSpline*(this: Adaptor3dSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "Adaptor3d_Surface.hxx".}
proc axeOfRevolution*(this: Adaptor3dSurface): Ax1Obj {.noSideEffect, cdecl,
    importcpp: "AxeOfRevolution", header: "Adaptor3d_Surface.hxx".}
proc direction*(this: Adaptor3dSurface): DirObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Adaptor3d_Surface.hxx".}
proc basisCurve*(this: Adaptor3dSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "BasisCurve", header: "Adaptor3d_Surface.hxx".}
proc basisSurface*(this: Adaptor3dSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "BasisSurface", header: "Adaptor3d_Surface.hxx".}
proc offsetValue*(this: Adaptor3dSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "OffsetValue", header: "Adaptor3d_Surface.hxx".}
proc destroyAdaptor3dSurface*(this: var Adaptor3dSurface) {.cdecl,
    importcpp: "#.~Adaptor3d_Surface()", header: "Adaptor3d_Surface.hxx".}


