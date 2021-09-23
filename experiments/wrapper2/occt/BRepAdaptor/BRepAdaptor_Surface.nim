##  Created on: 1993-02-22
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard_Handle, ../GeomAdaptor/GeomAdaptor_Surface, ../gp/gp_Trsf,
  ../TopoDS/TopoDS_Face, ../Adaptor3d/Adaptor3d_Surface,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_SurfaceType

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Face"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of gp_Trsf"
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
  BRepAdaptor_Surface* {.importcpp: "BRepAdaptor_Surface",
                        header: "BRepAdaptor_Surface.hxx", bycopy.} = object of Adaptor3d_Surface ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## undefined
                                                                                           ## surface
                                                                                           ## with
                                                                                           ## no
                                                                                           ## face
                                                                                           ## loaded.


proc constructBRepAdaptor_Surface*(): BRepAdaptor_Surface {.constructor,
    importcpp: "BRepAdaptor_Surface(@)", header: "BRepAdaptor_Surface.hxx".}
proc constructBRepAdaptor_Surface*(F: TopoDS_Face;
                                  R: Standard_Boolean = Standard_True): BRepAdaptor_Surface {.
    constructor, importcpp: "BRepAdaptor_Surface(@)",
    header: "BRepAdaptor_Surface.hxx".}
proc Initialize*(this: var BRepAdaptor_Surface; F: TopoDS_Face;
                Restriction: Standard_Boolean = Standard_True) {.
    importcpp: "Initialize", header: "BRepAdaptor_Surface.hxx".}
proc Surface*(this: BRepAdaptor_Surface): GeomAdaptor_Surface {.noSideEffect,
    importcpp: "Surface", header: "BRepAdaptor_Surface.hxx".}
proc ChangeSurface*(this: var BRepAdaptor_Surface): var GeomAdaptor_Surface {.
    importcpp: "ChangeSurface", header: "BRepAdaptor_Surface.hxx".}
proc Trsf*(this: BRepAdaptor_Surface): gp_Trsf {.noSideEffect, importcpp: "Trsf",
    header: "BRepAdaptor_Surface.hxx".}
proc Face*(this: BRepAdaptor_Surface): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepAdaptor_Surface.hxx".}
proc Tolerance*(this: BRepAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BRepAdaptor_Surface.hxx".}
proc FirstUParameter*(this: BRepAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "FirstUParameter", header: "BRepAdaptor_Surface.hxx".}
proc LastUParameter*(this: BRepAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "LastUParameter", header: "BRepAdaptor_Surface.hxx".}
proc FirstVParameter*(this: BRepAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "FirstVParameter", header: "BRepAdaptor_Surface.hxx".}
proc LastVParameter*(this: BRepAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "LastVParameter", header: "BRepAdaptor_Surface.hxx".}
proc UContinuity*(this: BRepAdaptor_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "UContinuity", header: "BRepAdaptor_Surface.hxx".}
proc VContinuity*(this: BRepAdaptor_Surface): GeomAbs_Shape {.noSideEffect,
    importcpp: "VContinuity", header: "BRepAdaptor_Surface.hxx".}
proc NbUIntervals*(this: BRepAdaptor_Surface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbUIntervals", header: "BRepAdaptor_Surface.hxx".}
proc NbVIntervals*(this: BRepAdaptor_Surface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbVIntervals", header: "BRepAdaptor_Surface.hxx".}
proc UIntervals*(this: BRepAdaptor_Surface; T: var TColStd_Array1OfReal;
                S: GeomAbs_Shape) {.noSideEffect, importcpp: "UIntervals",
                                  header: "BRepAdaptor_Surface.hxx".}
proc VIntervals*(this: BRepAdaptor_Surface; T: var TColStd_Array1OfReal;
                S: GeomAbs_Shape) {.noSideEffect, importcpp: "VIntervals",
                                  header: "BRepAdaptor_Surface.hxx".}
proc UTrim*(this: BRepAdaptor_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "UTrim", header: "BRepAdaptor_Surface.hxx".}
proc VTrim*(this: BRepAdaptor_Surface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "VTrim", header: "BRepAdaptor_Surface.hxx".}
proc IsUClosed*(this: BRepAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "BRepAdaptor_Surface.hxx".}
proc IsVClosed*(this: BRepAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "BRepAdaptor_Surface.hxx".}
proc IsUPeriodic*(this: BRepAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "BRepAdaptor_Surface.hxx".}
proc UPeriod*(this: BRepAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "BRepAdaptor_Surface.hxx".}
proc IsVPeriodic*(this: BRepAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "BRepAdaptor_Surface.hxx".}
proc VPeriod*(this: BRepAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "BRepAdaptor_Surface.hxx".}
proc Value*(this: BRepAdaptor_Surface; U: Standard_Real; V: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "BRepAdaptor_Surface.hxx".}
proc D0*(this: BRepAdaptor_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "BRepAdaptor_Surface.hxx".}
proc D1*(this: BRepAdaptor_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "BRepAdaptor_Surface.hxx".}
proc D2*(this: BRepAdaptor_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "BRepAdaptor_Surface.hxx".}
proc D3*(this: BRepAdaptor_Surface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "BRepAdaptor_Surface.hxx".}
proc DN*(this: BRepAdaptor_Surface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "BRepAdaptor_Surface.hxx".}
proc UResolution*(this: BRepAdaptor_Surface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UResolution", header: "BRepAdaptor_Surface.hxx".}
proc VResolution*(this: BRepAdaptor_Surface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VResolution", header: "BRepAdaptor_Surface.hxx".}
proc GetType*(this: BRepAdaptor_Surface): GeomAbs_SurfaceType {.noSideEffect,
    importcpp: "GetType", header: "BRepAdaptor_Surface.hxx".}
proc Plane*(this: BRepAdaptor_Surface): gp_Pln {.noSideEffect, importcpp: "Plane",
    header: "BRepAdaptor_Surface.hxx".}
proc Cylinder*(this: BRepAdaptor_Surface): gp_Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "BRepAdaptor_Surface.hxx".}
proc Cone*(this: BRepAdaptor_Surface): gp_Cone {.noSideEffect, importcpp: "Cone",
    header: "BRepAdaptor_Surface.hxx".}
proc Sphere*(this: BRepAdaptor_Surface): gp_Sphere {.noSideEffect,
    importcpp: "Sphere", header: "BRepAdaptor_Surface.hxx".}
proc Torus*(this: BRepAdaptor_Surface): gp_Torus {.noSideEffect, importcpp: "Torus",
    header: "BRepAdaptor_Surface.hxx".}
proc UDegree*(this: BRepAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "BRepAdaptor_Surface.hxx".}
proc NbUPoles*(this: BRepAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbUPoles", header: "BRepAdaptor_Surface.hxx".}
proc VDegree*(this: BRepAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "BRepAdaptor_Surface.hxx".}
proc NbVPoles*(this: BRepAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoles", header: "BRepAdaptor_Surface.hxx".}
proc NbUKnots*(this: BRepAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbUKnots", header: "BRepAdaptor_Surface.hxx".}
proc NbVKnots*(this: BRepAdaptor_Surface): Standard_Integer {.noSideEffect,
    importcpp: "NbVKnots", header: "BRepAdaptor_Surface.hxx".}
proc IsURational*(this: BRepAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsURational", header: "BRepAdaptor_Surface.hxx".}
proc IsVRational*(this: BRepAdaptor_Surface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVRational", header: "BRepAdaptor_Surface.hxx".}
proc Bezier*(this: BRepAdaptor_Surface): handle[Geom_BezierSurface] {.noSideEffect,
    importcpp: "Bezier", header: "BRepAdaptor_Surface.hxx".}
proc BSpline*(this: BRepAdaptor_Surface): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "BSpline", header: "BRepAdaptor_Surface.hxx".}
proc AxeOfRevolution*(this: BRepAdaptor_Surface): gp_Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "BRepAdaptor_Surface.hxx".}
proc Direction*(this: BRepAdaptor_Surface): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "BRepAdaptor_Surface.hxx".}
proc BasisCurve*(this: BRepAdaptor_Surface): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "BasisCurve", header: "BRepAdaptor_Surface.hxx".}
proc BasisSurface*(this: BRepAdaptor_Surface): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "BRepAdaptor_Surface.hxx".}
proc OffsetValue*(this: BRepAdaptor_Surface): Standard_Real {.noSideEffect,
    importcpp: "OffsetValue", header: "BRepAdaptor_Surface.hxx".}