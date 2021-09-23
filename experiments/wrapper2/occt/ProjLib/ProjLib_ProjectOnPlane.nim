##  Created on: 1994-09-02
##  Created by: Bruno DUMORTIER
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Ax3, ../gp/gp_Dir,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_CurveType, ../Adaptor3d/Adaptor3d_Curve,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomAdaptor_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Dir"
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
  ProjLib_ProjectOnPlane* {.importcpp: "ProjLib_ProjectOnPlane",
                           header: "ProjLib_ProjectOnPlane.hxx", bycopy.} = object of Adaptor3d_Curve ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor.


proc constructProjLib_ProjectOnPlane*(): ProjLib_ProjectOnPlane {.constructor,
    importcpp: "ProjLib_ProjectOnPlane(@)", header: "ProjLib_ProjectOnPlane.hxx".}
proc constructProjLib_ProjectOnPlane*(Pl: gp_Ax3): ProjLib_ProjectOnPlane {.
    constructor, importcpp: "ProjLib_ProjectOnPlane(@)",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc constructProjLib_ProjectOnPlane*(Pl: gp_Ax3; D: gp_Dir): ProjLib_ProjectOnPlane {.
    constructor, importcpp: "ProjLib_ProjectOnPlane(@)",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc Load*(this: var ProjLib_ProjectOnPlane; C: handle[Adaptor3d_HCurve];
          Tolerance: Standard_Real;
          KeepParametrization: Standard_Boolean = Standard_True) {.
    importcpp: "Load", header: "ProjLib_ProjectOnPlane.hxx".}
proc GetPlane*(this: ProjLib_ProjectOnPlane): gp_Ax3 {.noSideEffect,
    importcpp: "GetPlane", header: "ProjLib_ProjectOnPlane.hxx".}
proc GetDirection*(this: ProjLib_ProjectOnPlane): gp_Dir {.noSideEffect,
    importcpp: "GetDirection", header: "ProjLib_ProjectOnPlane.hxx".}
proc GetCurve*(this: ProjLib_ProjectOnPlane): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "ProjLib_ProjectOnPlane.hxx".}
proc GetResult*(this: ProjLib_ProjectOnPlane): handle[GeomAdaptor_HCurve] {.
    noSideEffect, importcpp: "GetResult", header: "ProjLib_ProjectOnPlane.hxx".}
proc FirstParameter*(this: ProjLib_ProjectOnPlane): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "ProjLib_ProjectOnPlane.hxx".}
proc LastParameter*(this: ProjLib_ProjectOnPlane): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "ProjLib_ProjectOnPlane.hxx".}
proc Continuity*(this: ProjLib_ProjectOnPlane): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "ProjLib_ProjectOnPlane.hxx".}
proc NbIntervals*(this: ProjLib_ProjectOnPlane; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "ProjLib_ProjectOnPlane.hxx".}
proc Intervals*(this: ProjLib_ProjectOnPlane; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "ProjLib_ProjectOnPlane.hxx".}
proc Trim*(this: ProjLib_ProjectOnPlane; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor3d_HCurve] {.noSideEffect,
    importcpp: "Trim", header: "ProjLib_ProjectOnPlane.hxx".}
proc IsClosed*(this: ProjLib_ProjectOnPlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "ProjLib_ProjectOnPlane.hxx".}
proc IsPeriodic*(this: ProjLib_ProjectOnPlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ProjLib_ProjectOnPlane.hxx".}
proc Period*(this: ProjLib_ProjectOnPlane): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "ProjLib_ProjectOnPlane.hxx".}
proc Value*(this: ProjLib_ProjectOnPlane; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "ProjLib_ProjectOnPlane.hxx".}
proc D0*(this: ProjLib_ProjectOnPlane; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "ProjLib_ProjectOnPlane.hxx".}
proc D1*(this: ProjLib_ProjectOnPlane; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "ProjLib_ProjectOnPlane.hxx".}
proc D2*(this: ProjLib_ProjectOnPlane; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "ProjLib_ProjectOnPlane.hxx".}
proc D3*(this: ProjLib_ProjectOnPlane; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "ProjLib_ProjectOnPlane.hxx".}
proc DN*(this: ProjLib_ProjectOnPlane; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "ProjLib_ProjectOnPlane.hxx".}
proc Resolution*(this: ProjLib_ProjectOnPlane; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "ProjLib_ProjectOnPlane.hxx".}
proc GetType*(this: ProjLib_ProjectOnPlane): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_ProjectOnPlane.hxx".}
proc Line*(this: ProjLib_ProjectOnPlane): gp_Lin {.noSideEffect, importcpp: "Line",
    header: "ProjLib_ProjectOnPlane.hxx".}
proc Circle*(this: ProjLib_ProjectOnPlane): gp_Circ {.noSideEffect,
    importcpp: "Circle", header: "ProjLib_ProjectOnPlane.hxx".}
proc Ellipse*(this: ProjLib_ProjectOnPlane): gp_Elips {.noSideEffect,
    importcpp: "Ellipse", header: "ProjLib_ProjectOnPlane.hxx".}
proc Hyperbola*(this: ProjLib_ProjectOnPlane): gp_Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "ProjLib_ProjectOnPlane.hxx".}
proc Parabola*(this: ProjLib_ProjectOnPlane): gp_Parab {.noSideEffect,
    importcpp: "Parabola", header: "ProjLib_ProjectOnPlane.hxx".}
proc Degree*(this: ProjLib_ProjectOnPlane): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "ProjLib_ProjectOnPlane.hxx".}
proc IsRational*(this: ProjLib_ProjectOnPlane): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "ProjLib_ProjectOnPlane.hxx".}
proc NbPoles*(this: ProjLib_ProjectOnPlane): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "ProjLib_ProjectOnPlane.hxx".}
proc NbKnots*(this: ProjLib_ProjectOnPlane): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "ProjLib_ProjectOnPlane.hxx".}
proc Bezier*(this: ProjLib_ProjectOnPlane): handle[Geom_BezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "ProjLib_ProjectOnPlane.hxx".}
proc BSpline*(this: ProjLib_ProjectOnPlane): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "ProjLib_ProjectOnPlane.hxx".}