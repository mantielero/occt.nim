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
    constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)", dynlib: tkg3d.}
proc newGeomAdaptorSurfaceOfRevolution*(c: Handle[Adaptor3dHCurve]): GeomAdaptorSurfaceOfRevolution {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    dynlib: tkg3d.}
proc newGeomAdaptorSurfaceOfRevolution*(c: Handle[Adaptor3dHCurve]; v: Ax1): GeomAdaptorSurfaceOfRevolution {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    dynlib: tkg3d.}
proc load*(this: var GeomAdaptorSurfaceOfRevolution; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "Load", dynlib: tkg3d.}
proc load*(this: var GeomAdaptorSurfaceOfRevolution; v: Ax1) {.cdecl,
    importcpp: "Load", dynlib: tkg3d.}
proc axeOfRevolution*(this: GeomAdaptorSurfaceOfRevolution): Ax1 {.noSideEffect,
    cdecl, importcpp: "AxeOfRevolution", dynlib: tkg3d.}
proc firstUParameter*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect,
    cdecl, importcpp: "FirstUParameter", dynlib: tkg3d.}
proc lastUParameter*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect,
    cdecl, importcpp: "LastUParameter", dynlib: tkg3d.}
proc firstVParameter*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect,
    cdecl, importcpp: "FirstVParameter", dynlib: tkg3d.}
proc lastVParameter*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect,
    cdecl, importcpp: "LastVParameter", dynlib: tkg3d.}
proc uContinuity*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsShape {.
    noSideEffect, cdecl, importcpp: "UContinuity", dynlib: tkg3d.}
proc vContinuity*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsShape {.
    noSideEffect, cdecl, importcpp: "VContinuity", dynlib: tkg3d.}
proc nbUIntervals*(this: GeomAdaptorSurfaceOfRevolution; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbUIntervals", dynlib: tkg3d.}
proc nbVIntervals*(this: GeomAdaptorSurfaceOfRevolution; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbVIntervals", dynlib: tkg3d.}
proc uIntervals*(this: GeomAdaptorSurfaceOfRevolution; t: var TColStdArray1OfReal;
                s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "UIntervals",
                                 dynlib: tkg3d.}
proc vIntervals*(this: GeomAdaptorSurfaceOfRevolution; t: var TColStdArray1OfReal;
                s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "VIntervals",
                                 dynlib: tkg3d.}
proc uTrim*(this: GeomAdaptorSurfaceOfRevolution; first: cfloat; last: cfloat;
           tol: cfloat): Handle[Adaptor3dHSurface] {.noSideEffect, cdecl,
    importcpp: "UTrim", dynlib: tkg3d.}
proc vTrim*(this: GeomAdaptorSurfaceOfRevolution; first: cfloat; last: cfloat;
           tol: cfloat): Handle[Adaptor3dHSurface] {.noSideEffect, cdecl,
    importcpp: "VTrim", dynlib: tkg3d.}
proc isUClosed*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkg3d.}
proc isVClosed*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkg3d.}
proc isUPeriodic*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkg3d.}
proc uPeriod*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", dynlib: tkg3d.}
proc isVPeriodic*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkg3d.}
proc vPeriod*(this: GeomAdaptorSurfaceOfRevolution): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", dynlib: tkg3d.}
proc uResolution*(this: GeomAdaptorSurfaceOfRevolution; r3d: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UResolution", dynlib: tkg3d.}
proc vResolution*(this: GeomAdaptorSurfaceOfRevolution; r3d: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VResolution", dynlib: tkg3d.}
proc getType*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsSurfaceType {.
    noSideEffect, cdecl, importcpp: "GetType", dynlib: tkg3d.}
proc plane*(this: GeomAdaptorSurfaceOfRevolution): Pln {.noSideEffect, cdecl,
    importcpp: "Plane", dynlib: tkg3d.}
proc cylinder*(this: GeomAdaptorSurfaceOfRevolution): Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", dynlib: tkg3d.}
proc cone*(this: GeomAdaptorSurfaceOfRevolution): Cone {.noSideEffect, cdecl,
    importcpp: "Cone", dynlib: tkg3d.}
proc sphere*(this: GeomAdaptorSurfaceOfRevolution): Sphere {.noSideEffect, cdecl,
    importcpp: "Sphere", dynlib: tkg3d.}
proc torus*(this: GeomAdaptorSurfaceOfRevolution): Torus {.noSideEffect, cdecl,
    importcpp: "Torus", dynlib: tkg3d.}
proc vDegree*(this: GeomAdaptorSurfaceOfRevolution): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkg3d.}
proc nbVPoles*(this: GeomAdaptorSurfaceOfRevolution): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", dynlib: tkg3d.}
proc nbVKnots*(this: GeomAdaptorSurfaceOfRevolution): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", dynlib: tkg3d.}
proc isURational*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", dynlib: tkg3d.}
proc isVRational*(this: GeomAdaptorSurfaceOfRevolution): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", dynlib: tkg3d.}
proc bezier*(this: GeomAdaptorSurfaceOfRevolution): Handle[GeomBezierSurface] {.
    noSideEffect, cdecl, importcpp: "Bezier", dynlib: tkg3d.}
proc bSpline*(this: GeomAdaptorSurfaceOfRevolution): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSpline", dynlib: tkg3d.}
proc axis*(this: GeomAdaptorSurfaceOfRevolution): Ax3 {.noSideEffect, cdecl,
    importcpp: "Axis", dynlib: tkg3d.}
proc basisCurve*(this: GeomAdaptorSurfaceOfRevolution): Handle[Adaptor3dHCurve] {.
    noSideEffect, cdecl, importcpp: "BasisCurve", dynlib: tkg3d.}