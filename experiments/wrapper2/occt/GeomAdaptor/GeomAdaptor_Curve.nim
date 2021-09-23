##  Created on: 1992-09-01
##  Created by: Modelistation
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_CurveType,
  ../Standard/Standard_Real, ../BSplCLib/BSplCLib_Cache,
  ../Adaptor3d/Adaptor3d_Curve, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../GeomEvaluator/GeomEvaluator_Curve

discard "forward decl of Geom_Curve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_OffsetCurve"
type
  GeomAdaptor_Curve* {.importcpp: "GeomAdaptor_Curve",
                      header: "GeomAdaptor_Curve.hxx", bycopy.} = object of Adaptor3d_Curve
    ## /< B-spline representation to prevent castings
    ## /< Cached data for B-spline or Bezier curve
    ## /< Calculates value of offset curve


proc constructGeomAdaptor_Curve*(): GeomAdaptor_Curve {.constructor,
    importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc constructGeomAdaptor_Curve*(C: handle[Geom_Curve]): GeomAdaptor_Curve {.
    constructor, importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc constructGeomAdaptor_Curve*(C: handle[Geom_Curve]; UFirst: Standard_Real;
                                ULast: Standard_Real): GeomAdaptor_Curve {.
    constructor, importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc Reset*(this: var GeomAdaptor_Curve) {.importcpp: "Reset",
                                       header: "GeomAdaptor_Curve.hxx".}
proc Load*(this: var GeomAdaptor_Curve; C: handle[Geom_Curve]) {.importcpp: "Load",
    header: "GeomAdaptor_Curve.hxx".}
proc Load*(this: var GeomAdaptor_Curve; C: handle[Geom_Curve]; UFirst: Standard_Real;
          ULast: Standard_Real) {.importcpp: "Load", header: "GeomAdaptor_Curve.hxx".}
proc Curve*(this: GeomAdaptor_Curve): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "GeomAdaptor_Curve.hxx".}
proc FirstParameter*(this: GeomAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "GeomAdaptor_Curve.hxx".}
proc LastParameter*(this: GeomAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "GeomAdaptor_Curve.hxx".}
proc Continuity*(this: GeomAdaptor_Curve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "GeomAdaptor_Curve.hxx".}
proc NbIntervals*(this: GeomAdaptor_Curve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomAdaptor_Curve.hxx".}
proc Intervals*(this: GeomAdaptor_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomAdaptor_Curve.hxx".}
proc Trim*(this: GeomAdaptor_Curve; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "GeomAdaptor_Curve.hxx".}
proc IsClosed*(this: GeomAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "GeomAdaptor_Curve.hxx".}
proc IsPeriodic*(this: GeomAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "GeomAdaptor_Curve.hxx".}
proc Period*(this: GeomAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "GeomAdaptor_Curve.hxx".}
proc Value*(this: GeomAdaptor_Curve; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "GeomAdaptor_Curve.hxx".}
proc D0*(this: GeomAdaptor_Curve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "GeomAdaptor_Curve.hxx".}
proc D1*(this: GeomAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomAdaptor_Curve.hxx".}
proc D2*(this: GeomAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "GeomAdaptor_Curve.hxx".}
proc D3*(this: GeomAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "GeomAdaptor_Curve.hxx".}
proc DN*(this: GeomAdaptor_Curve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "GeomAdaptor_Curve.hxx".}
proc Resolution*(this: GeomAdaptor_Curve; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "GeomAdaptor_Curve.hxx".}
proc GetType*(this: GeomAdaptor_Curve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "GeomAdaptor_Curve.hxx".}
proc Line*(this: GeomAdaptor_Curve): gp_Lin {.noSideEffect, importcpp: "Line",
    header: "GeomAdaptor_Curve.hxx".}
proc Circle*(this: GeomAdaptor_Curve): gp_Circ {.noSideEffect, importcpp: "Circle",
    header: "GeomAdaptor_Curve.hxx".}
proc Ellipse*(this: GeomAdaptor_Curve): gp_Elips {.noSideEffect,
    importcpp: "Ellipse", header: "GeomAdaptor_Curve.hxx".}
proc Hyperbola*(this: GeomAdaptor_Curve): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "GeomAdaptor_Curve.hxx".}
proc Parabola*(this: GeomAdaptor_Curve): gp_Parab {.noSideEffect,
    importcpp: "Parabola", header: "GeomAdaptor_Curve.hxx".}
proc Degree*(this: GeomAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "GeomAdaptor_Curve.hxx".}
proc IsRational*(this: GeomAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomAdaptor_Curve.hxx".}
proc NbPoles*(this: GeomAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "GeomAdaptor_Curve.hxx".}
proc NbKnots*(this: GeomAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "GeomAdaptor_Curve.hxx".}
proc Bezier*(this: GeomAdaptor_Curve): handle[Geom_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "GeomAdaptor_Curve.hxx".}
proc BSpline*(this: GeomAdaptor_Curve): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "GeomAdaptor_Curve.hxx".}
proc OffsetCurve*(this: GeomAdaptor_Curve): handle[Geom_OffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "GeomAdaptor_Curve.hxx".}