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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax1"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Dir"
type
  GeomAdaptorSurfaceOfRevolution* {.importcpp: "GeomAdaptor_SurfaceOfRevolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx",
                                   bycopy.} = object of GeomAdaptorSurface
    ## /< revolved curve
    ## /< axis of revolution
    ## /< whether axis of revolution is initialized
    ## /< auxiliary trihedron according to the curve position


proc newGeomAdaptorSurfaceOfRevolution*(): GeomAdaptorSurfaceOfRevolution {.cdecl,
    constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc newGeomAdaptorSurfaceOfRevolution*(c: Handle[Adaptor3dHCurve]): GeomAdaptorSurfaceOfRevolution {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc newGeomAdaptorSurfaceOfRevolution*(c: Handle[Adaptor3dHCurve]; v: Ax1Obj): GeomAdaptorSurfaceOfRevolution {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc load*(this: var GeomAdaptorSurfaceOfRevolution; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "Load", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc load*(this: var GeomAdaptorSurfaceOfRevolution; v: Ax1Obj) {.cdecl,
    importcpp: "Load", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc axeOfRevolution*(this: GeomAdaptorSurfaceOfRevolution): Ax1Obj {.noSideEffect,
    cdecl, importcpp: "AxeOfRevolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc firstUParameter*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect,
    cdecl, importcpp: "FirstUParameter", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc lastUParameter*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect,
    cdecl, importcpp: "LastUParameter", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc firstVParameter*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect,
    cdecl, importcpp: "FirstVParameter", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc lastVParameter*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect,
    cdecl, importcpp: "LastVParameter", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uContinuity*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsShape {.
    noSideEffect, cdecl, importcpp: "UContinuity", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vContinuity*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsShape {.
    noSideEffect, cdecl, importcpp: "VContinuity", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc nbUIntervals*(this: GeomAdaptorSurfaceOfRevolution; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbUIntervals", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc nbVIntervals*(this: GeomAdaptorSurfaceOfRevolution; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbVIntervals", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uIntervals*(this: GeomAdaptorSurfaceOfRevolution; t: var TColStdArray1OfReal;
                s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "UIntervals",
                                 header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vIntervals*(this: GeomAdaptorSurfaceOfRevolution; t: var TColStdArray1OfReal;
                s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "VIntervals",
                                 header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uTrim*(this: GeomAdaptorSurfaceOfRevolution; first: cfloat; last: cfloat;
           tol: cfloat): Handle[Adaptor3dHSurface] {.noSideEffect, cdecl,
    importcpp: "UTrim", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vTrim*(this: GeomAdaptorSurfaceOfRevolution; first: cfloat; last: cfloat;
           tol: cfloat): Handle[Adaptor3dHSurface] {.noSideEffect, cdecl,
    importcpp: "VTrim", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isUClosed*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isVClosed*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isUPeriodic*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uPeriod*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isVPeriodic*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vPeriod*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uResolution*(this: GeomAdaptorSurfaceOfRevolution; r3d: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UResolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vResolution*(this: GeomAdaptorSurfaceOfRevolution; r3d: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VResolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc getType*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsSurfaceType {.
    noSideEffect, cdecl, importcpp: "GetType", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc plane*(this: GeomAdaptorSurfaceOfRevolution): PlnObj {.noSideEffect, cdecl,
    importcpp: "Plane", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc cylinder*(this: GeomAdaptorSurfaceOfRevolution): CylinderObj {.noSideEffect, cdecl,
    importcpp: "Cylinder", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc cone*(this: GeomAdaptorSurfaceOfRevolution): ConeObj {.noSideEffect, cdecl,
    importcpp: "Cone", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc sphere*(this: GeomAdaptorSurfaceOfRevolution): SphereObj {.noSideEffect, cdecl,
    importcpp: "Sphere", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc torus*(this: GeomAdaptorSurfaceOfRevolution): TorusObj {.noSideEffect, cdecl,
    importcpp: "Torus", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vDegree*(this: GeomAdaptorSurfaceOfRevolution): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc nbVPoles*(this: GeomAdaptorSurfaceOfRevolution): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc nbVKnots*(this: GeomAdaptorSurfaceOfRevolution): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isURational*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isVRational*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc bezier*(this: GeomAdaptorSurfaceOfRevolution): Handle[GeomBezierSurface] {.
    noSideEffect, cdecl, importcpp: "Bezier", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc bSpline*(this: GeomAdaptorSurfaceOfRevolution): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSpline", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc axis*(this: GeomAdaptorSurfaceOfRevolution): Ax3Obj {.noSideEffect, cdecl,
    importcpp: "Axis", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc basisCurve*(this: GeomAdaptorSurfaceOfRevolution): Handle[Adaptor3dHCurve] {.
    noSideEffect, cdecl, importcpp: "BasisCurve", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}