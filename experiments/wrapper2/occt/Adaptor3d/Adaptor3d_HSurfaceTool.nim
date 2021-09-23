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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../GeomAbs/GeomAbs_SurfaceType, ../gp/gp_Pln, ../gp/gp_Cylinder,
  ../gp/gp_Cone, ../gp/gp_Torus, ../gp/gp_Sphere, ../gp/gp_Ax1, ../gp/gp_Dir

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
type
  Adaptor3d_HSurfaceTool* {.importcpp: "Adaptor3d_HSurfaceTool",
                           header: "Adaptor3d_HSurfaceTool.hxx", bycopy.} = object


proc FirstUParameter*(S: handle[Adaptor3d_HSurface]): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::FirstUParameter(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc FirstVParameter*(S: handle[Adaptor3d_HSurface]): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::FirstVParameter(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc LastUParameter*(S: handle[Adaptor3d_HSurface]): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::LastUParameter(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc LastVParameter*(S: handle[Adaptor3d_HSurface]): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::LastVParameter(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc NbUIntervals*(S: handle[Adaptor3d_HSurface]; Sh: GeomAbs_Shape): Standard_Integer {.
    importcpp: "Adaptor3d_HSurfaceTool::NbUIntervals(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc NbVIntervals*(S: handle[Adaptor3d_HSurface]; Sh: GeomAbs_Shape): Standard_Integer {.
    importcpp: "Adaptor3d_HSurfaceTool::NbVIntervals(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc UIntervals*(S: handle[Adaptor3d_HSurface]; T: var TColStd_Array1OfReal;
                Sh: GeomAbs_Shape) {.importcpp: "Adaptor3d_HSurfaceTool::UIntervals(@)",
                                   header: "Adaptor3d_HSurfaceTool.hxx".}
proc VIntervals*(S: handle[Adaptor3d_HSurface]; T: var TColStd_Array1OfReal;
                Sh: GeomAbs_Shape) {.importcpp: "Adaptor3d_HSurfaceTool::VIntervals(@)",
                                   header: "Adaptor3d_HSurfaceTool.hxx".}
proc UTrim*(S: handle[Adaptor3d_HSurface]; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    importcpp: "Adaptor3d_HSurfaceTool::UTrim(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc VTrim*(S: handle[Adaptor3d_HSurface]; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    importcpp: "Adaptor3d_HSurfaceTool::VTrim(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc IsUClosed*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "Adaptor3d_HSurfaceTool::IsUClosed(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc IsVClosed*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "Adaptor3d_HSurfaceTool::IsVClosed(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc IsUPeriodic*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "Adaptor3d_HSurfaceTool::IsUPeriodic(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc UPeriod*(S: handle[Adaptor3d_HSurface]): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::UPeriod(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc IsVPeriodic*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "Adaptor3d_HSurfaceTool::IsVPeriodic(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc VPeriod*(S: handle[Adaptor3d_HSurface]): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::VPeriod(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc Value*(S: handle[Adaptor3d_HSurface]; u: Standard_Real; v: Standard_Real): gp_Pnt {.
    importcpp: "Adaptor3d_HSurfaceTool::Value(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc D0*(S: handle[Adaptor3d_HSurface]; u: Standard_Real; v: Standard_Real;
        P: var gp_Pnt) {.importcpp: "Adaptor3d_HSurfaceTool::D0(@)",
                      header: "Adaptor3d_HSurfaceTool.hxx".}
proc D1*(S: handle[Adaptor3d_HSurface]; u: Standard_Real; v: Standard_Real;
        P: var gp_Pnt; D1u: var gp_Vec; D1v: var gp_Vec) {.
    importcpp: "Adaptor3d_HSurfaceTool::D1(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc D2*(S: handle[Adaptor3d_HSurface]; u: Standard_Real; v: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec) {.importcpp: "Adaptor3d_HSurfaceTool::D2(@)",
                         header: "Adaptor3d_HSurfaceTool.hxx".}
proc D3*(S: handle[Adaptor3d_HSurface]; u: Standard_Real; v: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.importcpp: "Adaptor3d_HSurfaceTool::D3(@)",
                          header: "Adaptor3d_HSurfaceTool.hxx".}
proc DN*(S: handle[Adaptor3d_HSurface]; u: Standard_Real; v: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.
    importcpp: "Adaptor3d_HSurfaceTool::DN(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc UResolution*(S: handle[Adaptor3d_HSurface]; R3d: Standard_Real): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::UResolution(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc VResolution*(S: handle[Adaptor3d_HSurface]; R3d: Standard_Real): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::VResolution(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc GetType*(S: handle[Adaptor3d_HSurface]): GeomAbs_SurfaceType {.
    importcpp: "Adaptor3d_HSurfaceTool::GetType(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc Plane*(S: handle[Adaptor3d_HSurface]): gp_Pln {.
    importcpp: "Adaptor3d_HSurfaceTool::Plane(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc Cylinder*(S: handle[Adaptor3d_HSurface]): gp_Cylinder {.
    importcpp: "Adaptor3d_HSurfaceTool::Cylinder(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc Cone*(S: handle[Adaptor3d_HSurface]): gp_Cone {.
    importcpp: "Adaptor3d_HSurfaceTool::Cone(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc Torus*(S: handle[Adaptor3d_HSurface]): gp_Torus {.
    importcpp: "Adaptor3d_HSurfaceTool::Torus(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc Sphere*(S: handle[Adaptor3d_HSurface]): gp_Sphere {.
    importcpp: "Adaptor3d_HSurfaceTool::Sphere(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc Bezier*(S: handle[Adaptor3d_HSurface]): handle[Geom_BezierSurface] {.
    importcpp: "Adaptor3d_HSurfaceTool::Bezier(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc BSpline*(S: handle[Adaptor3d_HSurface]): handle[Geom_BSplineSurface] {.
    importcpp: "Adaptor3d_HSurfaceTool::BSpline(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc AxeOfRevolution*(S: handle[Adaptor3d_HSurface]): gp_Ax1 {.
    importcpp: "Adaptor3d_HSurfaceTool::AxeOfRevolution(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc Direction*(S: handle[Adaptor3d_HSurface]): gp_Dir {.
    importcpp: "Adaptor3d_HSurfaceTool::Direction(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc BasisCurve*(S: handle[Adaptor3d_HSurface]): handle[Adaptor3d_HCurve] {.
    importcpp: "Adaptor3d_HSurfaceTool::BasisCurve(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc BasisSurface*(S: handle[Adaptor3d_HSurface]): handle[Adaptor3d_HSurface] {.
    importcpp: "Adaptor3d_HSurfaceTool::BasisSurface(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc OffsetValue*(S: handle[Adaptor3d_HSurface]): Standard_Real {.
    importcpp: "Adaptor3d_HSurfaceTool::OffsetValue(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc NbSamplesU*(S: handle[Adaptor3d_HSurface]): Standard_Integer {.
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesU(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc NbSamplesV*(S: handle[Adaptor3d_HSurface]): Standard_Integer {.
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesV(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc NbSamplesU*(S: handle[Adaptor3d_HSurface]; u1: Standard_Real; u2: Standard_Real): Standard_Integer {.
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesU(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}
proc NbSamplesV*(S: handle[Adaptor3d_HSurface]; v1: Standard_Real; v2: Standard_Real): Standard_Integer {.
    importcpp: "Adaptor3d_HSurfaceTool::NbSamplesV(@)",
    header: "Adaptor3d_HSurfaceTool.hxx".}