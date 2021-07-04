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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_SurfaceType,
  ../Standard/Standard_Real, ../BSplSLib/BSplSLib_Cache,
  ../Adaptor3d/Adaptor3d_Surface, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../GeomEvaluator/GeomEvaluator_Surface

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
  GeomAdaptor_Surface* {.importcpp: "GeomAdaptor_Surface",
                        header: "GeomAdaptor_Surface.hxx", bycopy.} = object of Adaptor3d_Surface
    ## /< B-spline representation to prevent downcasts
    ## /< Cached data for B-spline or Bezier surface
    ## /< Calculates values of nested complex surfaces (offset surface, surface of extrusion or revolution)


proc constructGeomAdaptor_Surface*(): GeomAdaptor_Surface {.constructor,
    importcpp: "GeomAdaptor_Surface(@)", header: "GeomAdaptor_Surface.hxx".}
proc constructGeomAdaptor_Surface*(S: handle[Geom_Surface]): GeomAdaptor_Surface {.
    constructor, importcpp: "GeomAdaptor_Surface(@)",
    header: "GeomAdaptor_Surface.hxx".}
proc constructGeomAdaptor_Surface*(S: handle[Geom_Surface]; UFirst: Standard_Real;
                                  ULast: Standard_Real; VFirst: Standard_Real;
                                  VLast: Standard_Real; TolU: Standard_Real = 0.0;
                                  TolV: Standard_Real = 0.0): GeomAdaptor_Surface {.
    constructor, importcpp: "GeomAdaptor_Surface(@)",
    header: "GeomAdaptor_Surface.hxx".}
proc Load*(this: var GeomAdaptor_Surface; S: handle[Geom_Surface]) {.
    importcpp: "Load", header: "GeomAdaptor_Surface.hxx".}
proc Load*(this: var GeomAdaptor_Surface; S: handle[Geom_Surface];
          UFirst: Standard_Real; ULast: Standard_Real; VFirst: Standard_Real;
          VLast: Standard_Real; TolU: Standard_Real = 0.0; TolV: Standard_Real = 0.0) {.
    importcpp: "Load", header: "GeomAdaptor_Surface.hxx".}
proc Surface*(this: GeomAdaptor_Surface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "GeomAdaptor_Surface.hxx".}
proc FirstUParameter*(this: GeomAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "FirstUParameter", header: "GeomAdaptor_Surface.hxx".}
proc LastUParameter*(this: GeomAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "LastUParameter", header: "GeomAdaptor_Surface.hxx".}
proc FirstVParameter*(this: GeomAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "FirstVParameter", header: "GeomAdaptor_Surface.hxx".}
proc LastVParameter*(this: GeomAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "LastVParameter", header: "GeomAdaptor_Surface.hxx".}
proc UContinuity*(this: GeomAdaptor_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "UContinuity", header: "GeomAdaptor_Surface.hxx".}
proc VContinuity*(this: GeomAdaptor_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "VContinuity", header: "GeomAdaptor_Surface.hxx".}
proc NbUIntervals*(this: GeomAdaptor_Surface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbUIntervals", header: "GeomAdaptor_Surface.hxx".}
proc NbVIntervals*(this: GeomAdaptor_Surface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbVIntervals", header: "GeomAdaptor_Surface.hxx".}
proc UIntervals*(this: GeomAdaptor_Surface; T: var TColStd_Array1OfReal;
                S: GeomAbs_Shape) {.noSideEffect, importcpp: "UIntervals",
                                  header: "GeomAdaptor_Surface.hxx".}
proc VIntervals*(this: GeomAdaptor_Surface; T: var TColStd_Array1OfReal;
                S: GeomAbs_Shape) {.noSideEffect, importcpp: "VIntervals",
                                  header: "GeomAdaptor_Surface.hxx".}
proc UTrim*(this: GeomAdaptor_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "UTrim", header: "GeomAdaptor_Surface.hxx".}
proc VTrim*(this: GeomAdaptor_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "VTrim", header: "GeomAdaptor_Surface.hxx".}
proc IsUClosed*(this: GeomAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "GeomAdaptor_Surface.hxx".}
proc IsVClosed*(this: GeomAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "GeomAdaptor_Surface.hxx".}
proc IsUPeriodic*(this: GeomAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomAdaptor_Surface.hxx".}
proc UPeriod*(this: GeomAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "GeomAdaptor_Surface.hxx".}
proc IsVPeriodic*(this: GeomAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomAdaptor_Surface.hxx".}
proc VPeriod*(this: GeomAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "GeomAdaptor_Surface.hxx".}
proc Value*(this: GeomAdaptor_Surface; U: Standard_Real; V: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "GeomAdaptor_Surface.hxx".}
proc D0*(this: GeomAdaptor_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "GeomAdaptor_Surface.hxx".}
proc D1*(this: GeomAdaptor_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "GeomAdaptor_Surface.hxx".}
proc D2*(this: GeomAdaptor_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "GeomAdaptor_Surface.hxx".}
proc D3*(this: GeomAdaptor_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "GeomAdaptor_Surface.hxx".}
proc DN*(this: GeomAdaptor_Surface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "GeomAdaptor_Surface.hxx".}
proc UResolution*(this: GeomAdaptor_Surface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UResolution", header: "GeomAdaptor_Surface.hxx".}
proc VResolution*(this: GeomAdaptor_Surface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VResolution", header: "GeomAdaptor_Surface.hxx".}
proc GetType*(this: GeomAdaptor_Surface): GeomAbs_SurfaceType {.noSideEffect,
    importcpp: "GetType", header: "GeomAdaptor_Surface.hxx".}
proc Plane*(this: GeomAdaptor_Surface): gp_Pln {.noSideEffect, importcpp: "Plane",
    header: "GeomAdaptor_Surface.hxx".}
proc Cylinder*(this: GeomAdaptor_Surface): gp_Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "GeomAdaptor_Surface.hxx".}
proc Cone*(this: GeomAdaptor_Surface): gp_Cone {.noSideEffect, importcpp: "Cone",
    header: "GeomAdaptor_Surface.hxx".}
proc Sphere*(this: GeomAdaptor_Surface): gp_Sphere {.noSideEffect,
    importcpp: "Sphere", header: "GeomAdaptor_Surface.hxx".}
proc Torus*(this: GeomAdaptor_Surface): gp_Torus {.noSideEffect, importcpp: "Torus",
    header: "GeomAdaptor_Surface.hxx".}
proc UDegree*(this: GeomAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "GeomAdaptor_Surface.hxx".}
proc NbUPoles*(this: GeomAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbUPoles", header: "GeomAdaptor_Surface.hxx".}
proc VDegree*(this: GeomAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "GeomAdaptor_Surface.hxx".}
proc NbVPoles*(this: GeomAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoles", header: "GeomAdaptor_Surface.hxx".}
proc NbUKnots*(this: GeomAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbUKnots", header: "GeomAdaptor_Surface.hxx".}
proc NbVKnots*(this: GeomAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbVKnots", header: "GeomAdaptor_Surface.hxx".}
proc IsURational*(this: GeomAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsURational", header: "GeomAdaptor_Surface.hxx".}
proc IsVRational*(this: GeomAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVRational", header: "GeomAdaptor_Surface.hxx".}
proc Bezier*(this: GeomAdaptor_Surface): handle[Geom_BezierSurface] {.noSideEffect,
    importcpp: "Bezier", header: "GeomAdaptor_Surface.hxx".}
proc BSpline*(this: GeomAdaptor_Surface): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "BSpline", header: "GeomAdaptor_Surface.hxx".}
proc AxeOfRevolution*(this: GeomAdaptor_Surface): gp_Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "GeomAdaptor_Surface.hxx".}
proc Direction*(this: GeomAdaptor_Surface): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "GeomAdaptor_Surface.hxx".}
proc BasisCurve*(this: GeomAdaptor_Surface): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "BasisCurve", header: "GeomAdaptor_Surface.hxx".}
proc BasisSurface*(this: GeomAdaptor_Surface): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "GeomAdaptor_Surface.hxx".}
proc OffsetValue*(this: GeomAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "OffsetValue", header: "GeomAdaptor_Surface.hxx".}