##  Created on: 1993-07-02
##  Created by: Laurent BUCHARD
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
type
  Adaptor3dHSurfaceTool* {.importcpp: "Adaptor3d_HSurfaceTool",
                          header: "Adaptor3d_HSurfaceTool.hxx", bycopy.} = object


proc firstUParameter*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::FirstUParameter(@)", dynlib: tkg3d.}
proc firstVParameter*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::FirstVParameter(@)", dynlib: tkg3d.}
proc lastUParameter*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::LastUParameter(@)", dynlib: tkg3d.}
proc lastVParameter*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::LastVParameter(@)", dynlib: tkg3d.}
proc nbUIntervals*(s: Handle[Adaptor3dHSurface]; sh: GeomAbsShape): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbUIntervals(@)", dynlib: tkg3d.}
proc nbVIntervals*(s: Handle[Adaptor3dHSurface]; sh: GeomAbsShape): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbVIntervals(@)", dynlib: tkg3d.}
proc uIntervals*(s: Handle[Adaptor3dHSurface]; t: var TColStdArray1OfReal;
                sh: GeomAbsShape) {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::UIntervals(@)",
                                  dynlib: tkg3d.}
proc vIntervals*(s: Handle[Adaptor3dHSurface]; t: var TColStdArray1OfReal;
                sh: GeomAbsShape) {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::VIntervals(@)",
                                  dynlib: tkg3d.}
proc uTrim*(s: Handle[Adaptor3dHSurface]; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::UTrim(@)",
                        dynlib: tkg3d.}
proc vTrim*(s: Handle[Adaptor3dHSurface]; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::VTrim(@)",
                        dynlib: tkg3d.}
proc isUClosed*(s: Handle[Adaptor3dHSurface]): bool {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::IsUClosed(@)", dynlib: tkg3d.}
proc isVClosed*(s: Handle[Adaptor3dHSurface]): bool {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::IsVClosed(@)", dynlib: tkg3d.}
proc isUPeriodic*(s: Handle[Adaptor3dHSurface]): bool {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::IsUPeriodic(@)", dynlib: tkg3d.}
proc uPeriod*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::UPeriod(@)", dynlib: tkg3d.}
proc isVPeriodic*(s: Handle[Adaptor3dHSurface]): bool {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::IsVPeriodic(@)", dynlib: tkg3d.}
proc vPeriod*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::VPeriod(@)", dynlib: tkg3d.}
proc value*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat): Pnt {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Value(@)", dynlib: tkg3d.}
proc d0*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; p: var Pnt) {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::D0(@)", dynlib: tkg3d.}
proc d1*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::D1(@)",
                     dynlib: tkg3d.}
proc d2*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::D2(@)", dynlib: tkg3d.}
proc d3*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.cdecl,
                                    importcpp: "Adaptor3d_HSurfaceTool::D3(@)",
                                    dynlib: tkg3d.}
proc dn*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    cdecl, importcpp: "Adaptor3d_HSurfaceTool::DN(@)", dynlib: tkg3d.}
proc uResolution*(s: Handle[Adaptor3dHSurface]; r3d: cfloat): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::UResolution(@)", dynlib: tkg3d.}
proc vResolution*(s: Handle[Adaptor3dHSurface]; r3d: cfloat): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::VResolution(@)", dynlib: tkg3d.}
proc getType*(s: Handle[Adaptor3dHSurface]): GeomAbsSurfaceType {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::GetType(@)", dynlib: tkg3d.}
proc plane*(s: Handle[Adaptor3dHSurface]): Pln {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Plane(@)", dynlib: tkg3d.}
proc cylinder*(s: Handle[Adaptor3dHSurface]): Cylinder {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Cylinder(@)", dynlib: tkg3d.}
proc cone*(s: Handle[Adaptor3dHSurface]): Cone {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Cone(@)", dynlib: tkg3d.}
proc torus*(s: Handle[Adaptor3dHSurface]): Torus {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Torus(@)", dynlib: tkg3d.}
proc sphere*(s: Handle[Adaptor3dHSurface]): Sphere {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Sphere(@)", dynlib: tkg3d.}
proc bezier*(s: Handle[Adaptor3dHSurface]): Handle[GeomBezierSurface] {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Bezier(@)", dynlib: tkg3d.}
proc bSpline*(s: Handle[Adaptor3dHSurface]): Handle[GeomBSplineSurface] {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::BSpline(@)", dynlib: tkg3d.}
proc axeOfRevolution*(s: Handle[Adaptor3dHSurface]): Ax1 {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::AxeOfRevolution(@)", dynlib: tkg3d.}
proc direction*(s: Handle[Adaptor3dHSurface]): Dir {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Direction(@)", dynlib: tkg3d.}
proc basisCurve*(s: Handle[Adaptor3dHSurface]): Handle[Adaptor3dHCurve] {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::BasisCurve(@)", dynlib: tkg3d.}
proc basisSurface*(s: Handle[Adaptor3dHSurface]): Handle[Adaptor3dHSurface] {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::BasisSurface(@)", dynlib: tkg3d.}
proc offsetValue*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::OffsetValue(@)", dynlib: tkg3d.}
proc nbSamplesU*(s: Handle[Adaptor3dHSurface]): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesU(@)", dynlib: tkg3d.}
proc nbSamplesV*(s: Handle[Adaptor3dHSurface]): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesV(@)", dynlib: tkg3d.}
proc nbSamplesU*(s: Handle[Adaptor3dHSurface]; u1: cfloat; u2: cfloat): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesU(@)", dynlib: tkg3d.}
proc nbSamplesV*(s: Handle[Adaptor3dHSurface]; v1: cfloat; v2: cfloat): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesV(@)", dynlib: tkg3d.}