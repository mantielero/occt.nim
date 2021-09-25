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


proc constructGeomAdaptorSurfaceOfLinearExtrusion*(): GeomAdaptorSurfaceOfLinearExtrusion {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc constructGeomAdaptorSurfaceOfLinearExtrusion*(c: Handle[Adaptor3dHCurve]): GeomAdaptorSurfaceOfLinearExtrusion {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc constructGeomAdaptorSurfaceOfLinearExtrusion*(c: Handle[Adaptor3dHCurve];
    v: Dir): GeomAdaptorSurfaceOfLinearExtrusion {.constructor,
    importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc load*(this: var GeomAdaptorSurfaceOfLinearExtrusion; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "Load", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc load*(this: var GeomAdaptorSurfaceOfLinearExtrusion; v: Dir) {.importcpp: "Load",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc firstUParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): float {.
    noSideEffect, importcpp: "FirstUParameter",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc lastUParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): float {.
    noSideEffect, importcpp: "LastUParameter",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc firstVParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): float {.
    noSideEffect, importcpp: "FirstVParameter",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc lastVParameter*(this: GeomAdaptorSurfaceOfLinearExtrusion): float {.
    noSideEffect, importcpp: "LastVParameter",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uContinuity*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsShape {.
    noSideEffect, importcpp: "UContinuity",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vContinuity*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsShape {.
    noSideEffect, importcpp: "VContinuity",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc nbUIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbUIntervals",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc nbVIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbVIntervals",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion;
                t: var TColStdArray1OfReal; s: GeomAbsShape) {.noSideEffect,
    importcpp: "UIntervals", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vIntervals*(this: GeomAdaptorSurfaceOfLinearExtrusion;
                t: var TColStdArray1OfReal; s: GeomAbsShape) {.noSideEffect,
    importcpp: "VIntervals", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uTrim*(this: GeomAdaptorSurfaceOfLinearExtrusion; first: float; last: float;
           tol: float): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "UTrim", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vTrim*(this: GeomAdaptorSurfaceOfLinearExtrusion; first: float; last: float;
           tol: float): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "VTrim", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isUClosed*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    importcpp: "IsUClosed", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isVClosed*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    importcpp: "IsVClosed", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isUPeriodic*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uPeriod*(this: GeomAdaptorSurfaceOfLinearExtrusion): float {.noSideEffect,
    importcpp: "UPeriod", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isVPeriodic*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vPeriod*(this: GeomAdaptorSurfaceOfLinearExtrusion): float {.noSideEffect,
    importcpp: "VPeriod", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uResolution*(this: GeomAdaptorSurfaceOfLinearExtrusion; r3d: float): float {.
    noSideEffect, importcpp: "UResolution",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc vResolution*(this: GeomAdaptorSurfaceOfLinearExtrusion; r3d: float): float {.
    noSideEffect, importcpp: "VResolution",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc getType*(this: GeomAdaptorSurfaceOfLinearExtrusion): GeomAbsSurfaceType {.
    noSideEffect, importcpp: "GetType",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc plane*(this: GeomAdaptorSurfaceOfLinearExtrusion): Pln {.noSideEffect,
    importcpp: "Plane", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc cylinder*(this: GeomAdaptorSurfaceOfLinearExtrusion): Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc cone*(this: GeomAdaptorSurfaceOfLinearExtrusion): Cone {.noSideEffect,
    importcpp: "Cone", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc sphere*(this: GeomAdaptorSurfaceOfLinearExtrusion): Sphere {.noSideEffect,
    importcpp: "Sphere", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc torus*(this: GeomAdaptorSurfaceOfLinearExtrusion): Torus {.noSideEffect,
    importcpp: "Torus", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc uDegree*(this: GeomAdaptorSurfaceOfLinearExtrusion): int {.noSideEffect,
    importcpp: "UDegree", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc nbUPoles*(this: GeomAdaptorSurfaceOfLinearExtrusion): int {.noSideEffect,
    importcpp: "NbUPoles", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isURational*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    importcpp: "IsURational", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc isVRational*(this: GeomAdaptorSurfaceOfLinearExtrusion): bool {.noSideEffect,
    importcpp: "IsVRational", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc bezier*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[GeomBezierSurface] {.
    noSideEffect, importcpp: "Bezier",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc bSpline*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "BSpline",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc axeOfRevolution*(this: GeomAdaptorSurfaceOfLinearExtrusion): Ax1 {.
    noSideEffect, importcpp: "AxeOfRevolution",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc direction*(this: GeomAdaptorSurfaceOfLinearExtrusion): Dir {.noSideEffect,
    importcpp: "Direction", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc basisCurve*(this: GeomAdaptorSurfaceOfLinearExtrusion): Handle[Adaptor3dHCurve] {.
    noSideEffect, importcpp: "BasisCurve",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
