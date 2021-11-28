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


proc newGeomAdaptorSurface*(): GeomAdaptorSurface {.cdecl, constructor,
    importcpp: "GeomAdaptor_Surface(@)", dynlib: tkg3d.}
proc newGeomAdaptorSurface*(s: Handle[GeomSurface]): GeomAdaptorSurface {.cdecl,
    constructor, importcpp: "GeomAdaptor_Surface(@)", dynlib: tkg3d.}
proc newGeomAdaptorSurface*(s: Handle[GeomSurface]; uFirst: cfloat; uLast: cfloat;
                           vFirst: cfloat; vLast: cfloat; tolU: cfloat = 0.0;
                           tolV: cfloat = 0.0): GeomAdaptorSurface {.cdecl,
    constructor, importcpp: "GeomAdaptor_Surface(@)", dynlib: tkg3d.}
proc load*(this: var GeomAdaptorSurface; s: Handle[GeomSurface]) {.cdecl,
    importcpp: "Load", dynlib: tkg3d.}
proc load*(this: var GeomAdaptorSurface; s: Handle[GeomSurface]; uFirst: cfloat;
          uLast: cfloat; vFirst: cfloat; vLast: cfloat; tolU: cfloat = 0.0;
          tolV: cfloat = 0.0) {.cdecl, importcpp: "Load", dynlib: tkg3d.}
proc surface*(this: GeomAdaptorSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkg3d.}
proc firstUParameter*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstUParameter", dynlib: tkg3d.}
proc lastUParameter*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastUParameter", dynlib: tkg3d.}
proc firstVParameter*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstVParameter", dynlib: tkg3d.}
proc lastVParameter*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastVParameter", dynlib: tkg3d.}
proc uContinuity*(this: GeomAdaptorSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "UContinuity", dynlib: tkg3d.}
proc vContinuity*(this: GeomAdaptorSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "VContinuity", dynlib: tkg3d.}
proc nbUIntervals*(this: GeomAdaptorSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbUIntervals", dynlib: tkg3d.}
proc nbVIntervals*(this: GeomAdaptorSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbVIntervals", dynlib: tkg3d.}
proc uIntervals*(this: GeomAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "UIntervals", dynlib: tkg3d.}
proc vIntervals*(this: GeomAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "VIntervals", dynlib: tkg3d.}
proc uTrim*(this: GeomAdaptorSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "UTrim", dynlib: tkg3d.}
proc vTrim*(this: GeomAdaptorSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "VTrim", dynlib: tkg3d.}
proc isUClosed*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkg3d.}
proc isVClosed*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkg3d.}
proc isUPeriodic*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkg3d.}
proc uPeriod*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", dynlib: tkg3d.}
proc isVPeriodic*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkg3d.}
proc vPeriod*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", dynlib: tkg3d.}
proc value*(this: GeomAdaptorSurface; u: cfloat; v: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkg3d.}
proc d0*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    dynlib: tkg3d.}
proc dn*(this: GeomAdaptorSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkg3d.}
proc uResolution*(this: GeomAdaptorSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UResolution", dynlib: tkg3d.}
proc vResolution*(this: GeomAdaptorSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VResolution", dynlib: tkg3d.}
proc getType*(this: GeomAdaptorSurface): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkg3d.}
proc plane*(this: GeomAdaptorSurface): Pln {.noSideEffect, cdecl, importcpp: "Plane",
    dynlib: tkg3d.}
proc cylinder*(this: GeomAdaptorSurface): Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", dynlib: tkg3d.}
proc cone*(this: GeomAdaptorSurface): Cone {.noSideEffect, cdecl, importcpp: "Cone",
    dynlib: tkg3d.}
proc sphere*(this: GeomAdaptorSurface): Sphere {.noSideEffect, cdecl,
    importcpp: "Sphere", dynlib: tkg3d.}
proc torus*(this: GeomAdaptorSurface): Torus {.noSideEffect, cdecl,
    importcpp: "Torus", dynlib: tkg3d.}
proc uDegree*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkg3d.}
proc nbUPoles*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", dynlib: tkg3d.}
proc vDegree*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkg3d.}
proc nbVPoles*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", dynlib: tkg3d.}
proc nbUKnots*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", dynlib: tkg3d.}
proc nbVKnots*(this: GeomAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", dynlib: tkg3d.}
proc isURational*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", dynlib: tkg3d.}
proc isVRational*(this: GeomAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", dynlib: tkg3d.}
proc bezier*(this: GeomAdaptorSurface): Handle[GeomBezierSurface] {.noSideEffect,
    cdecl, importcpp: "Bezier", dynlib: tkg3d.}
proc bSpline*(this: GeomAdaptorSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    cdecl, importcpp: "BSpline", dynlib: tkg3d.}
proc axeOfRevolution*(this: GeomAdaptorSurface): Ax1 {.noSideEffect, cdecl,
    importcpp: "AxeOfRevolution", dynlib: tkg3d.}
proc direction*(this: GeomAdaptorSurface): Dir {.noSideEffect, cdecl,
    importcpp: "Direction", dynlib: tkg3d.}
proc basisCurve*(this: GeomAdaptorSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "BasisCurve", dynlib: tkg3d.}
proc basisSurface*(this: GeomAdaptorSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "BasisSurface", dynlib: tkg3d.}
proc offsetValue*(this: GeomAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "OffsetValue", dynlib: tkg3d.}