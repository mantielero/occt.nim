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
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
type
  HLRBRep_BSurfaceTool* {.importcpp: "HLRBRep_BSurfaceTool",
                         header: "HLRBRep_BSurfaceTool.hxx", bycopy.} = object


proc FirstUParameter*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "HLRBRep_BSurfaceTool::FirstUParameter(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc FirstVParameter*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "HLRBRep_BSurfaceTool::FirstVParameter(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc LastUParameter*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "HLRBRep_BSurfaceTool::LastUParameter(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc LastVParameter*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "HLRBRep_BSurfaceTool::LastVParameter(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbUIntervals*(S: BRepAdaptor_Surface; Sh: GeomAbs_Shape): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbUIntervals(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbVIntervals*(S: BRepAdaptor_Surface; Sh: GeomAbs_Shape): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbVIntervals(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc UIntervals*(S: BRepAdaptor_Surface; T: var TColStd_Array1OfReal;
                Sh: GeomAbs_Shape) {.importcpp: "HLRBRep_BSurfaceTool::UIntervals(@)",
                                   header: "HLRBRep_BSurfaceTool.hxx".}
proc VIntervals*(S: BRepAdaptor_Surface; T: var TColStd_Array1OfReal;
                Sh: GeomAbs_Shape) {.importcpp: "HLRBRep_BSurfaceTool::VIntervals(@)",
                                   header: "HLRBRep_BSurfaceTool.hxx".}
proc UTrim*(S: BRepAdaptor_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    importcpp: "HLRBRep_BSurfaceTool::UTrim(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc VTrim*(S: BRepAdaptor_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    importcpp: "HLRBRep_BSurfaceTool::VTrim(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc IsUClosed*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsUClosed(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc IsVClosed*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsVClosed(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc IsUPeriodic*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsUPeriodic(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc UPeriod*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "HLRBRep_BSurfaceTool::UPeriod(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc IsVPeriodic*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsVPeriodic(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc VPeriod*(S: BRepAdaptor_Surface): Standard_Real {.
    importcpp: "HLRBRep_BSurfaceTool::VPeriod(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc Value*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real): gp_Pnt {.
    importcpp: "HLRBRep_BSurfaceTool::Value(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc D0*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real; P: var gp_Pnt) {.
    importcpp: "HLRBRep_BSurfaceTool::D0(@)", header: "HLRBRep_BSurfaceTool.hxx".}
proc D1*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1u: var gp_Vec; D1v: var gp_Vec) {.importcpp: "HLRBRep_BSurfaceTool::D1(@)",
                                      header: "HLRBRep_BSurfaceTool.hxx".}
proc D2*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    importcpp: "HLRBRep_BSurfaceTool::D2(@)", header: "HLRBRep_BSurfaceTool.hxx".}
proc D3*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.importcpp: "HLRBRep_BSurfaceTool::D3(@)",
                          header: "HLRBRep_BSurfaceTool.hxx".}
proc DN*(S: BRepAdaptor_Surface; u: Standard_Real; v: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.
    importcpp: "HLRBRep_BSurfaceTool::DN(@)", header: "HLRBRep_BSurfaceTool.hxx".}
proc UContinuity*(S: BRepAdaptor_Surface): GeomAbs_Shape {.
    importcpp: "HLRBRep_BSurfaceTool::UContinuity(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc VContinuity*(S: BRepAdaptor_Surface): GeomAbs_Shape {.
    importcpp: "HLRBRep_BSurfaceTool::VContinuity(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc UDegree*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::UDegree(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbUPoles*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbUPoles(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbUKnots*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbUKnots(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc IsURational*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsURational(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc VDegree*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::VDegree(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbVPoles*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbVPoles(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbVKnots*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbVKnots(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc IsVRational*(S: BRepAdaptor_Surface): Standard_Boolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsVRational(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc UResolution*(S: BRepAdaptor_Surface; R3d: Standard_Real): Standard_Real {.
    importcpp: "HLRBRep_BSurfaceTool::UResolution(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc VResolution*(S: BRepAdaptor_Surface; R3d: Standard_Real): Standard_Real {.
    importcpp: "HLRBRep_BSurfaceTool::VResolution(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc GetType*(S: BRepAdaptor_Surface): GeomAbs_SurfaceType {.
    importcpp: "HLRBRep_BSurfaceTool::GetType(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc Plane*(S: BRepAdaptor_Surface): gp_Pln {.
    importcpp: "HLRBRep_BSurfaceTool::Plane(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc Cylinder*(S: BRepAdaptor_Surface): gp_Cylinder {.
    importcpp: "HLRBRep_BSurfaceTool::Cylinder(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc Cone*(S: BRepAdaptor_Surface): gp_Cone {.
    importcpp: "HLRBRep_BSurfaceTool::Cone(@)", header: "HLRBRep_BSurfaceTool.hxx".}
proc Torus*(S: BRepAdaptor_Surface): gp_Torus {.
    importcpp: "HLRBRep_BSurfaceTool::Torus(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc Sphere*(S: BRepAdaptor_Surface): gp_Sphere {.
    importcpp: "HLRBRep_BSurfaceTool::Sphere(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc Bezier*(S: BRepAdaptor_Surface): handle[Geom_BezierSurface] {.
    importcpp: "HLRBRep_BSurfaceTool::Bezier(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc BSpline*(S: BRepAdaptor_Surface): handle[Geom_BSplineSurface] {.
    importcpp: "HLRBRep_BSurfaceTool::BSpline(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc AxeOfRevolution*(S: BRepAdaptor_Surface): gp_Ax1 {.
    importcpp: "HLRBRep_BSurfaceTool::AxeOfRevolution(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc Direction*(S: BRepAdaptor_Surface): gp_Dir {.
    importcpp: "HLRBRep_BSurfaceTool::Direction(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc BasisCurve*(S: BRepAdaptor_Surface): handle[Adaptor3d_HCurve] {.
    importcpp: "HLRBRep_BSurfaceTool::BasisCurve(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc Axis*(S: BRepAdaptor_Surface): gp_Ax1 {.
    importcpp: "HLRBRep_BSurfaceTool::Axis(@)", header: "HLRBRep_BSurfaceTool.hxx".}
proc NbSamplesU*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbSamplesU(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbSamplesV*(S: BRepAdaptor_Surface): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbSamplesV(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbSamplesU*(S: BRepAdaptor_Surface; u1: Standard_Real; u2: Standard_Real): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbSamplesU(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc NbSamplesV*(S: BRepAdaptor_Surface; v1: Standard_Real; v2: Standard_Real): Standard_Integer {.
    importcpp: "HLRBRep_BSurfaceTool::NbSamplesV(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}