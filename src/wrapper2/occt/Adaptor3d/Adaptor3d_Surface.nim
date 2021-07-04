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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_SurfaceType

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
  Adaptor3d_Surface* {.importcpp: "Adaptor3d_Surface",
                      header: "Adaptor3d_Surface.hxx", bycopy.} = object


proc FirstUParameter*(this: Adaptor3d_Surface): Standard_Real {.noSideEffect,
    importcpp: "FirstUParameter", header: "Adaptor3d_Surface.hxx".}
proc LastUParameter*(this: Adaptor3d_Surface): Standard_Real {.noSideEffect,
    importcpp: "LastUParameter", header: "Adaptor3d_Surface.hxx".}
proc FirstVParameter*(this: Adaptor3d_Surface): Standard_Real {.noSideEffect,
    importcpp: "FirstVParameter", header: "Adaptor3d_Surface.hxx".}
proc LastVParameter*(this: Adaptor3d_Surface): Standard_Real {.noSideEffect,
    importcpp: "LastVParameter", header: "Adaptor3d_Surface.hxx".}
proc UContinuity*(this: Adaptor3d_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "UContinuity", header: "Adaptor3d_Surface.hxx".}
proc VContinuity*(this: Adaptor3d_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "VContinuity", header: "Adaptor3d_Surface.hxx".}
proc NbUIntervals*(this: Adaptor3d_Surface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbUIntervals", header: "Adaptor3d_Surface.hxx".}
proc NbVIntervals*(this: Adaptor3d_Surface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbVIntervals", header: "Adaptor3d_Surface.hxx".}
proc UIntervals*(this: Adaptor3d_Surface; T: var TColStd_Array1OfReal;
                S: GeomAbs_Shape) {.noSideEffect, importcpp: "UIntervals",
                                  header: "Adaptor3d_Surface.hxx".}
proc VIntervals*(this: Adaptor3d_Surface; T: var TColStd_Array1OfReal;
                S: GeomAbs_Shape) {.noSideEffect, importcpp: "VIntervals",
                                  header: "Adaptor3d_Surface.hxx".}
proc UTrim*(this: Adaptor3d_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "UTrim", header: "Adaptor3d_Surface.hxx".}
proc VTrim*(this: Adaptor3d_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "VTrim", header: "Adaptor3d_Surface.hxx".}
proc IsUClosed*(this: Adaptor3d_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Adaptor3d_Surface.hxx".}
proc IsVClosed*(this: Adaptor3d_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Adaptor3d_Surface.hxx".}
proc IsUPeriodic*(this: Adaptor3d_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Adaptor3d_Surface.hxx".}
proc UPeriod*(this: Adaptor3d_Surface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "Adaptor3d_Surface.hxx".}
proc IsVPeriodic*(this: Adaptor3d_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Adaptor3d_Surface.hxx".}
proc VPeriod*(this: Adaptor3d_Surface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "Adaptor3d_Surface.hxx".}
proc Value*(this: Adaptor3d_Surface; U: Standard_Real; V: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "Adaptor3d_Surface.hxx".}
proc D0*(this: Adaptor3d_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Adaptor3d_Surface.hxx".}
proc D1*(this: Adaptor3d_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Adaptor3d_Surface.hxx".}
proc D2*(this: Adaptor3d_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Adaptor3d_Surface.hxx".}
proc D3*(this: Adaptor3d_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Adaptor3d_Surface.hxx".}
proc DN*(this: Adaptor3d_Surface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Adaptor3d_Surface.hxx".}
proc UResolution*(this: Adaptor3d_Surface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UResolution", header: "Adaptor3d_Surface.hxx".}
proc VResolution*(this: Adaptor3d_Surface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VResolution", header: "Adaptor3d_Surface.hxx".}
proc GetType*(this: Adaptor3d_Surface): GeomAbs_SurfaceType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_Surface.hxx".}
proc Plane*(this: Adaptor3d_Surface): gp_Pln {.noSideEffect, importcpp: "Plane",
    header: "Adaptor3d_Surface.hxx".}
proc Cylinder*(this: Adaptor3d_Surface): gp_Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "Adaptor3d_Surface.hxx".}
proc Cone*(this: Adaptor3d_Surface): gp_Cone {.noSideEffect, importcpp: "Cone",
    header: "Adaptor3d_Surface.hxx".}
proc Sphere*(this: Adaptor3d_Surface): gp_Sphere {.noSideEffect, importcpp: "Sphere",
    header: "Adaptor3d_Surface.hxx".}
proc Torus*(this: Adaptor3d_Surface): gp_Torus {.noSideEffect, importcpp: "Torus",
    header: "Adaptor3d_Surface.hxx".}
proc UDegree*(this: Adaptor3d_Surface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "Adaptor3d_Surface.hxx".}
proc NbUPoles*(this: Adaptor3d_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbUPoles", header: "Adaptor3d_Surface.hxx".}
proc VDegree*(this: Adaptor3d_Surface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "Adaptor3d_Surface.hxx".}
proc NbVPoles*(this: Adaptor3d_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoles", header: "Adaptor3d_Surface.hxx".}
proc NbUKnots*(this: Adaptor3d_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbUKnots", header: "Adaptor3d_Surface.hxx".}
proc NbVKnots*(this: Adaptor3d_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbVKnots", header: "Adaptor3d_Surface.hxx".}
proc IsURational*(this: Adaptor3d_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsURational", header: "Adaptor3d_Surface.hxx".}
proc IsVRational*(this: Adaptor3d_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVRational", header: "Adaptor3d_Surface.hxx".}
proc Bezier*(this: Adaptor3d_Surface): handle[Geom_BezierSurface] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_Surface.hxx".}
proc BSpline*(this: Adaptor3d_Surface): handle[Geom_BSplineSurface] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_Surface.hxx".}
proc AxeOfRevolution*(this: Adaptor3d_Surface): gp_Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "Adaptor3d_Surface.hxx".}
proc Direction*(this: Adaptor3d_Surface): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "Adaptor3d_Surface.hxx".}
proc BasisCurve*(this: Adaptor3d_Surface): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Adaptor3d_Surface.hxx".}
proc BasisSurface*(this: Adaptor3d_Surface): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "Adaptor3d_Surface.hxx".}
proc OffsetValue*(this: Adaptor3d_Surface): Standard_Real {.noSideEffect,
    importcpp: "OffsetValue", header: "Adaptor3d_Surface.hxx".}
proc destroyAdaptor3d_Surface*(this: var Adaptor3d_Surface) {.
    importcpp: "#.~Adaptor3d_Surface()", header: "Adaptor3d_Surface.hxx".}