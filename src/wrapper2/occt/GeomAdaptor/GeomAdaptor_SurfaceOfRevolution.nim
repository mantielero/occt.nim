##  Created on: 1993-04-21
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
  ../Standard/Standard_Handle, ../gp/gp_Ax1, ../gp/gp_Ax3, GeomAdaptor_Surface

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax1"
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
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Dir"
type
  GeomAdaptor_SurfaceOfRevolution* {.importcpp: "GeomAdaptor_SurfaceOfRevolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx",
                                    bycopy.} = object of GeomAdaptor_Surface
    ## /< revolved curve
    ## /< axis of revolution
    ## /< whether axis of revolution is initialized
    ## /< auxiliary trihedron according to the curve position


proc constructGeomAdaptor_SurfaceOfRevolution*(): GeomAdaptor_SurfaceOfRevolution {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc constructGeomAdaptor_SurfaceOfRevolution*(C: handle[Adaptor3d_HCurve]): GeomAdaptor_SurfaceOfRevolution {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc constructGeomAdaptor_SurfaceOfRevolution*(C: handle[Adaptor3d_HCurve];
    V: gp_Ax1): GeomAdaptor_SurfaceOfRevolution {.constructor,
    importcpp: "GeomAdaptor_SurfaceOfRevolution(@)",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Load*(this: var GeomAdaptor_SurfaceOfRevolution; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "Load", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Load*(this: var GeomAdaptor_SurfaceOfRevolution; V: gp_Ax1) {.importcpp: "Load",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc AxeOfRevolution*(this: GeomAdaptor_SurfaceOfRevolution): gp_Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc FirstUParameter*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Real {.
    noSideEffect, importcpp: "FirstUParameter",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc LastUParameter*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Real {.
    noSideEffect, importcpp: "LastUParameter",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc FirstVParameter*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Real {.
    noSideEffect, importcpp: "FirstVParameter",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc LastVParameter*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Real {.
    noSideEffect, importcpp: "LastVParameter",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc UContinuity*(this: GeomAdaptor_SurfaceOfRevolution): GeomAbs_Shape {.
    noSideEffect, importcpp: "UContinuity",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc VContinuity*(this: GeomAdaptor_SurfaceOfRevolution): GeomAbs_Shape {.
    noSideEffect, importcpp: "VContinuity",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc NbUIntervals*(this: GeomAdaptor_SurfaceOfRevolution; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbUIntervals",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc NbVIntervals*(this: GeomAdaptor_SurfaceOfRevolution; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbVIntervals",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc UIntervals*(this: GeomAdaptor_SurfaceOfRevolution;
                T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.noSideEffect,
    importcpp: "UIntervals", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc VIntervals*(this: GeomAdaptor_SurfaceOfRevolution;
                T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.noSideEffect,
    importcpp: "VIntervals", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc UTrim*(this: GeomAdaptor_SurfaceOfRevolution; First: Standard_Real;
           Last: Standard_Real; Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "UTrim", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc VTrim*(this: GeomAdaptor_SurfaceOfRevolution; First: Standard_Real;
           Last: Standard_Real; Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "VTrim", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc IsUClosed*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Boolean {.
    noSideEffect, importcpp: "IsUClosed",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc IsVClosed*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Boolean {.
    noSideEffect, importcpp: "IsVClosed",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc IsUPeriodic*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Boolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc UPeriod*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc IsVPeriodic*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Boolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc VPeriod*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc UResolution*(this: GeomAdaptor_SurfaceOfRevolution; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UResolution",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc VResolution*(this: GeomAdaptor_SurfaceOfRevolution; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VResolution",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc GetType*(this: GeomAdaptor_SurfaceOfRevolution): GeomAbs_SurfaceType {.
    noSideEffect, importcpp: "GetType",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Plane*(this: GeomAdaptor_SurfaceOfRevolution): gp_Pln {.noSideEffect,
    importcpp: "Plane", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Cylinder*(this: GeomAdaptor_SurfaceOfRevolution): gp_Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Cone*(this: GeomAdaptor_SurfaceOfRevolution): gp_Cone {.noSideEffect,
    importcpp: "Cone", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Sphere*(this: GeomAdaptor_SurfaceOfRevolution): gp_Sphere {.noSideEffect,
    importcpp: "Sphere", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Torus*(this: GeomAdaptor_SurfaceOfRevolution): gp_Torus {.noSideEffect,
    importcpp: "Torus", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc VDegree*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Integer {.
    noSideEffect, importcpp: "VDegree",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc NbVPoles*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Integer {.
    noSideEffect, importcpp: "NbVPoles",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc NbVKnots*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Integer {.
    noSideEffect, importcpp: "NbVKnots",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc IsURational*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Boolean {.
    noSideEffect, importcpp: "IsURational",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc IsVRational*(this: GeomAdaptor_SurfaceOfRevolution): Standard_Boolean {.
    noSideEffect, importcpp: "IsVRational",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Bezier*(this: GeomAdaptor_SurfaceOfRevolution): handle[Geom_BezierSurface] {.
    noSideEffect, importcpp: "Bezier",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc BSpline*(this: GeomAdaptor_SurfaceOfRevolution): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "BSpline",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc Axis*(this: GeomAdaptor_SurfaceOfRevolution): gp_Ax3 {.noSideEffect,
    importcpp: "Axis", header: "GeomAdaptor_SurfaceOfRevolution.hxx".}
proc BasisCurve*(this: GeomAdaptor_SurfaceOfRevolution): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "BasisCurve",
    header: "GeomAdaptor_SurfaceOfRevolution.hxx".}