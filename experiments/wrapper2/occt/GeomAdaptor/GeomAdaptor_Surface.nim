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

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
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
  GeomAdaptorSurface* {.importcpp: "GeomAdaptor_Surface",
                       header: "GeomAdaptor_Surface.hxx", bycopy.} = object of Adaptor3dSurface
    ## /< B-spline representation to prevent downcasts
    ## /< Cached data for B-spline or Bezier surface
    ## /< Calculates values of nested complex surfaces (offset surface, surface of extrusion or revolution)


proc constructGeomAdaptorSurface*(): GeomAdaptorSurface {.constructor,
    importcpp: "GeomAdaptor_Surface(@)", header: "GeomAdaptor_Surface.hxx".}
proc constructGeomAdaptorSurface*(s: Handle[GeomSurface]): GeomAdaptorSurface {.
    constructor, importcpp: "GeomAdaptor_Surface(@)",
    header: "GeomAdaptor_Surface.hxx".}
proc constructGeomAdaptorSurface*(s: Handle[GeomSurface]; uFirst: float;
                                 uLast: float; vFirst: float; vLast: float;
                                 tolU: float = 0.0; tolV: float = 0.0): GeomAdaptorSurface {.
    constructor, importcpp: "GeomAdaptor_Surface(@)",
    header: "GeomAdaptor_Surface.hxx".}
proc load*(this: var GeomAdaptorSurface; s: Handle[GeomSurface]) {.importcpp: "Load",
    header: "GeomAdaptor_Surface.hxx".}
proc load*(this: var GeomAdaptorSurface; s: Handle[GeomSurface]; uFirst: float;
          uLast: float; vFirst: float; vLast: float; tolU: float = 0.0; tolV: float = 0.0) {.
    importcpp: "Load", header: "GeomAdaptor_Surface.hxx".}
proc surface*(this: GeomAdaptorSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "GeomAdaptor_Surface.hxx".}
proc firstUParameter*(this: GeomAdaptorSurface): float {.noSideEffect,
    importcpp: "FirstUParameter", header: "GeomAdaptor_Surface.hxx".}
proc lastUParameter*(this: GeomAdaptorSurface): float {.noSideEffect,
    importcpp: "LastUParameter", header: "GeomAdaptor_Surface.hxx".}
proc firstVParameter*(this: GeomAdaptorSurface): float {.noSideEffect,
    importcpp: "FirstVParameter", header: "GeomAdaptor_Surface.hxx".}
proc lastVParameter*(this: GeomAdaptorSurface): float {.noSideEffect,
    importcpp: "LastVParameter", header: "GeomAdaptor_Surface.hxx".}
proc uContinuity*(this: GeomAdaptorSurface): GeomAbsShape {.noSideEffect,
    importcpp: "UContinuity", header: "GeomAdaptor_Surface.hxx".}
proc vContinuity*(this: GeomAdaptorSurface): GeomAbsShape {.noSideEffect,
    importcpp: "VContinuity", header: "GeomAdaptor_Surface.hxx".}
proc nbUIntervals*(this: GeomAdaptorSurface; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbUIntervals", header: "GeomAdaptor_Surface.hxx".}
proc nbVIntervals*(this: GeomAdaptorSurface; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbVIntervals", header: "GeomAdaptor_Surface.hxx".}
proc uIntervals*(this: GeomAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "UIntervals", header: "GeomAdaptor_Surface.hxx".}
proc vIntervals*(this: GeomAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "VIntervals", header: "GeomAdaptor_Surface.hxx".}
proc uTrim*(this: GeomAdaptorSurface; first: float; last: float; tol: float): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "UTrim",
                        header: "GeomAdaptor_Surface.hxx".}
proc vTrim*(this: GeomAdaptorSurface; first: float; last: float; tol: float): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "VTrim",
                        header: "GeomAdaptor_Surface.hxx".}
proc isUClosed*(this: GeomAdaptorSurface): bool {.noSideEffect,
    importcpp: "IsUClosed", header: "GeomAdaptor_Surface.hxx".}
proc isVClosed*(this: GeomAdaptorSurface): bool {.noSideEffect,
    importcpp: "IsVClosed", header: "GeomAdaptor_Surface.hxx".}
proc isUPeriodic*(this: GeomAdaptorSurface): bool {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomAdaptor_Surface.hxx".}
proc uPeriod*(this: GeomAdaptorSurface): float {.noSideEffect, importcpp: "UPeriod",
    header: "GeomAdaptor_Surface.hxx".}
proc isVPeriodic*(this: GeomAdaptorSurface): bool {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomAdaptor_Surface.hxx".}
proc vPeriod*(this: GeomAdaptorSurface): float {.noSideEffect, importcpp: "VPeriod",
    header: "GeomAdaptor_Surface.hxx".}
proc value*(this: GeomAdaptorSurface; u: float; v: float): Pnt {.noSideEffect,
    importcpp: "Value", header: "GeomAdaptor_Surface.hxx".}
proc d0*(this: GeomAdaptorSurface; u: float; v: float; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "GeomAdaptor_Surface.hxx".}
proc d1*(this: GeomAdaptorSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomAdaptor_Surface.hxx".}
proc d2*(this: GeomAdaptorSurface; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect,
    importcpp: "D2", header: "GeomAdaptor_Surface.hxx".}
proc d3*(this: GeomAdaptorSurface; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
                                    header: "GeomAdaptor_Surface.hxx".}
proc dn*(this: GeomAdaptorSurface; u: float; v: float; nu: int; nv: int): Vec {.
    noSideEffect, importcpp: "DN", header: "GeomAdaptor_Surface.hxx".}
proc uResolution*(this: GeomAdaptorSurface; r3d: float): float {.noSideEffect,
    importcpp: "UResolution", header: "GeomAdaptor_Surface.hxx".}
proc vResolution*(this: GeomAdaptorSurface; r3d: float): float {.noSideEffect,
    importcpp: "VResolution", header: "GeomAdaptor_Surface.hxx".}
proc getType*(this: GeomAdaptorSurface): GeomAbsSurfaceType {.noSideEffect,
    importcpp: "GetType", header: "GeomAdaptor_Surface.hxx".}
proc plane*(this: GeomAdaptorSurface): Pln {.noSideEffect, importcpp: "Plane",
    header: "GeomAdaptor_Surface.hxx".}
proc cylinder*(this: GeomAdaptorSurface): Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "GeomAdaptor_Surface.hxx".}
proc cone*(this: GeomAdaptorSurface): Cone {.noSideEffect, importcpp: "Cone",
    header: "GeomAdaptor_Surface.hxx".}
proc sphere*(this: GeomAdaptorSurface): Sphere {.noSideEffect, importcpp: "Sphere",
    header: "GeomAdaptor_Surface.hxx".}
proc torus*(this: GeomAdaptorSurface): Torus {.noSideEffect, importcpp: "Torus",
    header: "GeomAdaptor_Surface.hxx".}
proc uDegree*(this: GeomAdaptorSurface): int {.noSideEffect, importcpp: "UDegree",
    header: "GeomAdaptor_Surface.hxx".}
proc nbUPoles*(this: GeomAdaptorSurface): int {.noSideEffect, importcpp: "NbUPoles",
    header: "GeomAdaptor_Surface.hxx".}
proc vDegree*(this: GeomAdaptorSurface): int {.noSideEffect, importcpp: "VDegree",
    header: "GeomAdaptor_Surface.hxx".}
proc nbVPoles*(this: GeomAdaptorSurface): int {.noSideEffect, importcpp: "NbVPoles",
    header: "GeomAdaptor_Surface.hxx".}
proc nbUKnots*(this: GeomAdaptorSurface): int {.noSideEffect, importcpp: "NbUKnots",
    header: "GeomAdaptor_Surface.hxx".}
proc nbVKnots*(this: GeomAdaptorSurface): int {.noSideEffect, importcpp: "NbVKnots",
    header: "GeomAdaptor_Surface.hxx".}
proc isURational*(this: GeomAdaptorSurface): bool {.noSideEffect,
    importcpp: "IsURational", header: "GeomAdaptor_Surface.hxx".}
proc isVRational*(this: GeomAdaptorSurface): bool {.noSideEffect,
    importcpp: "IsVRational", header: "GeomAdaptor_Surface.hxx".}
proc bezier*(this: GeomAdaptorSurface): Handle[GeomBezierSurface] {.noSideEffect,
    importcpp: "Bezier", header: "GeomAdaptor_Surface.hxx".}
proc bSpline*(this: GeomAdaptorSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    importcpp: "BSpline", header: "GeomAdaptor_Surface.hxx".}
proc axeOfRevolution*(this: GeomAdaptorSurface): Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "GeomAdaptor_Surface.hxx".}
proc direction*(this: GeomAdaptorSurface): Dir {.noSideEffect,
    importcpp: "Direction", header: "GeomAdaptor_Surface.hxx".}
proc basisCurve*(this: GeomAdaptorSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "GeomAdaptor_Surface.hxx".}
proc basisSurface*(this: GeomAdaptorSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "GeomAdaptor_Surface.hxx".}
proc offsetValue*(this: GeomAdaptorSurface): float {.noSideEffect,
    importcpp: "OffsetValue", header: "GeomAdaptor_Surface.hxx".}
