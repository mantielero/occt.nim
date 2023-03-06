import ../gp/gp_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import adaptor3d_types
import ../geom/geom_types
import ../geomabs/geomabs_types





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



proc firstUParameter*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::FirstUParameter(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc firstVParameter*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::FirstVParameter(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc lastUParameter*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::LastUParameter(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc lastVParameter*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::LastVParameter(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc nbUIntervals*(s: Handle[Adaptor3dHSurface]; sh: GeomAbsShape): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbUIntervals(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc nbVIntervals*(s: Handle[Adaptor3dHSurface]; sh: GeomAbsShape): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbVIntervals(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc uIntervals*(s: Handle[Adaptor3dHSurface]; t: var TColStdArray1OfReal;
                sh: GeomAbsShape) {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::UIntervals(@)",
                                  header: "Adaptor3d_HSurfaceTool.hxx".}
proc vIntervals*(s: Handle[Adaptor3dHSurface]; t: var TColStdArray1OfReal;
                sh: GeomAbsShape) {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::VIntervals(@)",
                                  header: "Adaptor3d_HSurfaceTool.hxx".}
proc uTrim*(s: Handle[Adaptor3dHSurface]; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::UTrim(@)",
                        header: "Adaptor3d_HSurfaceTool.hxx".}
proc vTrim*(s: Handle[Adaptor3dHSurface]; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::VTrim(@)",
                        header: "Adaptor3d_HSurfaceTool.hxx".}
proc isUClosed*(s: Handle[Adaptor3dHSurface]): bool {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::IsUClosed(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc isVClosed*(s: Handle[Adaptor3dHSurface]): bool {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::IsVClosed(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc isUPeriodic*(s: Handle[Adaptor3dHSurface]): bool {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::IsUPeriodic(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc uPeriod*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::UPeriod(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc isVPeriodic*(s: Handle[Adaptor3dHSurface]): bool {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::IsVPeriodic(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc vPeriod*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::VPeriod(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc value*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat): gp_Pnt {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Value(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc d0*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; p: var gp_Pnt) {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::D0(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc d1*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec) {.cdecl, importcpp: "Adaptor3d_HSurfaceTool::D1(@)",
                     header: "Adaptor3d_HSurfaceTool.hxx".}
proc d2*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec) {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::D2(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc d3*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; p: var gp_Pnt; d1u: var gp_Vec;
        d1v: var gp_Vec; d2u: var gp_Vec; d2v: var gp_Vec; d2uv: var gp_Vec; d3u: var gp_Vec; d3v: var gp_Vec;
        d3uuv: var gp_Vec; d3uvv: var gp_Vec) {.cdecl,
                                    importcpp: "Adaptor3d_HSurfaceTool::D3(@)",
                                    header: "Adaptor3d_HSurfaceTool.hxx".}
proc dn*(s: Handle[Adaptor3dHSurface]; u: cfloat; v: cfloat; nu: cint; nv: cint): gp_Vec {.
    cdecl, importcpp: "Adaptor3d_HSurfaceTool::DN(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc uResolution*(s: Handle[Adaptor3dHSurface]; r3d: cfloat): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::UResolution(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc vResolution*(s: Handle[Adaptor3dHSurface]; r3d: cfloat): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::VResolution(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc getType*(s: Handle[Adaptor3dHSurface]): GeomAbsSurfaceType {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::GetType(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc plane*(s: Handle[Adaptor3dHSurface]): gp_Pln {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Plane(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc cylinder*(s: Handle[Adaptor3dHSurface]): gp_Cylinder {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Cylinder(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc cone*(s: Handle[Adaptor3dHSurface]): gp_Cone {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Cone(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc torus*(s: Handle[Adaptor3dHSurface]): gp_Torus {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Torus(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc sphere*(s: Handle[Adaptor3dHSurface]): gp_Sphere {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Sphere(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc bezier*(s: Handle[Adaptor3dHSurface]): Handle[GeomBezierSurface] {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Bezier(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc bSpline*(s: Handle[Adaptor3dHSurface]): Handle[GeomBSplineSurface] {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::BSpline(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc axeOfRevolution*(s: Handle[Adaptor3dHSurface]): gp_Ax1 {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::AxeOfRevolution(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc direction*(s: Handle[Adaptor3dHSurface]): gp_Dir {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::Direction(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc basisCurve*(s: Handle[Adaptor3dHSurface]): Handle[Adaptor3dHCurve] {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::BasisCurve(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc basisSurface*(s: Handle[Adaptor3dHSurface]): Handle[Adaptor3dHSurface] {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::BasisSurface(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc offsetValue*(s: Handle[Adaptor3dHSurface]): cfloat {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::OffsetValue(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc nbSamplesU*(s: Handle[Adaptor3dHSurface]): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesU(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc nbSamplesV*(s: Handle[Adaptor3dHSurface]): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesV(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc nbSamplesU*(s: Handle[Adaptor3dHSurface]; u1: cfloat; u2: cfloat): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesU(@)", header: "Adaptor3d_HSurfaceTool.hxx".}
proc nbSamplesV*(s: Handle[Adaptor3dHSurface]; v1: cfloat; v2: cfloat): cint {.cdecl,
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesV(@)", header: "Adaptor3d_HSurfaceTool.hxx".}


