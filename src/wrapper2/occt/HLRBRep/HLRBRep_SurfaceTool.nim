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
  ../Standard/Standard_Address, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../gp/gp_Pnt, ../gp/gp_Vec,
  ../GeomAbs/GeomAbs_SurfaceType, ../gp/gp_Pln, ../gp/gp_Cylinder, ../gp/gp_Cone,
  ../gp/gp_Torus, ../gp/gp_Sphere, ../gp/gp_Ax1, ../gp/gp_Dir

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
type
  HLRBRep_SurfaceTool* {.importcpp: "HLRBRep_SurfaceTool",
                        header: "HLRBRep_SurfaceTool.hxx", bycopy.} = object


proc FirstUParameter*(S: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::FirstUParameter(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc FirstVParameter*(S: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::FirstVParameter(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc LastUParameter*(S: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::LastUParameter(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc LastVParameter*(S: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::LastVParameter(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc NbUIntervals*(S: Standard_Address; Sh: GeomAbs_Shape): Standard_Integer {.
    importcpp: "HLRBRep_SurfaceTool::NbUIntervals(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc NbVIntervals*(S: Standard_Address; Sh: GeomAbs_Shape): Standard_Integer {.
    importcpp: "HLRBRep_SurfaceTool::NbVIntervals(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc UIntervals*(S: Standard_Address; T: var TColStd_Array1OfReal; Sh: GeomAbs_Shape) {.
    importcpp: "HLRBRep_SurfaceTool::UIntervals(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc VIntervals*(S: Standard_Address; T: var TColStd_Array1OfReal; Sh: GeomAbs_Shape) {.
    importcpp: "HLRBRep_SurfaceTool::VIntervals(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc UTrim*(S: Standard_Address; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    importcpp: "HLRBRep_SurfaceTool::UTrim(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc VTrim*(S: Standard_Address; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    importcpp: "HLRBRep_SurfaceTool::VTrim(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc IsUClosed*(S: Standard_Address): Standard_Boolean {.
    importcpp: "HLRBRep_SurfaceTool::IsUClosed(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc IsVClosed*(S: Standard_Address): Standard_Boolean {.
    importcpp: "HLRBRep_SurfaceTool::IsVClosed(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc IsUPeriodic*(S: Standard_Address): Standard_Boolean {.
    importcpp: "HLRBRep_SurfaceTool::IsUPeriodic(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc UPeriod*(S: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::UPeriod(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc IsVPeriodic*(S: Standard_Address): Standard_Boolean {.
    importcpp: "HLRBRep_SurfaceTool::IsVPeriodic(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc VPeriod*(S: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::VPeriod(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc Value*(S: Standard_Address; u: Standard_Real; v: Standard_Real): gp_Pnt {.
    importcpp: "HLRBRep_SurfaceTool::Value(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc D0*(S: Standard_Address; u: Standard_Real; v: Standard_Real; P: var gp_Pnt) {.
    importcpp: "HLRBRep_SurfaceTool::D0(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc D1*(S: Standard_Address; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1u: var gp_Vec; D1v: var gp_Vec) {.importcpp: "HLRBRep_SurfaceTool::D1(@)",
                                      header: "HLRBRep_SurfaceTool.hxx".}
proc D2*(S: Standard_Address; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    importcpp: "HLRBRep_SurfaceTool::D2(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc D3*(S: Standard_Address; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.importcpp: "HLRBRep_SurfaceTool::D3(@)",
                          header: "HLRBRep_SurfaceTool.hxx".}
proc DN*(S: Standard_Address; u: Standard_Real; v: Standard_Real; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.importcpp: "HLRBRep_SurfaceTool::DN(@)",
                                     header: "HLRBRep_SurfaceTool.hxx".}
proc UResolution*(S: Standard_Address; R3d: Standard_Real): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::UResolution(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc VResolution*(S: Standard_Address; R3d: Standard_Real): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::VResolution(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc GetType*(S: Standard_Address): GeomAbs_SurfaceType {.
    importcpp: "HLRBRep_SurfaceTool::GetType(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc Plane*(S: Standard_Address): gp_Pln {.importcpp: "HLRBRep_SurfaceTool::Plane(@)",
                                       header: "HLRBRep_SurfaceTool.hxx".}
proc Cylinder*(S: Standard_Address): gp_Cylinder {.
    importcpp: "HLRBRep_SurfaceTool::Cylinder(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc Cone*(S: Standard_Address): gp_Cone {.importcpp: "HLRBRep_SurfaceTool::Cone(@)",
                                       header: "HLRBRep_SurfaceTool.hxx".}
proc Torus*(S: Standard_Address): gp_Torus {.
    importcpp: "HLRBRep_SurfaceTool::Torus(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc Sphere*(S: Standard_Address): gp_Sphere {.
    importcpp: "HLRBRep_SurfaceTool::Sphere(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc Bezier*(S: Standard_Address): handle[Geom_BezierSurface] {.
    importcpp: "HLRBRep_SurfaceTool::Bezier(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc BSpline*(S: Standard_Address): handle[Geom_BSplineSurface] {.
    importcpp: "HLRBRep_SurfaceTool::BSpline(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc AxeOfRevolution*(S: Standard_Address): gp_Ax1 {.
    importcpp: "HLRBRep_SurfaceTool::AxeOfRevolution(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc Direction*(S: Standard_Address): gp_Dir {.
    importcpp: "HLRBRep_SurfaceTool::Direction(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc BasisCurve*(S: Standard_Address): handle[Adaptor3d_HCurve] {.
    importcpp: "HLRBRep_SurfaceTool::BasisCurve(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc BasisSurface*(S: Standard_Address): handle[Adaptor3d_HSurface] {.
    importcpp: "HLRBRep_SurfaceTool::BasisSurface(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc OffsetValue*(S: Standard_Address): Standard_Real {.
    importcpp: "HLRBRep_SurfaceTool::OffsetValue(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc NbSamplesU*(S: Standard_Address): Standard_Integer {.
    importcpp: "HLRBRep_SurfaceTool::NbSamplesU(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc NbSamplesV*(S: Standard_Address): Standard_Integer {.
    importcpp: "HLRBRep_SurfaceTool::NbSamplesV(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc NbSamplesU*(S: Standard_Address; u1: Standard_Real; u2: Standard_Real): Standard_Integer {.
    importcpp: "HLRBRep_SurfaceTool::NbSamplesU(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc NbSamplesV*(S: Standard_Address; v1: Standard_Real; v2: Standard_Real): Standard_Integer {.
    importcpp: "HLRBRep_SurfaceTool::NbSamplesV(@)",
    header: "HLRBRep_SurfaceTool.hxx".}