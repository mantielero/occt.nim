##  Created on: 1993-06-03
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_CurveType,
  ../Standard/Standard_Real, ../BSplCLib/BSplCLib_Cache,
  ../Adaptor2d/Adaptor2d_Curve2d, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../Geom2dEvaluator/Geom2dEvaluator_Curve

discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  Geom2dAdaptor_Curve* {.importcpp: "Geom2dAdaptor_Curve",
                        header: "Geom2dAdaptor_Curve.hxx", bycopy.} = object of Adaptor2d_Curve2d
    ## /< B-spline representation to prevent castings
    ## /< Cached data for B-spline or Bezier curve
    ## /< Calculates value of offset curve


proc constructGeom2dAdaptor_Curve*(): Geom2dAdaptor_Curve {.constructor,
    importcpp: "Geom2dAdaptor_Curve(@)", header: "Geom2dAdaptor_Curve.hxx".}
proc constructGeom2dAdaptor_Curve*(C: handle[Geom2d_Curve]): Geom2dAdaptor_Curve {.
    constructor, importcpp: "Geom2dAdaptor_Curve(@)",
    header: "Geom2dAdaptor_Curve.hxx".}
proc constructGeom2dAdaptor_Curve*(C: handle[Geom2d_Curve]; UFirst: Standard_Real;
                                  ULast: Standard_Real): Geom2dAdaptor_Curve {.
    constructor, importcpp: "Geom2dAdaptor_Curve(@)",
    header: "Geom2dAdaptor_Curve.hxx".}
proc Reset*(this: var Geom2dAdaptor_Curve) {.importcpp: "Reset",
    header: "Geom2dAdaptor_Curve.hxx".}
proc Load*(this: var Geom2dAdaptor_Curve; C: handle[Geom2d_Curve]) {.
    importcpp: "Load", header: "Geom2dAdaptor_Curve.hxx".}
proc Load*(this: var Geom2dAdaptor_Curve; C: handle[Geom2d_Curve];
          UFirst: Standard_Real; ULast: Standard_Real) {.importcpp: "Load",
    header: "Geom2dAdaptor_Curve.hxx".}
proc Curve*(this: Geom2dAdaptor_Curve): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "Curve", header: "Geom2dAdaptor_Curve.hxx".}
proc FirstParameter*(this: Geom2dAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2dAdaptor_Curve.hxx".}
proc LastParameter*(this: Geom2dAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2dAdaptor_Curve.hxx".}
proc Continuity*(this: Geom2dAdaptor_Curve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2dAdaptor_Curve.hxx".}
proc NbIntervals*(this: Geom2dAdaptor_Curve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Geom2dAdaptor_Curve.hxx".}
proc Intervals*(this: Geom2dAdaptor_Curve; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "Geom2dAdaptor_Curve.hxx".}
proc Trim*(this: Geom2dAdaptor_Curve; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Trim", header: "Geom2dAdaptor_Curve.hxx".}
proc IsClosed*(this: Geom2dAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2dAdaptor_Curve.hxx".}
proc IsPeriodic*(this: Geom2dAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2dAdaptor_Curve.hxx".}
proc Period*(this: Geom2dAdaptor_Curve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Geom2dAdaptor_Curve.hxx".}
proc Value*(this: Geom2dAdaptor_Curve; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "Geom2dAdaptor_Curve.hxx".}
proc D0*(this: Geom2dAdaptor_Curve; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2dAdaptor_Curve.hxx".}
proc D1*(this: Geom2dAdaptor_Curve; U: Standard_Real; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2dAdaptor_Curve.hxx".}
proc D2*(this: Geom2dAdaptor_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2dAdaptor_Curve.hxx".}
proc D3*(this: Geom2dAdaptor_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2dAdaptor_Curve.hxx".}
proc DN*(this: Geom2dAdaptor_Curve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2dAdaptor_Curve.hxx".}
proc Resolution*(this: Geom2dAdaptor_Curve; Ruv: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "Geom2dAdaptor_Curve.hxx".}
proc GetType*(this: Geom2dAdaptor_Curve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "Geom2dAdaptor_Curve.hxx".}
proc Line*(this: Geom2dAdaptor_Curve): gp_Lin2d {.noSideEffect, importcpp: "Line",
    header: "Geom2dAdaptor_Curve.hxx".}
proc Circle*(this: Geom2dAdaptor_Curve): gp_Circ2d {.noSideEffect,
    importcpp: "Circle", header: "Geom2dAdaptor_Curve.hxx".}
proc Ellipse*(this: Geom2dAdaptor_Curve): gp_Elips2d {.noSideEffect,
    importcpp: "Ellipse", header: "Geom2dAdaptor_Curve.hxx".}
proc Hyperbola*(this: Geom2dAdaptor_Curve): gp_Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "Geom2dAdaptor_Curve.hxx".}
proc Parabola*(this: Geom2dAdaptor_Curve): gp_Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "Geom2dAdaptor_Curve.hxx".}
proc Degree*(this: Geom2dAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Geom2dAdaptor_Curve.hxx".}
proc IsRational*(this: Geom2dAdaptor_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom2dAdaptor_Curve.hxx".}
proc NbPoles*(this: Geom2dAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Geom2dAdaptor_Curve.hxx".}
proc NbKnots*(this: Geom2dAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Geom2dAdaptor_Curve.hxx".}
proc NbSamples*(this: Geom2dAdaptor_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbSamples", header: "Geom2dAdaptor_Curve.hxx".}
proc Bezier*(this: Geom2dAdaptor_Curve): handle[Geom2d_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Geom2dAdaptor_Curve.hxx".}
proc BSpline*(this: Geom2dAdaptor_Curve): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "Geom2dAdaptor_Curve.hxx".}