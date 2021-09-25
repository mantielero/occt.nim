##  Created on: 1995-07-20
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
type
  BRepApproxSurfaceTool* {.importcpp: "BRepApprox_SurfaceTool",
                          header: "BRepApprox_SurfaceTool.hxx", bycopy.} = object


proc firstUParameter*(s: BRepAdaptorSurface): float {.
    importcpp: "BRepApprox_SurfaceTool::FirstUParameter(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc firstVParameter*(s: BRepAdaptorSurface): float {.
    importcpp: "BRepApprox_SurfaceTool::FirstVParameter(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc lastUParameter*(s: BRepAdaptorSurface): float {.
    importcpp: "BRepApprox_SurfaceTool::LastUParameter(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc lastVParameter*(s: BRepAdaptorSurface): float {.
    importcpp: "BRepApprox_SurfaceTool::LastVParameter(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc nbUIntervals*(s: BRepAdaptorSurface; sh: GeomAbsShape): int {.
    importcpp: "BRepApprox_SurfaceTool::NbUIntervals(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc nbVIntervals*(s: BRepAdaptorSurface; sh: GeomAbsShape): int {.
    importcpp: "BRepApprox_SurfaceTool::NbVIntervals(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc uIntervals*(s: BRepAdaptorSurface; t: var TColStdArray1OfReal; sh: GeomAbsShape) {.
    importcpp: "BRepApprox_SurfaceTool::UIntervals(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc vIntervals*(s: BRepAdaptorSurface; t: var TColStdArray1OfReal; sh: GeomAbsShape) {.
    importcpp: "BRepApprox_SurfaceTool::VIntervals(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc uTrim*(s: BRepAdaptorSurface; first: float; last: float; tol: float): Handle[
    Adaptor3dHSurface] {.importcpp: "BRepApprox_SurfaceTool::UTrim(@)",
                        header: "BRepApprox_SurfaceTool.hxx".}
proc vTrim*(s: BRepAdaptorSurface; first: float; last: float; tol: float): Handle[
    Adaptor3dHSurface] {.importcpp: "BRepApprox_SurfaceTool::VTrim(@)",
                        header: "BRepApprox_SurfaceTool.hxx".}
proc isUClosed*(s: BRepAdaptorSurface): bool {.
    importcpp: "BRepApprox_SurfaceTool::IsUClosed(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc isVClosed*(s: BRepAdaptorSurface): bool {.
    importcpp: "BRepApprox_SurfaceTool::IsVClosed(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc isUPeriodic*(s: BRepAdaptorSurface): bool {.
    importcpp: "BRepApprox_SurfaceTool::IsUPeriodic(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc uPeriod*(s: BRepAdaptorSurface): float {.
    importcpp: "BRepApprox_SurfaceTool::UPeriod(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc isVPeriodic*(s: BRepAdaptorSurface): bool {.
    importcpp: "BRepApprox_SurfaceTool::IsVPeriodic(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc vPeriod*(s: BRepAdaptorSurface): float {.
    importcpp: "BRepApprox_SurfaceTool::VPeriod(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc value*(s: BRepAdaptorSurface; u: float; v: float): Pnt {.
    importcpp: "BRepApprox_SurfaceTool::Value(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc d0*(s: BRepAdaptorSurface; u: float; v: float; p: var Pnt) {.
    importcpp: "BRepApprox_SurfaceTool::D0(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc d1*(s: BRepAdaptorSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    importcpp: "BRepApprox_SurfaceTool::D1(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc d2*(s: BRepAdaptorSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.
    importcpp: "BRepApprox_SurfaceTool::D2(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc d3*(s: BRepAdaptorSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
        d3uvv: var Vec) {.importcpp: "BRepApprox_SurfaceTool::D3(@)",
                       header: "BRepApprox_SurfaceTool.hxx".}
proc dn*(s: BRepAdaptorSurface; u: float; v: float; nu: int; nv: int): Vec {.
    importcpp: "BRepApprox_SurfaceTool::DN(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc uResolution*(s: BRepAdaptorSurface; r3d: float): float {.
    importcpp: "BRepApprox_SurfaceTool::UResolution(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc vResolution*(s: BRepAdaptorSurface; r3d: float): float {.
    importcpp: "BRepApprox_SurfaceTool::VResolution(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc getType*(s: BRepAdaptorSurface): GeomAbsSurfaceType {.
    importcpp: "BRepApprox_SurfaceTool::GetType(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc plane*(s: BRepAdaptorSurface): Pln {.importcpp: "BRepApprox_SurfaceTool::Plane(@)",
                                      header: "BRepApprox_SurfaceTool.hxx".}
proc cylinder*(s: BRepAdaptorSurface): Cylinder {.
    importcpp: "BRepApprox_SurfaceTool::Cylinder(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc cone*(s: BRepAdaptorSurface): Cone {.importcpp: "BRepApprox_SurfaceTool::Cone(@)",
                                      header: "BRepApprox_SurfaceTool.hxx".}
proc torus*(s: BRepAdaptorSurface): Torus {.importcpp: "BRepApprox_SurfaceTool::Torus(@)",
                                        header: "BRepApprox_SurfaceTool.hxx".}
proc sphere*(s: BRepAdaptorSurface): Sphere {.
    importcpp: "BRepApprox_SurfaceTool::Sphere(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc bezier*(s: BRepAdaptorSurface): Handle[GeomBezierSurface] {.
    importcpp: "BRepApprox_SurfaceTool::Bezier(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc bSpline*(s: BRepAdaptorSurface): Handle[GeomBSplineSurface] {.
    importcpp: "BRepApprox_SurfaceTool::BSpline(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc axeOfRevolution*(s: BRepAdaptorSurface): Ax1 {.
    importcpp: "BRepApprox_SurfaceTool::AxeOfRevolution(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc direction*(s: BRepAdaptorSurface): Dir {.
    importcpp: "BRepApprox_SurfaceTool::Direction(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc basisCurve*(s: BRepAdaptorSurface): Handle[Adaptor3dHCurve] {.
    importcpp: "BRepApprox_SurfaceTool::BasisCurve(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc nbSamplesU*(s: BRepAdaptorSurface): int {.
    importcpp: "BRepApprox_SurfaceTool::NbSamplesU(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc nbSamplesV*(s: BRepAdaptorSurface): int {.
    importcpp: "BRepApprox_SurfaceTool::NbSamplesV(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc nbSamplesU*(s: BRepAdaptorSurface; u1: float; u2: float): int {.
    importcpp: "BRepApprox_SurfaceTool::NbSamplesU(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc nbSamplesV*(s: BRepAdaptorSurface; v1: float; v2: float): int {.
    importcpp: "BRepApprox_SurfaceTool::NbSamplesV(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
