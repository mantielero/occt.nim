import ../gp/gp_types
import geomadaptor_types
import ../adaptor3d/adaptor3d_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import ../geom/geom_types
import ../geomabs/geomabs_types





##  Created on: 1993-04-21
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



proc newGeomAdaptorSurfaceOfLinearExtrusion*(): GeomAdaptorSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc newGeomAdaptorSurfaceOfLinearExtrusion*(c: Handle[Adaptor3dHCurve]): GeomAdaptorSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc newGeomAdaptorSurfaceOfLinearExtrusion*(c: Handle[Adaptor3dHCurve]; v: gp_Dir): GeomAdaptorSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc load*(this: var GeomAdaptorSurfaceOfLinearExtrusion; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "Load", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc load*(this: var GeomAdaptorSurfaceOfLinearExtrusion; v: gp_Dir) {.cdecl,
    importcpp: "Load", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc firstUParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.
    noSideEffect, cdecl, importcpp: "FirstUParameter", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc lastUParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.
    noSideEffect, cdecl, importcpp: "LastUParameter", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc firstVParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.
    noSideEffect, cdecl, importcpp: "FirstVParameter", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc lastVParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.
    noSideEffect, cdecl, importcpp: "LastVParameter", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uContinuity*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsShape {.
    noSideEffect, cdecl, importcpp: "UContinuity", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vContinuity*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsShape {.
    noSideEffect, cdecl, importcpp: "VContinuity", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc nbUIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbUIntervals", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc nbVIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbVIntervals", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion;
                t: var TColStdArray1OfReal; s: GeomAbsShape) {.noSideEffect, cdecl,
    importcpp: "UIntervals", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion;
                t: var TColStdArray1OfReal; s: GeomAbsShape) {.noSideEffect, cdecl,
    importcpp: "VIntervals", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uTrim*(this: GeomAdaptorSurfaceOfLinearExtrusion; first: cfloat; last: cfloat;
           tol: cfloat): Handle[Adaptor3dHSurface] {.noSideEffect, cdecl,
    importcpp: "UTrim", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vTrim*(this: GeomAdaptorSurfaceOfLinearExtrusion; first: cfloat; last: cfloat;
           tol: cfloat): Handle[Adaptor3dHSurface] {.noSideEffect, cdecl,
    importcpp: "VTrim", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isUClosed*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsUClosed", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isVClosed*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsVClosed", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isUPeriodic*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsUPeriodic", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uPeriod*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.noSideEffect,
    cdecl, importcpp: "UPeriod", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isVPeriodic*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsVPeriodic", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vPeriod*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.noSideEffect,
    cdecl, importcpp: "VPeriod", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uResolution*(this: GeomAdaptorSurfaceOfLinearExtrusion; r3d: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UResolution", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vResolution*(this: GeomAdaptorSurfaceOfLinearExtrusion; r3d: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VResolution", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc getType*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsSurfaceType {.
    noSideEffect, cdecl, importcpp: "GetType", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc plane*(this: GeomAdaptorSurfaceOfLinearExtrusion): gp_Pln {.noSideEffect, cdecl,
    importcpp: "Plane", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc cylinder*(this: GeomAdaptorSurfaceOfLinearExtrusion): gp_Cylinder {.noSideEffect,
    cdecl, importcpp: "Cylinder", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc cone*(this: GeomAdaptorSurfaceOfLinearExtrusion): gp_Cone {.noSideEffect, cdecl,
    importcpp: "Cone", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc sphere*(this: GeomAdaptorSurfaceOfLinearExtrusion): gp_Sphere {.noSideEffect,
    cdecl, importcpp: "Sphere", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc torus*(this: GeomAdaptorSurfaceOfLinearExtrusion): gp_Torus {.noSideEffect, cdecl,
    importcpp: "Torus", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uDegree*(this: GeomAdaptorSurfaceOfLinearExtrusion): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc nbUPoles*(this: GeomAdaptorSurfaceOfLinearExtrusion): cint {.noSideEffect,
    cdecl, importcpp: "NbUPoles", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isURational*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsURational", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isVRational*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsVRational", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc bezier*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[GeomBezierSurface] {.
    noSideEffect, cdecl, importcpp: "Bezier", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc bSpline*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSpline", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc axeOfRevolution*(this: GeomAdaptorSurfaceOfLinearExtrusion): gp_Ax1 {.
    noSideEffect, cdecl, importcpp: "AxeOfRevolution", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc direction*(this: GeomAdaptorSurfaceOfLinearExtrusion): gp_Dir {.noSideEffect,
    cdecl, importcpp: "Direction", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc basisCurve*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[Adaptor3dHCurve] {.
    noSideEffect, cdecl, importcpp: "BasisCurve", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}


