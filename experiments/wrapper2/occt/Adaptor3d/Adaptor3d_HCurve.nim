##  Created on: 1994-02-23
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
  ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin, ../gp/gp_Circ, ../gp/gp_Elips,
  ../gp/gp_Hypr, ../gp/gp_Parab

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_OffsetCurve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HCurve"
type
  Handle_Adaptor3d_HCurve* = handle[Adaptor3d_HCurve]

## ! Root class for 3D curves manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted curve is an interface between the
## ! services provided by a curve and those required of
## ! the curve by algorithms which use it.
## ! Two derived concrete classes are provided:
## ! - GeomAdaptor_HCurve for a curve from the Geom package
## ! - Adaptor3d_HCurveOnSurface for a curve lying
## ! on a surface from the Geom package.

type
  Adaptor3d_HCurve* {.importcpp: "Adaptor3d_HCurve",
                     header: "Adaptor3d_HCurve.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## pointer
                                                                                      ## to
                                                                                      ## the
                                                                                      ## Curve
                                                                                      ## inside
                                                                                      ## the
                                                                                      ## HCurve.


proc Curve*(this: Adaptor3d_HCurve): Adaptor3d_Curve {.noSideEffect,
    importcpp: "Curve", header: "Adaptor3d_HCurve.hxx".}
proc GetCurve*(this: var Adaptor3d_HCurve): var Adaptor3d_Curve {.
    importcpp: "GetCurve", header: "Adaptor3d_HCurve.hxx".}
proc FirstParameter*(this: Adaptor3d_HCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor3d_HCurve.hxx".}
proc LastParameter*(this: Adaptor3d_HCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor3d_HCurve.hxx".}
proc Continuity*(this: Adaptor3d_HCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor3d_HCurve.hxx".}
proc NbIntervals*(this: Adaptor3d_HCurve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Adaptor3d_HCurve.hxx".}
proc Intervals*(this: Adaptor3d_HCurve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "Adaptor3d_HCurve.hxx".}
proc Trim*(this: Adaptor3d_HCurve; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "Adaptor3d_HCurve.hxx".}
proc IsClosed*(this: Adaptor3d_HCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Adaptor3d_HCurve.hxx".}
proc IsPeriodic*(this: Adaptor3d_HCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor3d_HCurve.hxx".}
proc Period*(this: Adaptor3d_HCurve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Adaptor3d_HCurve.hxx".}
proc Value*(this: Adaptor3d_HCurve; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "Adaptor3d_HCurve.hxx".}
proc D0*(this: Adaptor3d_HCurve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Adaptor3d_HCurve.hxx".}
proc D1*(this: Adaptor3d_HCurve; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Adaptor3d_HCurve.hxx".}
proc D2*(this: Adaptor3d_HCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "Adaptor3d_HCurve.hxx".}
proc D3*(this: Adaptor3d_HCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Adaptor3d_HCurve.hxx".}
proc DN*(this: Adaptor3d_HCurve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Adaptor3d_HCurve.hxx".}
proc Resolution*(this: Adaptor3d_HCurve; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "Adaptor3d_HCurve.hxx".}
proc GetType*(this: Adaptor3d_HCurve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_HCurve.hxx".}
proc Line*(this: Adaptor3d_HCurve): gp_Lin {.noSideEffect, importcpp: "Line",
    header: "Adaptor3d_HCurve.hxx".}
proc Circle*(this: Adaptor3d_HCurve): gp_Circ {.noSideEffect, importcpp: "Circle",
    header: "Adaptor3d_HCurve.hxx".}
proc Ellipse*(this: Adaptor3d_HCurve): gp_Elips {.noSideEffect, importcpp: "Ellipse",
    header: "Adaptor3d_HCurve.hxx".}
proc Hyperbola*(this: Adaptor3d_HCurve): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor3d_HCurve.hxx".}
proc Parabola*(this: Adaptor3d_HCurve): gp_Parab {.noSideEffect,
    importcpp: "Parabola", header: "Adaptor3d_HCurve.hxx".}
proc Degree*(this: Adaptor3d_HCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Adaptor3d_HCurve.hxx".}
proc IsRational*(this: Adaptor3d_HCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor3d_HCurve.hxx".}
proc NbPoles*(this: Adaptor3d_HCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Adaptor3d_HCurve.hxx".}
proc NbKnots*(this: Adaptor3d_HCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Adaptor3d_HCurve.hxx".}
proc Bezier*(this: Adaptor3d_HCurve): handle[Geom_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_HCurve.hxx".}
proc BSpline*(this: Adaptor3d_HCurve): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_HCurve.hxx".}
proc OffsetCurve*(this: Adaptor3d_HCurve): handle[Geom_OffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "Adaptor3d_HCurve.hxx".}
type
  Adaptor3d_HCurvebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Adaptor3d_HCurve::get_type_name(@)",
                              header: "Adaptor3d_HCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Adaptor3d_HCurve::get_type_descriptor(@)",
    header: "Adaptor3d_HCurve.hxx".}
proc DynamicType*(this: Adaptor3d_HCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_HCurve.hxx".}