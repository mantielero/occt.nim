##  Created on: 1994-02-14
##  Created by: model
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Real, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../gp/gp_Pnt, ../gp/gp_Vec,
  ../GeomAbs/GeomAbs_SurfaceType, ../gp/gp_Pln, ../gp/gp_Cylinder, ../gp/gp_Cone,
  ../gp/gp_Sphere, ../gp/gp_Torus, ../gp/gp_Ax1, ../gp/gp_Dir

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurface"
type
  Handle_Adaptor3d_HSurface* = handle[Adaptor3d_HSurface]

## ! Root class for surfaces manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted surface is an interface between the
## ! services provided by a surface and those required of
## ! the surface by algorithms which use it.
## ! A derived concrete class is provided:
## ! GeomAdaptor_HSurface for a surface from the Geom package.

type
  Adaptor3d_HSurface* {.importcpp: "Adaptor3d_HSurface",
                       header: "Adaptor3d_HSurface.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## reference
                                                                                          ## to
                                                                                          ## the
                                                                                          ## Surface
                                                                                          ## inside
                                                                                          ## the
                                                                                          ## HSurface.


proc Surface*(this: Adaptor3d_HSurface): Adaptor3d_Surface {.noSideEffect,
    importcpp: "Surface", header: "Adaptor3d_HSurface.hxx".}
proc FirstUParameter*(this: Adaptor3d_HSurface): Standard_Real {.noSideEffect,
    importcpp: "FirstUParameter", header: "Adaptor3d_HSurface.hxx".}
proc LastUParameter*(this: Adaptor3d_HSurface): Standard_Real {.noSideEffect,
    importcpp: "LastUParameter", header: "Adaptor3d_HSurface.hxx".}
proc FirstVParameter*(this: Adaptor3d_HSurface): Standard_Real {.noSideEffect,
    importcpp: "FirstVParameter", header: "Adaptor3d_HSurface.hxx".}
proc LastVParameter*(this: Adaptor3d_HSurface): Standard_Real {.noSideEffect,
    importcpp: "LastVParameter", header: "Adaptor3d_HSurface.hxx".}
proc UContinuity*(this: Adaptor3d_HSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "UContinuity", header: "Adaptor3d_HSurface.hxx".}
proc VContinuity*(this: Adaptor3d_HSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "VContinuity", header: "Adaptor3d_HSurface.hxx".}
proc NbUIntervals*(this: Adaptor3d_HSurface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbUIntervals", header: "Adaptor3d_HSurface.hxx".}
proc NbVIntervals*(this: Adaptor3d_HSurface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbVIntervals", header: "Adaptor3d_HSurface.hxx".}
proc UIntervals*(this: Adaptor3d_HSurface; T: var TColStd_Array1OfReal;
                S: GeomAbs_Shape) {.noSideEffect, importcpp: "UIntervals",
                                  header: "Adaptor3d_HSurface.hxx".}
proc VIntervals*(this: Adaptor3d_HSurface; T: var TColStd_Array1OfReal;
                S: GeomAbs_Shape) {.noSideEffect, importcpp: "VIntervals",
                                  header: "Adaptor3d_HSurface.hxx".}
proc UTrim*(this: Adaptor3d_HSurface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "UTrim", header: "Adaptor3d_HSurface.hxx".}
proc VTrim*(this: Adaptor3d_HSurface; First: Standard_Real; Last: Standard_Real;
           Tol: Standard_Real): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "VTrim", header: "Adaptor3d_HSurface.hxx".}
proc IsUClosed*(this: Adaptor3d_HSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Adaptor3d_HSurface.hxx".}
proc IsVClosed*(this: Adaptor3d_HSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Adaptor3d_HSurface.hxx".}
proc IsUPeriodic*(this: Adaptor3d_HSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Adaptor3d_HSurface.hxx".}
proc UPeriod*(this: Adaptor3d_HSurface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "Adaptor3d_HSurface.hxx".}
proc IsVPeriodic*(this: Adaptor3d_HSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Adaptor3d_HSurface.hxx".}
proc VPeriod*(this: Adaptor3d_HSurface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "Adaptor3d_HSurface.hxx".}
proc Value*(this: Adaptor3d_HSurface; U: Standard_Real; V: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "Adaptor3d_HSurface.hxx".}
proc D0*(this: Adaptor3d_HSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Adaptor3d_HSurface.hxx".}
proc D1*(this: Adaptor3d_HSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Adaptor3d_HSurface.hxx".}
proc D2*(this: Adaptor3d_HSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Adaptor3d_HSurface.hxx".}
proc D3*(this: Adaptor3d_HSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Adaptor3d_HSurface.hxx".}
proc DN*(this: Adaptor3d_HSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Adaptor3d_HSurface.hxx".}
proc UResolution*(this: Adaptor3d_HSurface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UResolution", header: "Adaptor3d_HSurface.hxx".}
proc VResolution*(this: Adaptor3d_HSurface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VResolution", header: "Adaptor3d_HSurface.hxx".}
proc GetType*(this: Adaptor3d_HSurface): GeomAbs_SurfaceType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_HSurface.hxx".}
proc Plane*(this: Adaptor3d_HSurface): gp_Pln {.noSideEffect, importcpp: "Plane",
    header: "Adaptor3d_HSurface.hxx".}
proc Cylinder*(this: Adaptor3d_HSurface): gp_Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "Adaptor3d_HSurface.hxx".}
proc Cone*(this: Adaptor3d_HSurface): gp_Cone {.noSideEffect, importcpp: "Cone",
    header: "Adaptor3d_HSurface.hxx".}
proc Sphere*(this: Adaptor3d_HSurface): gp_Sphere {.noSideEffect,
    importcpp: "Sphere", header: "Adaptor3d_HSurface.hxx".}
proc Torus*(this: Adaptor3d_HSurface): gp_Torus {.noSideEffect, importcpp: "Torus",
    header: "Adaptor3d_HSurface.hxx".}
proc UDegree*(this: Adaptor3d_HSurface): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "Adaptor3d_HSurface.hxx".}
proc NbUPoles*(this: Adaptor3d_HSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbUPoles", header: "Adaptor3d_HSurface.hxx".}
proc VDegree*(this: Adaptor3d_HSurface): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "Adaptor3d_HSurface.hxx".}
proc NbVPoles*(this: Adaptor3d_HSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoles", header: "Adaptor3d_HSurface.hxx".}
proc NbUKnots*(this: Adaptor3d_HSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbUKnots", header: "Adaptor3d_HSurface.hxx".}
proc NbVKnots*(this: Adaptor3d_HSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbVKnots", header: "Adaptor3d_HSurface.hxx".}
proc IsURational*(this: Adaptor3d_HSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsURational", header: "Adaptor3d_HSurface.hxx".}
proc IsVRational*(this: Adaptor3d_HSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVRational", header: "Adaptor3d_HSurface.hxx".}
proc Bezier*(this: Adaptor3d_HSurface): handle[Geom_BezierSurface] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_HSurface.hxx".}
proc BSpline*(this: Adaptor3d_HSurface): handle[Geom_BSplineSurface] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_HSurface.hxx".}
proc AxeOfRevolution*(this: Adaptor3d_HSurface): gp_Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "Adaptor3d_HSurface.hxx".}
proc Direction*(this: Adaptor3d_HSurface): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "Adaptor3d_HSurface.hxx".}
proc BasisCurve*(this: Adaptor3d_HSurface): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Adaptor3d_HSurface.hxx".}
proc BasisSurface*(this: Adaptor3d_HSurface): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "Adaptor3d_HSurface.hxx".}
proc OffsetValue*(this: Adaptor3d_HSurface): Standard_Real {.noSideEffect,
    importcpp: "OffsetValue", header: "Adaptor3d_HSurface.hxx".}
type
  Adaptor3d_HSurfacebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Adaptor3d_HSurface::get_type_name(@)",
                              header: "Adaptor3d_HSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Adaptor3d_HSurface::get_type_descriptor(@)",
    header: "Adaptor3d_HSurface.hxx".}
proc DynamicType*(this: Adaptor3d_HSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_HSurface.hxx".}