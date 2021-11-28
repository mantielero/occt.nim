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
discard "forward decl of gp_Dir"
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
discard "forward decl of gp_Ax1"
type
  GeomAdaptorSurfaceOfLinearExtrusion* {.importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx",
                                        bycopy.} = object of GeomAdaptorSurface
    ## /< extruded curve
    ## /< direction of extrusion
    ## /< whether the direction of extrusion is initialized


proc newGeomAdaptorSurfaceOfLinearExtrusion*(): GeomAdaptorSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    dynlib: tkg3d.}
proc newGeomAdaptorSurfaceOfLinearExtrusion*(c: Handle[Adaptor3dHCurve]): GeomAdaptorSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    dynlib: tkg3d.}
proc newGeomAdaptorSurfaceOfLinearExtrusion*(c: Handle[Adaptor3dHCurve]; v: Dir): GeomAdaptorSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    dynlib: tkg3d.}
proc load*(this: var GeomAdaptorSurfaceOfLinearExtrusion; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "Load", dynlib: tkg3d.}
proc load*(this: var GeomAdaptorSurfaceOfLinearExtrusion; v: Dir) {.cdecl,
    importcpp: "Load", dynlib: tkg3d.}
proc firstUParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.
    noSideEffect, cdecl, importcpp: "FirstUParameter", dynlib: tkg3d.}
proc lastUParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.
    noSideEffect, cdecl, importcpp: "LastUParameter", dynlib: tkg3d.}
proc firstVParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.
    noSideEffect, cdecl, importcpp: "FirstVParameter", dynlib: tkg3d.}
proc lastVParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.
    noSideEffect, cdecl, importcpp: "LastVParameter", dynlib: tkg3d.}
proc uContinuity*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsShape {.
    noSideEffect, cdecl, importcpp: "UContinuity", dynlib: tkg3d.}
proc vContinuity*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsShape {.
    noSideEffect, cdecl, importcpp: "VContinuity", dynlib: tkg3d.}
proc nbUIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbUIntervals", dynlib: tkg3d.}
proc nbVIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbVIntervals", dynlib: tkg3d.}
proc uIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion;
                t: var TColStdArray1OfReal; s: GeomAbsShape) {.noSideEffect, cdecl,
    importcpp: "UIntervals", dynlib: tkg3d.}
proc vIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion;
                t: var TColStdArray1OfReal; s: GeomAbsShape) {.noSideEffect, cdecl,
    importcpp: "VIntervals", dynlib: tkg3d.}
proc uTrim*(this: GeomAdaptorSurfaceOfLinearExtrusion; first: cfloat; last: cfloat;
           tol: cfloat): Handle[Adaptor3dHSurface] {.noSideEffect, cdecl,
    importcpp: "UTrim", dynlib: tkg3d.}
proc vTrim*(this: GeomAdaptorSurfaceOfLinearExtrusion; first: cfloat; last: cfloat;
           tol: cfloat): Handle[Adaptor3dHSurface] {.noSideEffect, cdecl,
    importcpp: "VTrim", dynlib: tkg3d.}
proc isUClosed*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsUClosed", dynlib: tkg3d.}
proc isVClosed*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsVClosed", dynlib: tkg3d.}
proc isUPeriodic*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsUPeriodic", dynlib: tkg3d.}
proc uPeriod*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.noSideEffect,
    cdecl, importcpp: "UPeriod", dynlib: tkg3d.}
proc isVPeriodic*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsVPeriodic", dynlib: tkg3d.}
proc vPeriod*(this: GeomAdaptorSurfaceOfLinearExtrusion): cfloat {.noSideEffect,
    cdecl, importcpp: "VPeriod", dynlib: tkg3d.}
proc uResolution*(this: GeomAdaptorSurfaceOfLinearExtrusion; r3d: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UResolution", dynlib: tkg3d.}
proc vResolution*(this: GeomAdaptorSurfaceOfLinearExtrusion; r3d: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VResolution", dynlib: tkg3d.}
proc getType*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsSurfaceType {.
    noSideEffect, cdecl, importcpp: "GetType", dynlib: tkg3d.}
proc plane*(this: GeomAdaptorSurfaceOfLinearExtrusion): Pln {.noSideEffect, cdecl,
    importcpp: "Plane", dynlib: tkg3d.}
proc cylinder*(this: GeomAdaptorSurfaceOfLinearExtrusion): Cylinder {.noSideEffect,
    cdecl, importcpp: "Cylinder", dynlib: tkg3d.}
proc cone*(this: GeomAdaptorSurfaceOfLinearExtrusion): Cone {.noSideEffect, cdecl,
    importcpp: "Cone", dynlib: tkg3d.}
proc sphere*(this: GeomAdaptorSurfaceOfLinearExtrusion): Sphere {.noSideEffect,
    cdecl, importcpp: "Sphere", dynlib: tkg3d.}
proc torus*(this: GeomAdaptorSurfaceOfLinearExtrusion): Torus {.noSideEffect, cdecl,
    importcpp: "Torus", dynlib: tkg3d.}
proc uDegree*(this: GeomAdaptorSurfaceOfLinearExtrusion): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkg3d.}
proc nbUPoles*(this: GeomAdaptorSurfaceOfLinearExtrusion): cint {.noSideEffect,
    cdecl, importcpp: "NbUPoles", dynlib: tkg3d.}
proc isURational*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsURational", dynlib: tkg3d.}
proc isVRational*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    cdecl, importcpp: "IsVRational", dynlib: tkg3d.}
proc bezier*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[GeomBezierSurface] {.
    noSideEffect, cdecl, importcpp: "Bezier", dynlib: tkg3d.}
proc bSpline*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[GeomBSplineSurface] {.
    noSideEffect, cdecl, importcpp: "BSpline", dynlib: tkg3d.}
proc axeOfRevolution*(this: GeomAdaptorSurfaceOfLinearExtrusion): Ax1 {.
    noSideEffect, cdecl, importcpp: "AxeOfRevolution", dynlib: tkg3d.}
proc direction*(this: GeomAdaptorSurfaceOfLinearExtrusion): Dir {.noSideEffect,
    cdecl, importcpp: "Direction", dynlib: tkg3d.}
proc basisCurve*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[Adaptor3dHCurve] {.
    noSideEffect, cdecl, importcpp: "BasisCurve", dynlib: tkg3d.}