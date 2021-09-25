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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
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
discard "forward decl of gp_Dir"
discard "forward decl of Adaptor3d_HCurve"
type
  Adaptor3dSurface* {.importcpp: "Adaptor3d_Surface",
                     header: "Adaptor3d_Surface.hxx", bycopy.} = object


proc firstUParameter*(this: Adaptor3dSurface): float {.noSideEffect,
    importcpp: "FirstUParameter", header: "Adaptor3d_Surface.hxx".}
proc lastUParameter*(this: Adaptor3dSurface): float {.noSideEffect,
    importcpp: "LastUParameter", header: "Adaptor3d_Surface.hxx".}
proc firstVParameter*(this: Adaptor3dSurface): float {.noSideEffect,
    importcpp: "FirstVParameter", header: "Adaptor3d_Surface.hxx".}
proc lastVParameter*(this: Adaptor3dSurface): float {.noSideEffect,
    importcpp: "LastVParameter", header: "Adaptor3d_Surface.hxx".}
proc uContinuity*(this: Adaptor3dSurface): GeomAbsShape {.noSideEffect,
    importcpp: "UContinuity", header: "Adaptor3d_Surface.hxx".}
proc vContinuity*(this: Adaptor3dSurface): GeomAbsShape {.noSideEffect,
    importcpp: "VContinuity", header: "Adaptor3d_Surface.hxx".}
proc nbUIntervals*(this: Adaptor3dSurface; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbUIntervals", header: "Adaptor3d_Surface.hxx".}
proc nbVIntervals*(this: Adaptor3dSurface; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbVIntervals", header: "Adaptor3d_Surface.hxx".}
proc uIntervals*(this: Adaptor3dSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "UIntervals", header: "Adaptor3d_Surface.hxx".}
proc vIntervals*(this: Adaptor3dSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "VIntervals", header: "Adaptor3d_Surface.hxx".}
proc uTrim*(this: Adaptor3dSurface; first: float; last: float; tol: float): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "UTrim",
                        header: "Adaptor3d_Surface.hxx".}
proc vTrim*(this: Adaptor3dSurface; first: float; last: float; tol: float): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "VTrim",
                        header: "Adaptor3d_Surface.hxx".}
proc isUClosed*(this: Adaptor3dSurface): bool {.noSideEffect, importcpp: "IsUClosed",
    header: "Adaptor3d_Surface.hxx".}
proc isVClosed*(this: Adaptor3dSurface): bool {.noSideEffect, importcpp: "IsVClosed",
    header: "Adaptor3d_Surface.hxx".}
proc isUPeriodic*(this: Adaptor3dSurface): bool {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Adaptor3d_Surface.hxx".}
proc uPeriod*(this: Adaptor3dSurface): float {.noSideEffect, importcpp: "UPeriod",
    header: "Adaptor3d_Surface.hxx".}
proc isVPeriodic*(this: Adaptor3dSurface): bool {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Adaptor3d_Surface.hxx".}
proc vPeriod*(this: Adaptor3dSurface): float {.noSideEffect, importcpp: "VPeriod",
    header: "Adaptor3d_Surface.hxx".}
proc value*(this: Adaptor3dSurface; u: float; v: float): Pnt {.noSideEffect,
    importcpp: "Value", header: "Adaptor3d_Surface.hxx".}
proc d0*(this: Adaptor3dSurface; u: float; v: float; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "Adaptor3d_Surface.hxx".}
proc d1*(this: Adaptor3dSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "Adaptor3d_Surface.hxx".}
proc d2*(this: Adaptor3dSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, importcpp: "D2",
    header: "Adaptor3d_Surface.hxx".}
proc d3*(this: Adaptor3dSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
        d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
                       header: "Adaptor3d_Surface.hxx".}
proc dn*(this: Adaptor3dSurface; u: float; v: float; nu: int; nv: int): Vec {.noSideEffect,
    importcpp: "DN", header: "Adaptor3d_Surface.hxx".}
proc uResolution*(this: Adaptor3dSurface; r3d: float): float {.noSideEffect,
    importcpp: "UResolution", header: "Adaptor3d_Surface.hxx".}
proc vResolution*(this: Adaptor3dSurface; r3d: float): float {.noSideEffect,
    importcpp: "VResolution", header: "Adaptor3d_Surface.hxx".}
proc getType*(this: Adaptor3dSurface): GeomAbsSurfaceType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_Surface.hxx".}
proc plane*(this: Adaptor3dSurface): Pln {.noSideEffect, importcpp: "Plane",
                                       header: "Adaptor3d_Surface.hxx".}
proc cylinder*(this: Adaptor3dSurface): Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "Adaptor3d_Surface.hxx".}
proc cone*(this: Adaptor3dSurface): Cone {.noSideEffect, importcpp: "Cone",
                                       header: "Adaptor3d_Surface.hxx".}
proc sphere*(this: Adaptor3dSurface): Sphere {.noSideEffect, importcpp: "Sphere",
    header: "Adaptor3d_Surface.hxx".}
proc torus*(this: Adaptor3dSurface): Torus {.noSideEffect, importcpp: "Torus",
    header: "Adaptor3d_Surface.hxx".}
proc uDegree*(this: Adaptor3dSurface): int {.noSideEffect, importcpp: "UDegree",
    header: "Adaptor3d_Surface.hxx".}
proc nbUPoles*(this: Adaptor3dSurface): int {.noSideEffect, importcpp: "NbUPoles",
    header: "Adaptor3d_Surface.hxx".}
proc vDegree*(this: Adaptor3dSurface): int {.noSideEffect, importcpp: "VDegree",
    header: "Adaptor3d_Surface.hxx".}
proc nbVPoles*(this: Adaptor3dSurface): int {.noSideEffect, importcpp: "NbVPoles",
    header: "Adaptor3d_Surface.hxx".}
proc nbUKnots*(this: Adaptor3dSurface): int {.noSideEffect, importcpp: "NbUKnots",
    header: "Adaptor3d_Surface.hxx".}
proc nbVKnots*(this: Adaptor3dSurface): int {.noSideEffect, importcpp: "NbVKnots",
    header: "Adaptor3d_Surface.hxx".}
proc isURational*(this: Adaptor3dSurface): bool {.noSideEffect,
    importcpp: "IsURational", header: "Adaptor3d_Surface.hxx".}
proc isVRational*(this: Adaptor3dSurface): bool {.noSideEffect,
    importcpp: "IsVRational", header: "Adaptor3d_Surface.hxx".}
proc bezier*(this: Adaptor3dSurface): Handle[GeomBezierSurface] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_Surface.hxx".}
proc bSpline*(this: Adaptor3dSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_Surface.hxx".}
proc axeOfRevolution*(this: Adaptor3dSurface): Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "Adaptor3d_Surface.hxx".}
proc direction*(this: Adaptor3dSurface): Dir {.noSideEffect, importcpp: "Direction",
    header: "Adaptor3d_Surface.hxx".}
proc basisCurve*(this: Adaptor3dSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Adaptor3d_Surface.hxx".}
proc basisSurface*(this: Adaptor3dSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "Adaptor3d_Surface.hxx".}
proc offsetValue*(this: Adaptor3dSurface): float {.noSideEffect,
    importcpp: "OffsetValue", header: "Adaptor3d_Surface.hxx".}
proc destroyAdaptor3dSurface*(this: var Adaptor3dSurface) {.
    importcpp: "#.~Adaptor3d_Surface()", header: "Adaptor3d_Surface.hxx".}
