##  Created on: 1993-04-15
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, Adaptor2d_Curve2d,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_CurveType

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
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
  Adaptor2d_OffsetCurve* {.importcpp: "Adaptor2d_OffsetCurve",
                          header: "Adaptor2d_OffsetCurve.hxx", bycopy.} = object of Adaptor2d_Curve2d ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## Offset
                                                                                               ## is
                                                                                               ## set
                                                                                               ## to
                                                                                               ## 0.


proc constructAdaptor2d_OffsetCurve*(): Adaptor2d_OffsetCurve {.constructor,
    importcpp: "Adaptor2d_OffsetCurve(@)", header: "Adaptor2d_OffsetCurve.hxx".}
proc constructAdaptor2d_OffsetCurve*(C: handle[Adaptor2d_HCurve2d]): Adaptor2d_OffsetCurve {.
    constructor, importcpp: "Adaptor2d_OffsetCurve(@)",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc constructAdaptor2d_OffsetCurve*(C: handle[Adaptor2d_HCurve2d];
                                    Offset: Standard_Real): Adaptor2d_OffsetCurve {.
    constructor, importcpp: "Adaptor2d_OffsetCurve(@)",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc constructAdaptor2d_OffsetCurve*(C: handle[Adaptor2d_HCurve2d];
                                    Offset: Standard_Real; WFirst: Standard_Real;
                                    WLast: Standard_Real): Adaptor2d_OffsetCurve {.
    constructor, importcpp: "Adaptor2d_OffsetCurve(@)",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc Load*(this: var Adaptor2d_OffsetCurve; S: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "Load", header: "Adaptor2d_OffsetCurve.hxx".}
proc Load*(this: var Adaptor2d_OffsetCurve; Offset: Standard_Real) {.
    importcpp: "Load", header: "Adaptor2d_OffsetCurve.hxx".}
proc Load*(this: var Adaptor2d_OffsetCurve; Offset: Standard_Real;
          WFirst: Standard_Real; WLast: Standard_Real) {.importcpp: "Load",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc Curve*(this: Adaptor2d_OffsetCurve): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Curve", header: "Adaptor2d_OffsetCurve.hxx".}
proc Offset*(this: Adaptor2d_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "Offset", header: "Adaptor2d_OffsetCurve.hxx".}
proc FirstParameter*(this: Adaptor2d_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor2d_OffsetCurve.hxx".}
proc LastParameter*(this: Adaptor2d_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor2d_OffsetCurve.hxx".}
proc Continuity*(this: Adaptor2d_OffsetCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor2d_OffsetCurve.hxx".}
proc NbIntervals*(this: Adaptor2d_OffsetCurve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Adaptor2d_OffsetCurve.hxx".}
proc Intervals*(this: Adaptor2d_OffsetCurve; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "Adaptor2d_OffsetCurve.hxx".}
proc Trim*(this: Adaptor2d_OffsetCurve; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Trim", header: "Adaptor2d_OffsetCurve.hxx".}
proc IsClosed*(this: Adaptor2d_OffsetCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Adaptor2d_OffsetCurve.hxx".}
proc IsPeriodic*(this: Adaptor2d_OffsetCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor2d_OffsetCurve.hxx".}
proc Period*(this: Adaptor2d_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Adaptor2d_OffsetCurve.hxx".}
proc Value*(this: Adaptor2d_OffsetCurve; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "Adaptor2d_OffsetCurve.hxx".}
proc D0*(this: Adaptor2d_OffsetCurve; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Adaptor2d_OffsetCurve.hxx".}
proc D1*(this: Adaptor2d_OffsetCurve; U: Standard_Real; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Adaptor2d_OffsetCurve.hxx".}
proc D2*(this: Adaptor2d_OffsetCurve; U: Standard_Real; P: var gp_Pnt2d;
        V1: var gp_Vec2d; V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                                        header: "Adaptor2d_OffsetCurve.hxx".}
proc D3*(this: Adaptor2d_OffsetCurve; U: Standard_Real; P: var gp_Pnt2d;
        V1: var gp_Vec2d; V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect,
    importcpp: "D3", header: "Adaptor2d_OffsetCurve.hxx".}
proc DN*(this: Adaptor2d_OffsetCurve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Adaptor2d_OffsetCurve.hxx".}
proc Resolution*(this: Adaptor2d_OffsetCurve; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "Adaptor2d_OffsetCurve.hxx".}
proc GetType*(this: Adaptor2d_OffsetCurve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor2d_OffsetCurve.hxx".}
proc Line*(this: Adaptor2d_OffsetCurve): gp_Lin2d {.noSideEffect, importcpp: "Line",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc Circle*(this: Adaptor2d_OffsetCurve): gp_Circ2d {.noSideEffect,
    importcpp: "Circle", header: "Adaptor2d_OffsetCurve.hxx".}
proc Ellipse*(this: Adaptor2d_OffsetCurve): gp_Elips2d {.noSideEffect,
    importcpp: "Ellipse", header: "Adaptor2d_OffsetCurve.hxx".}
proc Hyperbola*(this: Adaptor2d_OffsetCurve): gp_Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor2d_OffsetCurve.hxx".}
proc Parabola*(this: Adaptor2d_OffsetCurve): gp_Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "Adaptor2d_OffsetCurve.hxx".}
proc Degree*(this: Adaptor2d_OffsetCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Adaptor2d_OffsetCurve.hxx".}
proc IsRational*(this: Adaptor2d_OffsetCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor2d_OffsetCurve.hxx".}
proc NbPoles*(this: Adaptor2d_OffsetCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Adaptor2d_OffsetCurve.hxx".}
proc NbKnots*(this: Adaptor2d_OffsetCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Adaptor2d_OffsetCurve.hxx".}
proc Bezier*(this: Adaptor2d_OffsetCurve): handle[Geom2d_BezierCurve] {.
    noSideEffect, importcpp: "Bezier", header: "Adaptor2d_OffsetCurve.hxx".}
proc BSpline*(this: Adaptor2d_OffsetCurve): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "Adaptor2d_OffsetCurve.hxx".}
proc NbSamples*(this: Adaptor2d_OffsetCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbSamples", header: "Adaptor2d_OffsetCurve.hxx".}