##  Created on: 1993-02-22
##  Created by: Modelistation
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Circ,
  ../gp/gp_Lin, ../TColStd/TColStd_HSequenceOfReal, ../GeomAbs/GeomAbs_Shape,
  Adaptor3d_Curve, ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Adaptor3d_CurveOnSurface* {.importcpp: "Adaptor3d_CurveOnSurface",
                             header: "Adaptor3d_CurveOnSurface.hxx", bycopy.} = object of Adaptor3d_Curve


proc constructAdaptor3d_CurveOnSurface*(): Adaptor3d_CurveOnSurface {.constructor,
    importcpp: "Adaptor3d_CurveOnSurface(@)",
    header: "Adaptor3d_CurveOnSurface.hxx".}
proc constructAdaptor3d_CurveOnSurface*(S: handle[Adaptor3d_HSurface]): Adaptor3d_CurveOnSurface {.
    constructor, importcpp: "Adaptor3d_CurveOnSurface(@)",
    header: "Adaptor3d_CurveOnSurface.hxx".}
proc constructAdaptor3d_CurveOnSurface*(C: handle[Adaptor2d_HCurve2d];
                                       S: handle[Adaptor3d_HSurface]): Adaptor3d_CurveOnSurface {.
    constructor, importcpp: "Adaptor3d_CurveOnSurface(@)",
    header: "Adaptor3d_CurveOnSurface.hxx".}
proc Load*(this: var Adaptor3d_CurveOnSurface; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Load", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Load*(this: var Adaptor3d_CurveOnSurface; C: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "Load", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Load*(this: var Adaptor3d_CurveOnSurface; C: handle[Adaptor2d_HCurve2d];
          S: handle[Adaptor3d_HSurface]) {.importcpp: "Load",
    header: "Adaptor3d_CurveOnSurface.hxx".}
proc GetCurve*(this: Adaptor3d_CurveOnSurface): handle[Adaptor2d_HCurve2d] {.
    noSideEffect, importcpp: "GetCurve", header: "Adaptor3d_CurveOnSurface.hxx".}
proc GetSurface*(this: Adaptor3d_CurveOnSurface): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "GetSurface", header: "Adaptor3d_CurveOnSurface.hxx".}
proc ChangeCurve*(this: var Adaptor3d_CurveOnSurface): var handle[Adaptor2d_HCurve2d] {.
    importcpp: "ChangeCurve", header: "Adaptor3d_CurveOnSurface.hxx".}
proc ChangeSurface*(this: var Adaptor3d_CurveOnSurface): var handle[
    Adaptor3d_HSurface] {.importcpp: "ChangeSurface",
                         header: "Adaptor3d_CurveOnSurface.hxx".}
proc FirstParameter*(this: Adaptor3d_CurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor3d_CurveOnSurface.hxx".}
proc LastParameter*(this: Adaptor3d_CurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Continuity*(this: Adaptor3d_CurveOnSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor3d_CurveOnSurface.hxx".}
proc NbIntervals*(this: Adaptor3d_CurveOnSurface; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Intervals*(this: Adaptor3d_CurveOnSurface; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "Adaptor3d_CurveOnSurface.hxx".}
proc Trim*(this: Adaptor3d_CurveOnSurface; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "Adaptor3d_CurveOnSurface.hxx".}
proc IsClosed*(this: Adaptor3d_CurveOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Adaptor3d_CurveOnSurface.hxx".}
proc IsPeriodic*(this: Adaptor3d_CurveOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Period*(this: Adaptor3d_CurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Value*(this: Adaptor3d_CurveOnSurface; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "Adaptor3d_CurveOnSurface.hxx".}
proc D0*(this: Adaptor3d_CurveOnSurface; U: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Adaptor3d_CurveOnSurface.hxx".}
proc D1*(this: Adaptor3d_CurveOnSurface; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Adaptor3d_CurveOnSurface.hxx".}
proc D2*(this: Adaptor3d_CurveOnSurface; U: Standard_Real; P: var gp_Pnt;
        V1: var gp_Vec; V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                                    header: "Adaptor3d_CurveOnSurface.hxx".}
proc D3*(this: Adaptor3d_CurveOnSurface; U: Standard_Real; P: var gp_Pnt;
        V1: var gp_Vec; V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
    header: "Adaptor3d_CurveOnSurface.hxx".}
proc DN*(this: Adaptor3d_CurveOnSurface; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Resolution*(this: Adaptor3d_CurveOnSurface; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "Adaptor3d_CurveOnSurface.hxx".}
proc GetType*(this: Adaptor3d_CurveOnSurface): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Line*(this: Adaptor3d_CurveOnSurface): gp_Lin {.noSideEffect, importcpp: "Line",
    header: "Adaptor3d_CurveOnSurface.hxx".}
proc Circle*(this: Adaptor3d_CurveOnSurface): gp_Circ {.noSideEffect,
    importcpp: "Circle", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Ellipse*(this: Adaptor3d_CurveOnSurface): gp_Elips {.noSideEffect,
    importcpp: "Ellipse", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Hyperbola*(this: Adaptor3d_CurveOnSurface): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Parabola*(this: Adaptor3d_CurveOnSurface): gp_Parab {.noSideEffect,
    importcpp: "Parabola", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Degree*(this: Adaptor3d_CurveOnSurface): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Adaptor3d_CurveOnSurface.hxx".}
proc IsRational*(this: Adaptor3d_CurveOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor3d_CurveOnSurface.hxx".}
proc NbPoles*(this: Adaptor3d_CurveOnSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Adaptor3d_CurveOnSurface.hxx".}
proc NbKnots*(this: Adaptor3d_CurveOnSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Adaptor3d_CurveOnSurface.hxx".}
proc Bezier*(this: Adaptor3d_CurveOnSurface): handle[Geom_BezierCurve] {.
    noSideEffect, importcpp: "Bezier", header: "Adaptor3d_CurveOnSurface.hxx".}
proc BSpline*(this: Adaptor3d_CurveOnSurface): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "Adaptor3d_CurveOnSurface.hxx".}