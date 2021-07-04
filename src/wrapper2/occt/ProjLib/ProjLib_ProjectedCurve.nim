##  Created on: 1993-08-25
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ProjLib_Projector,
  ../Adaptor2d/Adaptor2d_Curve2d, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_CurveType,
  ../AppParCurves/AppParCurves_Constraint

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Adaptor2d_HCurve2d"
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
  ProjLib_ProjectedCurve* {.importcpp: "ProjLib_ProjectedCurve",
                           header: "ProjLib_ProjectedCurve.hxx", bycopy.} = object of Adaptor2d_Curve2d ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor,
                                                                                                 ## it
                                                                                                 ## only
                                                                                                 ## sets
                                                                                                 ## some
                                                                                                 ## initial
                                                                                                 ## values
                                                                                                 ## for
                                                                                                 ## class
                                                                                                 ## fields.


proc constructProjLib_ProjectedCurve*(): ProjLib_ProjectedCurve {.constructor,
    importcpp: "ProjLib_ProjectedCurve(@)", header: "ProjLib_ProjectedCurve.hxx".}
proc constructProjLib_ProjectedCurve*(S: handle[Adaptor3d_HSurface]): ProjLib_ProjectedCurve {.
    constructor, importcpp: "ProjLib_ProjectedCurve(@)",
    header: "ProjLib_ProjectedCurve.hxx".}
proc constructProjLib_ProjectedCurve*(S: handle[Adaptor3d_HSurface];
                                     C: handle[Adaptor3d_HCurve]): ProjLib_ProjectedCurve {.
    constructor, importcpp: "ProjLib_ProjectedCurve(@)",
    header: "ProjLib_ProjectedCurve.hxx".}
proc constructProjLib_ProjectedCurve*(S: handle[Adaptor3d_HSurface];
                                     C: handle[Adaptor3d_HCurve];
                                     Tol: Standard_Real): ProjLib_ProjectedCurve {.
    constructor, importcpp: "ProjLib_ProjectedCurve(@)",
    header: "ProjLib_ProjectedCurve.hxx".}
proc Load*(this: var ProjLib_ProjectedCurve; Tolerance: Standard_Real) {.
    importcpp: "Load", header: "ProjLib_ProjectedCurve.hxx".}
proc Load*(this: var ProjLib_ProjectedCurve; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Load", header: "ProjLib_ProjectedCurve.hxx".}
proc Perform*(this: var ProjLib_ProjectedCurve; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "Perform", header: "ProjLib_ProjectedCurve.hxx".}
proc SetDegree*(this: var ProjLib_ProjectedCurve; theDegMin: Standard_Integer;
               theDegMax: Standard_Integer) {.importcpp: "SetDegree",
    header: "ProjLib_ProjectedCurve.hxx".}
proc SetMaxSegments*(this: var ProjLib_ProjectedCurve;
                    theMaxSegments: Standard_Integer) {.
    importcpp: "SetMaxSegments", header: "ProjLib_ProjectedCurve.hxx".}
proc SetBndPnt*(this: var ProjLib_ProjectedCurve; theBndPnt: AppParCurves_Constraint) {.
    importcpp: "SetBndPnt", header: "ProjLib_ProjectedCurve.hxx".}
proc SetMaxDist*(this: var ProjLib_ProjectedCurve; theMaxDist: Standard_Real) {.
    importcpp: "SetMaxDist", header: "ProjLib_ProjectedCurve.hxx".}
proc GetSurface*(this: ProjLib_ProjectedCurve): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "GetSurface", header: "ProjLib_ProjectedCurve.hxx".}
proc GetCurve*(this: ProjLib_ProjectedCurve): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "ProjLib_ProjectedCurve.hxx".}
proc GetTolerance*(this: ProjLib_ProjectedCurve): Standard_Real {.noSideEffect,
    importcpp: "GetTolerance", header: "ProjLib_ProjectedCurve.hxx".}
proc FirstParameter*(this: ProjLib_ProjectedCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "ProjLib_ProjectedCurve.hxx".}
proc LastParameter*(this: ProjLib_ProjectedCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "ProjLib_ProjectedCurve.hxx".}
proc Continuity*(this: ProjLib_ProjectedCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "ProjLib_ProjectedCurve.hxx".}
proc NbIntervals*(this: ProjLib_ProjectedCurve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "ProjLib_ProjectedCurve.hxx".}
proc Intervals*(this: ProjLib_ProjectedCurve; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "ProjLib_ProjectedCurve.hxx".}
proc Trim*(this: ProjLib_ProjectedCurve; First: Standard_Real; Last: Standard_Real;
          Tol: Standard_Real): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Trim", header: "ProjLib_ProjectedCurve.hxx".}
proc IsClosed*(this: ProjLib_ProjectedCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "ProjLib_ProjectedCurve.hxx".}
proc IsPeriodic*(this: ProjLib_ProjectedCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ProjLib_ProjectedCurve.hxx".}
proc Period*(this: ProjLib_ProjectedCurve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "ProjLib_ProjectedCurve.hxx".}
proc Value*(this: ProjLib_ProjectedCurve; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "ProjLib_ProjectedCurve.hxx".}
proc D0*(this: ProjLib_ProjectedCurve; U: Standard_Real; P: var gp_Pnt2d) {.
    noSideEffect, importcpp: "D0", header: "ProjLib_ProjectedCurve.hxx".}
proc D1*(this: ProjLib_ProjectedCurve; U: Standard_Real; P: var gp_Pnt2d;
        V: var gp_Vec2d) {.noSideEffect, importcpp: "D1",
                        header: "ProjLib_ProjectedCurve.hxx".}
proc D2*(this: ProjLib_ProjectedCurve; U: Standard_Real; P: var gp_Pnt2d;
        V1: var gp_Vec2d; V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                                        header: "ProjLib_ProjectedCurve.hxx".}
proc D3*(this: ProjLib_ProjectedCurve; U: Standard_Real; P: var gp_Pnt2d;
        V1: var gp_Vec2d; V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect,
    importcpp: "D3", header: "ProjLib_ProjectedCurve.hxx".}
proc DN*(this: ProjLib_ProjectedCurve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "ProjLib_ProjectedCurve.hxx".}
proc Resolution*(this: ProjLib_ProjectedCurve; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "ProjLib_ProjectedCurve.hxx".}
proc GetType*(this: ProjLib_ProjectedCurve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_ProjectedCurve.hxx".}
proc Line*(this: ProjLib_ProjectedCurve): gp_Lin2d {.noSideEffect, importcpp: "Line",
    header: "ProjLib_ProjectedCurve.hxx".}
proc Circle*(this: ProjLib_ProjectedCurve): gp_Circ2d {.noSideEffect,
    importcpp: "Circle", header: "ProjLib_ProjectedCurve.hxx".}
proc Ellipse*(this: ProjLib_ProjectedCurve): gp_Elips2d {.noSideEffect,
    importcpp: "Ellipse", header: "ProjLib_ProjectedCurve.hxx".}
proc Hyperbola*(this: ProjLib_ProjectedCurve): gp_Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "ProjLib_ProjectedCurve.hxx".}
proc Parabola*(this: ProjLib_ProjectedCurve): gp_Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "ProjLib_ProjectedCurve.hxx".}
proc Degree*(this: ProjLib_ProjectedCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "ProjLib_ProjectedCurve.hxx".}
proc IsRational*(this: ProjLib_ProjectedCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "ProjLib_ProjectedCurve.hxx".}
proc NbPoles*(this: ProjLib_ProjectedCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "ProjLib_ProjectedCurve.hxx".}
proc NbKnots*(this: ProjLib_ProjectedCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "ProjLib_ProjectedCurve.hxx".}
proc Bezier*(this: ProjLib_ProjectedCurve): handle[Geom2d_BezierCurve] {.
    noSideEffect, importcpp: "Bezier", header: "ProjLib_ProjectedCurve.hxx".}
proc BSpline*(this: ProjLib_ProjectedCurve): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "ProjLib_ProjectedCurve.hxx".}