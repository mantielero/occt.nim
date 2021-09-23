##  Created on: 1998-08-20
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Wire, ../Standard/Standard_Real,
  BRepAdaptor_HArray1OfCurve, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Adaptor3d/Adaptor3d_Curve, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal, ../GeomAbs/GeomAbs_CurveType

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
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
type
  BRepAdaptor_CompCurve* {.importcpp: "BRepAdaptor_CompCurve",
                          header: "BRepAdaptor_CompCurve.hxx", bycopy.} = object of Adaptor3d_Curve ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## an
                                                                                             ## undefined
                                                                                             ## Curve
                                                                                             ## with
                                                                                             ## no
                                                                                             ## Wire
                                                                                             ## loaded.


proc constructBRepAdaptor_CompCurve*(): BRepAdaptor_CompCurve {.constructor,
    importcpp: "BRepAdaptor_CompCurve(@)", header: "BRepAdaptor_CompCurve.hxx".}
proc constructBRepAdaptor_CompCurve*(W: TopoDS_Wire; KnotByCurvilinearAbcissa: Standard_Boolean = Standard_False): BRepAdaptor_CompCurve {.
    constructor, importcpp: "BRepAdaptor_CompCurve(@)",
    header: "BRepAdaptor_CompCurve.hxx".}
proc constructBRepAdaptor_CompCurve*(W: TopoDS_Wire;
                                    KnotByCurvilinearAbcissa: Standard_Boolean;
                                    First: Standard_Real; Last: Standard_Real;
                                    Tol: Standard_Real): BRepAdaptor_CompCurve {.
    constructor, importcpp: "BRepAdaptor_CompCurve(@)",
    header: "BRepAdaptor_CompCurve.hxx".}
proc Initialize*(this: var BRepAdaptor_CompCurve; W: TopoDS_Wire;
                KnotByCurvilinearAbcissa: Standard_Boolean) {.
    importcpp: "Initialize", header: "BRepAdaptor_CompCurve.hxx".}
proc Initialize*(this: var BRepAdaptor_CompCurve; W: TopoDS_Wire;
                KnotByCurvilinearAbcissa: Standard_Boolean; First: Standard_Real;
                Last: Standard_Real; Tol: Standard_Real) {.importcpp: "Initialize",
    header: "BRepAdaptor_CompCurve.hxx".}
proc Wire*(this: BRepAdaptor_CompCurve): TopoDS_Wire {.noSideEffect,
    importcpp: "Wire", header: "BRepAdaptor_CompCurve.hxx".}
proc Edge*(this: BRepAdaptor_CompCurve; U: Standard_Real; E: var TopoDS_Edge;
          UonE: var Standard_Real) {.noSideEffect, importcpp: "Edge",
                                  header: "BRepAdaptor_CompCurve.hxx".}
proc FirstParameter*(this: BRepAdaptor_CompCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "BRepAdaptor_CompCurve.hxx".}
proc LastParameter*(this: BRepAdaptor_CompCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "BRepAdaptor_CompCurve.hxx".}
proc Continuity*(this: BRepAdaptor_CompCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRepAdaptor_CompCurve.hxx".}
proc NbIntervals*(this: BRepAdaptor_CompCurve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "BRepAdaptor_CompCurve.hxx".}
proc Intervals*(this: BRepAdaptor_CompCurve; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "BRepAdaptor_CompCurve.hxx".}
proc Trim*(this: BRepAdaptor_CompCurve; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "BRepAdaptor_CompCurve.hxx".}
proc IsClosed*(this: BRepAdaptor_CompCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "BRepAdaptor_CompCurve.hxx".}
proc IsPeriodic*(this: BRepAdaptor_CompCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "BRepAdaptor_CompCurve.hxx".}
proc Period*(this: BRepAdaptor_CompCurve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "BRepAdaptor_CompCurve.hxx".}
proc Value*(this: BRepAdaptor_CompCurve; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "BRepAdaptor_CompCurve.hxx".}
proc D0*(this: BRepAdaptor_CompCurve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "BRepAdaptor_CompCurve.hxx".}
proc D1*(this: BRepAdaptor_CompCurve; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "BRepAdaptor_CompCurve.hxx".}
proc D2*(this: BRepAdaptor_CompCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "BRepAdaptor_CompCurve.hxx".}
proc D3*(this: BRepAdaptor_CompCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "BRepAdaptor_CompCurve.hxx".}
proc DN*(this: BRepAdaptor_CompCurve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "BRepAdaptor_CompCurve.hxx".}
proc Resolution*(this: BRepAdaptor_CompCurve; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "BRepAdaptor_CompCurve.hxx".}
proc GetType*(this: BRepAdaptor_CompCurve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "BRepAdaptor_CompCurve.hxx".}
proc Line*(this: BRepAdaptor_CompCurve): gp_Lin {.noSideEffect, importcpp: "Line",
    header: "BRepAdaptor_CompCurve.hxx".}
proc Circle*(this: BRepAdaptor_CompCurve): gp_Circ {.noSideEffect,
    importcpp: "Circle", header: "BRepAdaptor_CompCurve.hxx".}
proc Ellipse*(this: BRepAdaptor_CompCurve): gp_Elips {.noSideEffect,
    importcpp: "Ellipse", header: "BRepAdaptor_CompCurve.hxx".}
proc Hyperbola*(this: BRepAdaptor_CompCurve): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "BRepAdaptor_CompCurve.hxx".}
proc Parabola*(this: BRepAdaptor_CompCurve): gp_Parab {.noSideEffect,
    importcpp: "Parabola", header: "BRepAdaptor_CompCurve.hxx".}
proc Degree*(this: BRepAdaptor_CompCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "BRepAdaptor_CompCurve.hxx".}
proc IsRational*(this: BRepAdaptor_CompCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepAdaptor_CompCurve.hxx".}
proc NbPoles*(this: BRepAdaptor_CompCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "BRepAdaptor_CompCurve.hxx".}
proc NbKnots*(this: BRepAdaptor_CompCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "BRepAdaptor_CompCurve.hxx".}
proc Bezier*(this: BRepAdaptor_CompCurve): handle[Geom_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "BRepAdaptor_CompCurve.hxx".}
proc BSpline*(this: BRepAdaptor_CompCurve): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "BRepAdaptor_CompCurve.hxx".}