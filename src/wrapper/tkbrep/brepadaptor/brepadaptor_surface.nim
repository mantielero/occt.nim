import ../../tkmath/gp/gp_types
import ../topods/topods_types
import brepadaptor_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import ../../tkg3d/geomadaptor/geomadaptor_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkg3d/geom/geom_types
import ../../tkmath/geomabs/geomabs_types





##  Created on: 1993-02-22
##  Created by: Remi LEQUETTE
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



proc newBRepAdaptorSurface*(): BRepAdaptorSurface {.cdecl, constructor,
    importcpp: "BRepAdaptor_Surface(@)", header: "BRepAdaptor_Surface.hxx".}
proc newBRepAdaptorSurface*(f: TopoDS_Face; r: bool = true): BRepAdaptorSurface {.cdecl,
    constructor, importcpp: "BRepAdaptor_Surface(@)", header: "BRepAdaptor_Surface.hxx".}
proc initialize*(this: var BRepAdaptorSurface; f: TopoDS_Face;
                restriction: bool = true) {.cdecl, importcpp: "Initialize",
                                        header: "BRepAdaptor_Surface.hxx".}
proc surface*(this: BRepAdaptorSurface): GeomAdaptorSurface {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRepAdaptor_Surface.hxx".}
proc changeSurface*(this: var BRepAdaptorSurface): var GeomAdaptorSurface {.cdecl,
    importcpp: "ChangeSurface", header: "BRepAdaptor_Surface.hxx".}
proc trsf*(this: BRepAdaptorSurface): TrsfObj {.noSideEffect, cdecl, importcpp: "Trsf",
    header: "BRepAdaptor_Surface.hxx".}
proc face*(this: BRepAdaptorSurface): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", header: "BRepAdaptor_Surface.hxx".}
proc tolerance*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "BRepAdaptor_Surface.hxx".}
proc firstUParameter*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstUParameter", header: "BRepAdaptor_Surface.hxx".}
proc lastUParameter*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastUParameter", header: "BRepAdaptor_Surface.hxx".}
proc firstVParameter*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstVParameter", header: "BRepAdaptor_Surface.hxx".}
proc lastVParameter*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastVParameter", header: "BRepAdaptor_Surface.hxx".}
proc uContinuity*(this: BRepAdaptorSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "UContinuity", header: "BRepAdaptor_Surface.hxx".}
proc vContinuity*(this: BRepAdaptorSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "VContinuity", header: "BRepAdaptor_Surface.hxx".}
proc nbUIntervals*(this: BRepAdaptorSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbUIntervals", header: "BRepAdaptor_Surface.hxx".}
proc nbVIntervals*(this: BRepAdaptorSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbVIntervals", header: "BRepAdaptor_Surface.hxx".}
proc uIntervals*(this: BRepAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "UIntervals", header: "BRepAdaptor_Surface.hxx".}
proc vIntervals*(this: BRepAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "VIntervals", header: "BRepAdaptor_Surface.hxx".}
proc uTrim*(this: BRepAdaptorSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "UTrim", header: "BRepAdaptor_Surface.hxx".}
proc vTrim*(this: BRepAdaptorSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "VTrim", header: "BRepAdaptor_Surface.hxx".}
proc isUClosed*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "BRepAdaptor_Surface.hxx".}
proc isVClosed*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "BRepAdaptor_Surface.hxx".}
proc isUPeriodic*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "BRepAdaptor_Surface.hxx".}
proc uPeriod*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", header: "BRepAdaptor_Surface.hxx".}
proc isVPeriodic*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "BRepAdaptor_Surface.hxx".}
proc vPeriod*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", header: "BRepAdaptor_Surface.hxx".}
proc value*(this: BRepAdaptorSurface; u: cfloat; v: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "BRepAdaptor_Surface.hxx".}
proc d0*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "BRepAdaptor_Surface.hxx".}
proc d1*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "BRepAdaptor_Surface.hxx".}
proc d2*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D2", header: "BRepAdaptor_Surface.hxx".}
proc d3*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; p: var PntObj; d1u: var VecObj;
        d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj; d3v: var VecObj;
        d3uuv: var VecObj; d3uvv: var VecObj) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "BRepAdaptor_Surface.hxx".}
proc dn*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "BRepAdaptor_Surface.hxx".}
proc uResolution*(this: BRepAdaptorSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UResolution", header: "BRepAdaptor_Surface.hxx".}
proc vResolution*(this: BRepAdaptorSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VResolution", header: "BRepAdaptor_Surface.hxx".}
proc getType*(this: BRepAdaptorSurface): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "BRepAdaptor_Surface.hxx".}
proc plane*(this: BRepAdaptorSurface): PlnObj {.noSideEffect, cdecl, importcpp: "Plane",
    header: "BRepAdaptor_Surface.hxx".}
proc cylinder*(this: BRepAdaptorSurface): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Cylinder", header: "BRepAdaptor_Surface.hxx".}
proc cone*(this: BRepAdaptorSurface): ConeObj {.noSideEffect, cdecl, importcpp: "Cone",
    header: "BRepAdaptor_Surface.hxx".}
proc sphere*(this: BRepAdaptorSurface): SphereObj {.noSideEffect, cdecl,
    importcpp: "Sphere", header: "BRepAdaptor_Surface.hxx".}
proc torus*(this: BRepAdaptorSurface): TorusObj {.noSideEffect, cdecl,
    importcpp: "Torus", header: "BRepAdaptor_Surface.hxx".}
proc uDegree*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "BRepAdaptor_Surface.hxx".}
proc nbUPoles*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", header: "BRepAdaptor_Surface.hxx".}
proc vDegree*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "BRepAdaptor_Surface.hxx".}
proc nbVPoles*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", header: "BRepAdaptor_Surface.hxx".}
proc nbUKnots*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", header: "BRepAdaptor_Surface.hxx".}
proc nbVKnots*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", header: "BRepAdaptor_Surface.hxx".}
proc isURational*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", header: "BRepAdaptor_Surface.hxx".}
proc isVRational*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", header: "BRepAdaptor_Surface.hxx".}
proc bezier*(this: BRepAdaptorSurface): Handle[GeomBezierSurface] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "BRepAdaptor_Surface.hxx".}
proc bSpline*(this: BRepAdaptorSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "BRepAdaptor_Surface.hxx".}
proc axeOfRevolution*(this: BRepAdaptorSurface): Ax1Obj {.noSideEffect, cdecl,
    importcpp: "AxeOfRevolution", header: "BRepAdaptor_Surface.hxx".}
proc direction*(this: BRepAdaptorSurface): DirObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "BRepAdaptor_Surface.hxx".}
proc basisCurve*(this: BRepAdaptorSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "BasisCurve", header: "BRepAdaptor_Surface.hxx".}
proc basisSurface*(this: BRepAdaptorSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "BasisSurface", header: "BRepAdaptor_Surface.hxx".}
proc offsetValue*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "OffsetValue", header: "BRepAdaptor_Surface.hxx".}


