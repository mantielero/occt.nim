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
  ../Standard/Standard_Handle, ../gp/gp_Dir, GeomAdaptor_Surface

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Dir"
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
type
  GeomAdaptor_SurfaceOfLinearExtrusion* {.
      importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion",
      header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx", bycopy.} = object of GeomAdaptor_Surface
    ## /< extruded curve
    ## /< direction of extrusion
    ## /< whether the direction of extrusion is initialized


proc constructGeomAdaptor_SurfaceOfLinearExtrusion*(): GeomAdaptor_SurfaceOfLinearExtrusion {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc constructGeomAdaptor_SurfaceOfLinearExtrusion*(C: handle[Adaptor3d_HCurve]): GeomAdaptor_SurfaceOfLinearExtrusion {.
    constructor, importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc constructGeomAdaptor_SurfaceOfLinearExtrusion*(C: handle[Adaptor3d_HCurve];
    V: gp_Dir): GeomAdaptor_SurfaceOfLinearExtrusion {.constructor,
    importcpp: "GeomAdaptor_SurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Load*(this: var GeomAdaptor_SurfaceOfLinearExtrusion;
          C: handle[Adaptor3d_HCurve]) {.importcpp: "Load", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Load*(this: var GeomAdaptor_SurfaceOfLinearExtrusion; V: gp_Dir) {.
    importcpp: "Load", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc FirstUParameter*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Real {.
    noSideEffect, importcpp: "FirstUParameter",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc LastUParameter*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Real {.
    noSideEffect, importcpp: "LastUParameter",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc FirstVParameter*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Real {.
    noSideEffect, importcpp: "FirstVParameter",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc LastVParameter*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Real {.
    noSideEffect, importcpp: "LastVParameter",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc UContinuity*(this: GeomAdaptor_SurfaceOfLinearExtrusion): GeomAbs_Shape {.
    noSideEffect, importcpp: "UContinuity",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc VContinuity*(this: GeomAdaptor_SurfaceOfLinearExtrusion): GeomAbs_Shape {.
    noSideEffect, importcpp: "VContinuity",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc NbUIntervals*(this: GeomAdaptor_SurfaceOfLinearExtrusion; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbUIntervals",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc NbVIntervals*(this: GeomAdaptor_SurfaceOfLinearExtrusion; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbVIntervals",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc UIntervals*(this: GeomAdaptor_SurfaceOfLinearExtrusion;
                T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.noSideEffect,
    importcpp: "UIntervals", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc VIntervals*(this: GeomAdaptor_SurfaceOfLinearExtrusion;
                T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.noSideEffect,
    importcpp: "VIntervals", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc UTrim*(this: GeomAdaptor_SurfaceOfLinearExtrusion; First: Standard_Real;
           Last: Standard_Real; Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "UTrim",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc VTrim*(this: GeomAdaptor_SurfaceOfLinearExtrusion; First: Standard_Real;
           Last: Standard_Real; Tol: Standard_Real): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "VTrim",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc IsUClosed*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsUClosed",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc IsVClosed*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsVClosed",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc IsUPeriodic*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc UPeriod*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Real {.
    noSideEffect, importcpp: "UPeriod",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc IsVPeriodic*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc VPeriod*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Real {.
    noSideEffect, importcpp: "VPeriod",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc UResolution*(this: GeomAdaptor_SurfaceOfLinearExtrusion; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UResolution",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc VResolution*(this: GeomAdaptor_SurfaceOfLinearExtrusion; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VResolution",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc GetType*(this: GeomAdaptor_SurfaceOfLinearExtrusion): GeomAbs_SurfaceType {.
    noSideEffect, importcpp: "GetType",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Plane*(this: GeomAdaptor_SurfaceOfLinearExtrusion): gp_Pln {.noSideEffect,
    importcpp: "Plane", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Cylinder*(this: GeomAdaptor_SurfaceOfLinearExtrusion): gp_Cylinder {.
    noSideEffect, importcpp: "Cylinder",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Cone*(this: GeomAdaptor_SurfaceOfLinearExtrusion): gp_Cone {.noSideEffect,
    importcpp: "Cone", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Sphere*(this: GeomAdaptor_SurfaceOfLinearExtrusion): gp_Sphere {.noSideEffect,
    importcpp: "Sphere", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Torus*(this: GeomAdaptor_SurfaceOfLinearExtrusion): gp_Torus {.noSideEffect,
    importcpp: "Torus", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc UDegree*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Integer {.
    noSideEffect, importcpp: "UDegree",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc NbUPoles*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Integer {.
    noSideEffect, importcpp: "NbUPoles",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc IsURational*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsURational",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc IsVRational*(this: GeomAdaptor_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsVRational",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Bezier*(this: GeomAdaptor_SurfaceOfLinearExtrusion): handle[Geom_BezierSurface] {.
    noSideEffect, importcpp: "Bezier",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc BSpline*(this: GeomAdaptor_SurfaceOfLinearExtrusion): handle[
    Geom_BSplineSurface] {.noSideEffect, importcpp: "BSpline",
                          header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc AxeOfRevolution*(this: GeomAdaptor_SurfaceOfLinearExtrusion): gp_Ax1 {.
    noSideEffect, importcpp: "AxeOfRevolution",
    header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc Direction*(this: GeomAdaptor_SurfaceOfLinearExtrusion): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}
proc BasisCurve*(this: GeomAdaptor_SurfaceOfLinearExtrusion): handle[
    Adaptor3d_HCurve] {.noSideEffect, importcpp: "BasisCurve",
                       header: "GeomAdaptor_SurfaceOfLinearExtrusion.hxx".}