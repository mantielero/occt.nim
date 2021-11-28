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
  Adaptor3dCurveOnSurface* {.importcpp: "Adaptor3d_CurveOnSurface",
                            header: "Adaptor3d_CurveOnSurface.hxx", bycopy.} = object of Adaptor3dCurve


proc newAdaptor3dCurveOnSurface*(): Adaptor3dCurveOnSurface {.cdecl, constructor,
    importcpp: "Adaptor3d_CurveOnSurface(@)", dynlib: tkg3d.}
proc newAdaptor3dCurveOnSurface*(s: Handle[Adaptor3dHSurface]): Adaptor3dCurveOnSurface {.
    cdecl, constructor, importcpp: "Adaptor3d_CurveOnSurface(@)", dynlib: tkg3d.}
proc newAdaptor3dCurveOnSurface*(c: Handle[Adaptor2dHCurve2d];
                                s: Handle[Adaptor3dHSurface]): Adaptor3dCurveOnSurface {.
    cdecl, constructor, importcpp: "Adaptor3d_CurveOnSurface(@)", dynlib: tkg3d.}
proc load*(this: var Adaptor3dCurveOnSurface; s: Handle[Adaptor3dHSurface]) {.cdecl,
    importcpp: "Load", dynlib: tkg3d.}
proc load*(this: var Adaptor3dCurveOnSurface; c: Handle[Adaptor2dHCurve2d]) {.cdecl,
    importcpp: "Load", dynlib: tkg3d.}
proc load*(this: var Adaptor3dCurveOnSurface; c: Handle[Adaptor2dHCurve2d];
          s: Handle[Adaptor3dHSurface]) {.cdecl, importcpp: "Load", dynlib: tkg3d.}
proc getCurve*(this: Adaptor3dCurveOnSurface): Handle[Adaptor2dHCurve2d] {.
    noSideEffect, cdecl, importcpp: "GetCurve", dynlib: tkg3d.}
proc getSurface*(this: Adaptor3dCurveOnSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "GetSurface", dynlib: tkg3d.}
proc changeCurve*(this: var Adaptor3dCurveOnSurface): var Handle[Adaptor2dHCurve2d] {.
    cdecl, importcpp: "ChangeCurve", dynlib: tkg3d.}
proc changeSurface*(this: var Adaptor3dCurveOnSurface): var Handle[Adaptor3dHSurface] {.
    cdecl, importcpp: "ChangeSurface", dynlib: tkg3d.}
proc firstParameter*(this: Adaptor3dCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg3d.}
proc lastParameter*(this: Adaptor3dCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg3d.}
proc continuity*(this: Adaptor3dCurveOnSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg3d.}
proc nbIntervals*(this: Adaptor3dCurveOnSurface; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", dynlib: tkg3d.}
proc intervals*(this: Adaptor3dCurveOnSurface; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkg3d.}
proc trim*(this: Adaptor3dCurveOnSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", dynlib: tkg3d.}
proc isClosed*(this: Adaptor3dCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", dynlib: tkg3d.}
proc isPeriodic*(this: Adaptor3dCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkg3d.}
proc period*(this: Adaptor3dCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", dynlib: tkg3d.}
proc value*(this: Adaptor3dCurveOnSurface; u: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkg3d.}
proc d0*(this: Adaptor3dCurveOnSurface; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: Adaptor3dCurveOnSurface; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect,
    cdecl, importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: Adaptor3dCurveOnSurface; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: Adaptor3dCurveOnSurface; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkg3d.}
proc dn*(this: Adaptor3dCurveOnSurface; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg3d.}
proc resolution*(this: Adaptor3dCurveOnSurface; r3d: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "Resolution", dynlib: tkg3d.}
proc getType*(this: Adaptor3dCurveOnSurface): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkg3d.}
proc line*(this: Adaptor3dCurveOnSurface): Lin {.noSideEffect, cdecl,
    importcpp: "Line", dynlib: tkg3d.}
proc circle*(this: Adaptor3dCurveOnSurface): Circ {.noSideEffect, cdecl,
    importcpp: "Circle", dynlib: tkg3d.}
proc ellipse*(this: Adaptor3dCurveOnSurface): Elips {.noSideEffect, cdecl,
    importcpp: "Ellipse", dynlib: tkg3d.}
proc hyperbola*(this: Adaptor3dCurveOnSurface): Hypr {.noSideEffect, cdecl,
    importcpp: "Hyperbola", dynlib: tkg3d.}
proc parabola*(this: Adaptor3dCurveOnSurface): Parab {.noSideEffect, cdecl,
    importcpp: "Parabola", dynlib: tkg3d.}
proc degree*(this: Adaptor3dCurveOnSurface): cint {.noSideEffect, cdecl,
    importcpp: "Degree", dynlib: tkg3d.}
proc isRational*(this: Adaptor3dCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkg3d.}
proc nbPoles*(this: Adaptor3dCurveOnSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkg3d.}
proc nbKnots*(this: Adaptor3dCurveOnSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", dynlib: tkg3d.}
proc bezier*(this: Adaptor3dCurveOnSurface): Handle[GeomBezierCurve] {.noSideEffect,
    cdecl, importcpp: "Bezier", dynlib: tkg3d.}
proc bSpline*(this: Adaptor3dCurveOnSurface): Handle[GeomBSplineCurve] {.
    noSideEffect, cdecl, importcpp: "BSpline", dynlib: tkg3d.}