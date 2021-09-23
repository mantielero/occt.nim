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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../GeomAbs/GeomAbs_SurfaceType, ../gp/gp_Pln, ../gp/gp_Cylinder,
  ../gp/gp_Cone, ../gp/gp_Torus, ../gp/gp_Sphere, ../gp/gp_Ax1, ../gp/gp_Dir

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
  BRepApprox_SurfaceTool* {.importcpp: "BRepApprox_SurfaceTool",
                           header: "BRepApprox_SurfaceTool.hxx", bycopy.} = object


proc FirstUParameter*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "BRepApprox_SurfaceTool::FirstUParameter(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc FirstVParameter*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "BRepApprox_SurfaceTool::FirstVParameter(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc LastUParameter*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "BRepApprox_SurfaceTool::LastUParameter(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc LastVParameter*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "BRepApprox_SurfaceTool::LastVParameter(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc NbUIntervals*(S: BRepAdaptor_Surface; Sh: GeomAbs_Shape): Standard_Integer {.
    importcpp: "BRepApprox_SurfaceTool::NbUIntervals(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc NbVIntervals*(S: BRepAdaptor_Surface; Sh: GeomAbs_Shape): Standard_Integer {.
    importcpp: "BRepApprox_SurfaceTool::NbVIntervals(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc UIntervals*(S: BRepAdaptor_Surface; T: var TColStd_Array1OfReal;
                Sh: GeomAbs_Shape) {.importcpp: "BRepApprox_SurfaceTool::UIntervals(@)",
                                   header: "BRepApprox_SurfaceTool.hxx".}
proc VIntervals*(S: BRepAdaptor_Surface; T: var TColStd_Array1OfReal;
                Sh: GeomAbs_Shape) {.importcpp: "BRepApprox_SurfaceTool::VIntervals(@)",
                                   header: "BRepApprox_SurfaceTool.hxx".}
proc UTrim*(S: BRepAdaptor_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    importcpp: "BRepApprox_SurfaceTool::UTrim(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc VTrim*(S: BRepAdaptor_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    importcpp: "BRepApprox_SurfaceTool::VTrim(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc IsUClosed*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "BRepApprox_SurfaceTool::IsUClosed(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc IsVClosed*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "BRepApprox_SurfaceTool::IsVClosed(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc IsUPeriodic*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "BRepApprox_SurfaceTool::IsUPeriodic(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc UPeriod*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "BRepApprox_SurfaceTool::UPeriod(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc IsVPeriodic*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "BRepApprox_SurfaceTool::IsVPeriodic(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc VPeriod*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "BRepApprox_SurfaceTool::VPeriod(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc Value*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real): gp_Pnt {.
    importcpp: "BRepApprox_SurfaceTool::Value(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc D0*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real; P: var gp_Pnt) {.
    importcpp: "BRepApprox_SurfaceTool::D0(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc D1*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1u: var gp_Vec; D1v: var gp_Vec) {.importcpp: "BRepApprox_SurfaceTool::D1(@)",
                                      header: "BRepApprox_SurfaceTool.hxx".}
proc D2*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    importcpp: "BRepApprox_SurfaceTool::D2(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc D3*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.importcpp: "BRepApprox_SurfaceTool::D3(@)",
                          header: "BRepApprox_SurfaceTool.hxx".}
proc DN*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.
    importcpp: "BRepApprox_SurfaceTool::DN(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc UResolution*(S: BRepAdaptor_Surface; R3d: Standard_Real): Standard_Real {.
    importcpp: "BRepApprox_SurfaceTool::UResolution(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc VResolution*(S: BRepAdaptor_Surface; R3d: Standard_Real): Standard_Real {.
    importcpp: "BRepApprox_SurfaceTool::VResolution(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc GetType*(S: BRepAdaptor_Surface): GeomAbs_SurfaceType {.
    importcpp: "BRepApprox_SurfaceTool::GetType(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc Plane*(S: BRepAdaptor_Surface): gp_Pln {.
    importcpp: "BRepApprox_SurfaceTool::Plane(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc Cylinder*(S: BRepAdaptor_Surface): gp_Cylinder {.
    importcpp: "BRepApprox_SurfaceTool::Cylinder(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc Cone*(S: BRepAdaptor_Surface): gp_Cone {.
    importcpp: "BRepApprox_SurfaceTool::Cone(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc Torus*(S: BRepAdaptor_Surface): gp_Torus {.
    importcpp: "BRepApprox_SurfaceTool::Torus(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc Sphere*(S: BRepAdaptor_Surface): gp_Sphere {.
    importcpp: "BRepApprox_SurfaceTool::Sphere(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc Bezier*(S: BRepAdaptor_Surface): handle[Geom_BezierSurface] {.
    importcpp: "BRepApprox_SurfaceTool::Bezier(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc BSpline*(S: BRepAdaptor_Surface): handle[Geom_BSplineSurface] {.
    importcpp: "BRepApprox_SurfaceTool::BSpline(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc AxeOfRevolution*(S: BRepAdaptor_Surface): gp_Ax1 {.
    importcpp: "BRepApprox_SurfaceTool::AxeOfRevolution(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc Direction*(S: BRepAdaptor_Surface): gp_Dir {.
    importcpp: "BRepApprox_SurfaceTool::Direction(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc BasisCurve*(S: BRepAdaptor_Surface): handle[Adaptor3d_HCurve] {.
    importcpp: "BRepApprox_SurfaceTool::BasisCurve(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc NbSamplesU*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "BRepApprox_SurfaceTool::NbSamplesU(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc NbSamplesV*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "BRepApprox_SurfaceTool::NbSamplesV(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc NbSamplesU*(S: BRepAdaptor_Surface; u1: Standard_Real; u2: Standard_Real): Standard_Integer {.
    importcpp: "BRepApprox_SurfaceTool::NbSamplesU(@)",
    header: "BRepApprox_SurfaceTool.hxx".}
proc NbSamplesV*(S: BRepAdaptor_Surface; v1: Standard_Real; v2: Standard_Real): Standard_Integer {.
    importcpp: "BRepApprox_SurfaceTool::NbSamplesV(@)",
    header: "BRepApprox_SurfaceTool.hxx".}