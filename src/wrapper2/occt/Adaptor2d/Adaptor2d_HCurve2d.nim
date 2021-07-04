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
  ../Standard/Standard_Boolean, ../gp/gp_Pnt2d, ../gp/gp_Vec2d,
  ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Lin2d, ../gp/gp_Circ2d, ../gp/gp_Elips2d,
  ../gp/gp_Hypr2d, ../gp/gp_Parab2d, ../Geom2d/Geom2d_BezierCurve,
  ../Geom2d/Geom2d_BSplineCurve

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor2d_HCurve2d"
type
  Handle_Adaptor2d_HCurve2d* = handle[Adaptor2d_HCurve2d]

## ! Root class for 2D curves manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted curve is an interface between the
## ! services provided by a curve, and those required of
## ! the curve by algorithms, which use it.
## ! A derived specific class is provided:
## ! Geom2dAdaptor_HCurve for a curve from the Geom2d package.

type
  Adaptor2d_HCurve2d* {.importcpp: "Adaptor2d_HCurve2d",
                       header: "Adaptor2d_HCurve2d.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## reference
                                                                                          ## to
                                                                                          ## the
                                                                                          ## Curve2d
                                                                                          ## inside
                                                                                          ## the
                                                                                          ## HCurve2d.


proc Curve2d*(this: Adaptor2d_HCurve2d): Adaptor2d_Curve2d {.noSideEffect,
    importcpp: "Curve2d", header: "Adaptor2d_HCurve2d.hxx".}
proc FirstParameter*(this: Adaptor2d_HCurve2d): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor2d_HCurve2d.hxx".}
proc LastParameter*(this: Adaptor2d_HCurve2d): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor2d_HCurve2d.hxx".}
proc Continuity*(this: Adaptor2d_HCurve2d): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor2d_HCurve2d.hxx".}
proc NbIntervals*(this: Adaptor2d_HCurve2d; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Adaptor2d_HCurve2d.hxx".}
proc Intervals*(this: Adaptor2d_HCurve2d; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "Adaptor2d_HCurve2d.hxx".}
proc Trim*(this: Adaptor2d_HCurve2d; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Trim", header: "Adaptor2d_HCurve2d.hxx".}
proc IsClosed*(this: Adaptor2d_HCurve2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Adaptor2d_HCurve2d.hxx".}
proc IsPeriodic*(this: Adaptor2d_HCurve2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor2d_HCurve2d.hxx".}
proc Period*(this: Adaptor2d_HCurve2d): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Adaptor2d_HCurve2d.hxx".}
proc Value*(this: Adaptor2d_HCurve2d; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "Adaptor2d_HCurve2d.hxx".}
proc D0*(this: Adaptor2d_HCurve2d; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Adaptor2d_HCurve2d.hxx".}
proc D1*(this: Adaptor2d_HCurve2d; U: Standard_Real; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Adaptor2d_HCurve2d.hxx".}
proc D2*(this: Adaptor2d_HCurve2d; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Adaptor2d_HCurve2d.hxx".}
proc D3*(this: Adaptor2d_HCurve2d; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Adaptor2d_HCurve2d.hxx".}
proc DN*(this: Adaptor2d_HCurve2d; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Adaptor2d_HCurve2d.hxx".}
proc Resolution*(this: Adaptor2d_HCurve2d; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "Adaptor2d_HCurve2d.hxx".}
proc GetType*(this: Adaptor2d_HCurve2d): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor2d_HCurve2d.hxx".}
proc Line*(this: Adaptor2d_HCurve2d): gp_Lin2d {.noSideEffect, importcpp: "Line",
    header: "Adaptor2d_HCurve2d.hxx".}
proc Circle*(this: Adaptor2d_HCurve2d): gp_Circ2d {.noSideEffect,
    importcpp: "Circle", header: "Adaptor2d_HCurve2d.hxx".}
proc Ellipse*(this: Adaptor2d_HCurve2d): gp_Elips2d {.noSideEffect,
    importcpp: "Ellipse", header: "Adaptor2d_HCurve2d.hxx".}
proc Hyperbola*(this: Adaptor2d_HCurve2d): gp_Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor2d_HCurve2d.hxx".}
proc Parabola*(this: Adaptor2d_HCurve2d): gp_Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "Adaptor2d_HCurve2d.hxx".}
proc Degree*(this: Adaptor2d_HCurve2d): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Adaptor2d_HCurve2d.hxx".}
proc IsRational*(this: Adaptor2d_HCurve2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor2d_HCurve2d.hxx".}
proc NbPoles*(this: Adaptor2d_HCurve2d): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Adaptor2d_HCurve2d.hxx".}
proc NbKnots*(this: Adaptor2d_HCurve2d): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Adaptor2d_HCurve2d.hxx".}
proc Bezier*(this: Adaptor2d_HCurve2d): handle[Geom2d_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor2d_HCurve2d.hxx".}
proc BSpline*(this: Adaptor2d_HCurve2d): handle[Geom2d_BSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor2d_HCurve2d.hxx".}
type
  Adaptor2d_HCurve2dbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Adaptor2d_HCurve2d::get_type_name(@)",
                              header: "Adaptor2d_HCurve2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Adaptor2d_HCurve2d::get_type_descriptor(@)",
    header: "Adaptor2d_HCurve2d.hxx".}
proc DynamicType*(this: Adaptor2d_HCurve2d): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor2d_HCurve2d.hxx".}