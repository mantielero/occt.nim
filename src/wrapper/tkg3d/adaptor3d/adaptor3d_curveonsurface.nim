import adaptor3d_types

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


proc newAdaptor3dCurveOnSurface*(): Adaptor3dCurveOnSurface {.cdecl, constructor,
    importcpp: "Adaptor3d_CurveOnSurface(@)", header: "Adaptor3d_CurveOnSurface.hxx".}
proc newAdaptor3dCurveOnSurface*(s: Handle[Adaptor3dHSurface]): Adaptor3dCurveOnSurface {.
    cdecl, constructor, importcpp: "Adaptor3d_CurveOnSurface(@)", header: "Adaptor3d_CurveOnSurface.hxx".}
proc newAdaptor3dCurveOnSurface*(c: Handle[Adaptor2dHCurve2d];
                                s: Handle[Adaptor3dHSurface]): Adaptor3dCurveOnSurface {.
    cdecl, constructor, importcpp: "Adaptor3d_CurveOnSurface(@)", header: "Adaptor3d_CurveOnSurface.hxx".}
proc load*(this: var Adaptor3dCurveOnSurface; s: Handle[Adaptor3dHSurface]) {.cdecl,
    importcpp: "Load", header: "Adaptor3d_CurveOnSurface.hxx".}
proc load*(this: var Adaptor3dCurveOnSurface; c: Handle[Adaptor2dHCurve2d]) {.cdecl,
    importcpp: "Load", header: "Adaptor3d_CurveOnSurface.hxx".}
proc load*(this: var Adaptor3dCurveOnSurface; c: Handle[Adaptor2dHCurve2d];
          s: Handle[Adaptor3dHSurface]) {.cdecl, importcpp: "Load", header: "Adaptor3d_CurveOnSurface.hxx".}
proc getCurve*(this: Adaptor3dCurveOnSurface): Handle[Adaptor2dHCurve2d] {.
    noSideEffect, cdecl, importcpp: "GetCurve", header: "Adaptor3d_CurveOnSurface.hxx".}
proc getSurface*(this: Adaptor3dCurveOnSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "GetSurface", header: "Adaptor3d_CurveOnSurface.hxx".}
proc changeCurve*(this: var Adaptor3dCurveOnSurface): var Handle[Adaptor2dHCurve2d] {.
    cdecl, importcpp: "ChangeCurve", header: "Adaptor3d_CurveOnSurface.hxx".}
proc changeSurface*(this: var Adaptor3dCurveOnSurface): var Handle[Adaptor3dHSurface] {.
    cdecl, importcpp: "ChangeSurface", header: "Adaptor3d_CurveOnSurface.hxx".}
proc firstParameter*(this: Adaptor3dCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Adaptor3d_CurveOnSurface.hxx".}
proc lastParameter*(this: Adaptor3dCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Adaptor3d_CurveOnSurface.hxx".}
proc continuity*(this: Adaptor3dCurveOnSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Adaptor3d_CurveOnSurface.hxx".}
proc nbIntervals*(this: Adaptor3dCurveOnSurface; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "Adaptor3d_CurveOnSurface.hxx".}
proc intervals*(this: Adaptor3dCurveOnSurface; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "Adaptor3d_CurveOnSurface.hxx".}
proc trim*(this: Adaptor3dCurveOnSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", header: "Adaptor3d_CurveOnSurface.hxx".}
proc isClosed*(this: Adaptor3dCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Adaptor3d_CurveOnSurface.hxx".}
proc isPeriodic*(this: Adaptor3dCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Adaptor3d_CurveOnSurface.hxx".}
proc period*(this: Adaptor3dCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Adaptor3d_CurveOnSurface.hxx".}
proc value*(this: Adaptor3dCurveOnSurface; u: cfloat): PntObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "Adaptor3d_CurveOnSurface.hxx".}
proc d0*(this: Adaptor3dCurveOnSurface; u: cfloat; p: var PntObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Adaptor3d_CurveOnSurface.hxx".}
proc d1*(this: Adaptor3dCurveOnSurface; u: cfloat; p: var PntObj; v: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Adaptor3d_CurveOnSurface.hxx".}
proc d2*(this: Adaptor3dCurveOnSurface; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Adaptor3d_CurveOnSurface.hxx".}
proc d3*(this: Adaptor3dCurveOnSurface; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj;
        v3: var VecObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Adaptor3d_CurveOnSurface.hxx".}
proc dn*(this: Adaptor3dCurveOnSurface; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Adaptor3d_CurveOnSurface.hxx".}
proc resolution*(this: Adaptor3dCurveOnSurface; r3d: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "Resolution", header: "Adaptor3d_CurveOnSurface.hxx".}
proc getType*(this: Adaptor3dCurveOnSurface): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "Adaptor3d_CurveOnSurface.hxx".}
proc line*(this: Adaptor3dCurveOnSurface): LinObj {.noSideEffect, cdecl,
    importcpp: "Line", header: "Adaptor3d_CurveOnSurface.hxx".}
proc circle*(this: Adaptor3dCurveOnSurface): CircObj {.noSideEffect, cdecl,
    importcpp: "Circle", header: "Adaptor3d_CurveOnSurface.hxx".}
proc ellipse*(this: Adaptor3dCurveOnSurface): ElipsObj {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "Adaptor3d_CurveOnSurface.hxx".}
proc hyperbola*(this: Adaptor3dCurveOnSurface): HyprObj {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "Adaptor3d_CurveOnSurface.hxx".}
proc parabola*(this: Adaptor3dCurveOnSurface): ParabObj {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "Adaptor3d_CurveOnSurface.hxx".}
proc degree*(this: Adaptor3dCurveOnSurface): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "Adaptor3d_CurveOnSurface.hxx".}
proc isRational*(this: Adaptor3dCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Adaptor3d_CurveOnSurface.hxx".}
proc nbPoles*(this: Adaptor3dCurveOnSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Adaptor3d_CurveOnSurface.hxx".}
proc nbKnots*(this: Adaptor3dCurveOnSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "Adaptor3d_CurveOnSurface.hxx".}
proc bezier*(this: Adaptor3dCurveOnSurface): Handle[GeomBezierCurve] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "Adaptor3d_CurveOnSurface.hxx".}
proc bSpline*(this: Adaptor3dCurveOnSurface): Handle[GeomBSplineCurve] {.
    noSideEffect, cdecl, importcpp: "BSpline", header: "Adaptor3d_CurveOnSurface.hxx".}
