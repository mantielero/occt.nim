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


proc `new`*(this: var GeomAdaptorSurfaceOfRevolution; theSize: csize_t): pointer {.
    importcpp: "GeomAdaptor_SurfaceOfRevolution::operator new",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc `delete`*(this: var GeomAdaptorSurfaceOfRevolution; theAddress: pointer) {.
    importcpp: "GeomAdaptor_SurfaceOfRevolution::operator delete",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc `new[]`*(this: var GeomAdaptorSurfaceOfRevolution; theSize: csize_t): pointer {.
    importcpp: "GeomAdaptor_SurfaceOfRevolution::operator new[]",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc `delete[]`*(this: var GeomAdaptorSurfaceOfRevolution; theAddress: pointer) {.
    importcpp: "GeomAdaptor_SurfaceOfRevolution::operator delete[]",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc `new`*(this: var GeomAdaptorSurfaceOfRevolution; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomAdaptor_SurfaceOfRevolution::operator new",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc `delete`*(this: var GeomAdaptorSurfaceOfRevolution; a2: pointer; a3: pointer) {.
    importcpp: "GeomAdaptor_SurfaceOfRevolution::operator delete",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc constructGeomAdaptorSurfaceOfRevolution*(): GeomAdaptorSurfaceOfRevolution {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc constructGeomAdaptorSurfaceOfRevolution*(c: Handle[Adaptor3dHCurve]): GeomAdaptorSurfaceOfRevolution {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc constructGeomAdaptorSurfaceOfRevolution*(c: Handle[Adaptor3dHCurve]; v: Ax1): GeomAdaptorSurfaceOfRevolution {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc load*(this: var GeomAdaptorSurfaceOfRevolution; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "Load", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc load*(this: var GeomAdaptorSurfaceOfRevolution; v: Ax1) {.importcpp: "Load",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc axeOfRevolution*(this: GeomAdaptorSurfaceOfRevolution): Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc firstUParameter*(this: GeomAdaptorSurfaceOfRevolution): StandardReal {.
    noSideEffect, importcpp: "FirstUParameter",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc lastUParameter*(this: GeomAdaptorSurfaceOfRevolution): StandardReal {.
    noSideEffect, importcpp: "LastUParameter",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc firstVParameter*(this: GeomAdaptorSurfaceOfRevolution): StandardReal {.
    noSideEffect, importcpp: "FirstVParameter",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc lastVParameter*(this: GeomAdaptorSurfaceOfRevolution): StandardReal {.
    noSideEffect, importcpp: "LastVParameter",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uContinuity*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsShape {.
    noSideEffect, importcpp: "UContinuity",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vContinuity*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsShape {.
    noSideEffect, importcpp: "VContinuity",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc nbUIntervals*(this: GeomAdaptorSurfaceOfRevolution; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbUIntervals",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc nbVIntervals*(this: GeomAdaptorSurfaceOfRevolution; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbVIntervals",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uIntervals*(this: GeomAdaptorSurfaceOfRevolution; t: var TColStdArray1OfReal;
                s: GeomAbsShape) {.noSideEffect, importcpp: "UIntervals",
                                 header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vIntervals*(this: GeomAdaptorSurfaceOfRevolution; t: var TColStdArray1OfReal;
                s: GeomAbsShape) {.noSideEffect, importcpp: "VIntervals",
                                 header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uTrim*(this: GeomAdaptorSurfaceOfRevolution; first: StandardReal;
           last: StandardReal; tol: StandardReal): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "UTrim", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vTrim*(this: GeomAdaptorSurfaceOfRevolution; first: StandardReal;
           last: StandardReal; tol: StandardReal): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "VTrim", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isUClosed*(this: GeomAdaptorSurfaceOfRevolution): StandardBoolean {.
    noSideEffect, importcpp: "IsUClosed",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isVClosed*(this: GeomAdaptorSurfaceOfRevolution): StandardBoolean {.
    noSideEffect, importcpp: "IsVClosed",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isUPeriodic*(this: GeomAdaptorSurfaceOfRevolution): StandardBoolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uPeriod*(this: GeomAdaptorSurfaceOfRevolution): StandardReal {.noSideEffect,
    importcpp: "UPeriod", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isVPeriodic*(this: GeomAdaptorSurfaceOfRevolution): StandardBoolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vPeriod*(this: GeomAdaptorSurfaceOfRevolution): StandardReal {.noSideEffect,
    importcpp: "VPeriod", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc uResolution*(this: GeomAdaptorSurfaceOfRevolution; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UResolution",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vResolution*(this: GeomAdaptorSurfaceOfRevolution; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VResolution",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc getType*(this: GeomAdaptorSurfaceOfRevolution): GeomAbsSurfaceType {.
    noSideEffect, importcpp: "GetType",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc plane*(this: GeomAdaptorSurfaceOfRevolution): Pln {.noSideEffect,
    importcpp: "Plane", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc cylinder*(this: GeomAdaptorSurfaceOfRevolution): Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc cone*(this: GeomAdaptorSurfaceOfRevolution): Cone {.noSideEffect,
    importcpp: "Cone", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc sphere*(this: GeomAdaptorSurfaceOfRevolution): Sphere {.noSideEffect,
    importcpp: "Sphere", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc torus*(this: GeomAdaptorSurfaceOfRevolution): Torus {.noSideEffect,
    importcpp: "Torus", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc vDegree*(this: GeomAdaptorSurfaceOfRevolution): int {.noSideEffect,
    importcpp: "VDegree", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc nbVPoles*(this: GeomAdaptorSurfaceOfRevolution): int {.noSideEffect,
    importcpp: "NbVPoles", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc nbVKnots*(this: GeomAdaptorSurfaceOfRevolution): int {.noSideEffect,
    importcpp: "NbVKnots", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isURational*(this: GeomAdaptorSurfaceOfRevolution): StandardBoolean {.
    noSideEffect, importcpp: "IsURational",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc isVRational*(this: GeomAdaptorSurfaceOfRevolution): StandardBoolean {.
    noSideEffect, importcpp: "IsVRational",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc bezier*(this: GeomAdaptorSurfaceOfRevolution): Handle[GeomBezierSurface] {.
    noSideEffect, importcpp: "Bezier",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc bSpline*(this: GeomAdaptorSurfaceOfRevolution): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "BSpline",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc axis*(this: GeomAdaptorSurfaceOfRevolution): Ax3 {.noSideEffect,
    importcpp: "Axis", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc basisCurve*(this: GeomAdaptorSurfaceOfRevolution): Handle[Adaptor3dHCurve] {.
    noSideEffect, importcpp: "BasisCurve",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}