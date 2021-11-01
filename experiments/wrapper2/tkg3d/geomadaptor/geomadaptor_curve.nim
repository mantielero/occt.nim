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
  GeomAdaptorCurve* {.importcpp: "GeomAdaptor_Curve",
                     header: "GeomAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve
    ## /< B-spline representation to prevent castings
    ## /< Cached data for B-spline or Bezier curve
    ## /< Calculates value of offset curve


proc newGeomAdaptorCurve*(): GeomAdaptorCurve {.cdecl, constructor,
    importcpp: "GeomAdaptor_Curve(@)", dynlib: tkg3d.}
proc newGeomAdaptorCurve*(c: Handle[GeomCurve]): GeomAdaptorCurve {.cdecl,
    constructor, importcpp: "GeomAdaptor_Curve(@)", dynlib: tkg3d.}
proc newGeomAdaptorCurve*(c: Handle[GeomCurve]; uFirst: cfloat; uLast: cfloat): GeomAdaptorCurve {.
    cdecl, constructor, importcpp: "GeomAdaptor_Curve(@)", dynlib: tkg3d.}
proc reset*(this: var GeomAdaptorCurve) {.cdecl, importcpp: "Reset", dynlib: tkg3d.}
proc load*(this: var GeomAdaptorCurve; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "Load", dynlib: tkg3d.}
proc load*(this: var GeomAdaptorCurve; c: Handle[GeomCurve]; uFirst: cfloat;
          uLast: cfloat) {.cdecl, importcpp: "Load", dynlib: tkg3d.}
proc curve*(this: GeomAdaptorCurve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkg3d.}
proc firstParameter*(this: GeomAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg3d.}
proc lastParameter*(this: GeomAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg3d.}
proc continuity*(this: GeomAdaptorCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg3d.}
proc nbIntervals*(this: GeomAdaptorCurve; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkg3d.}
proc intervals*(this: GeomAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkg3d.}
proc trim*(this: GeomAdaptorCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", dynlib: tkg3d.}
proc isClosed*(this: GeomAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", dynlib: tkg3d.}
proc isPeriodic*(this: GeomAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkg3d.}
proc period*(this: GeomAdaptorCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", dynlib: tkg3d.}
proc value*(this: GeomAdaptorCurve; u: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkg3d.}
proc d0*(this: GeomAdaptorCurve; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: GeomAdaptorCurve; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomAdaptorCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomAdaptorCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkg3d.}
proc dn*(this: GeomAdaptorCurve; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg3d.}
proc resolution*(this: GeomAdaptorCurve; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkg3d.}
proc getType*(this: GeomAdaptorCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkg3d.}
proc line*(this: GeomAdaptorCurve): Lin {.noSideEffect, cdecl, importcpp: "Line",
                                      dynlib: tkg3d.}
proc circle*(this: GeomAdaptorCurve): Circ {.noSideEffect, cdecl, importcpp: "Circle",
    dynlib: tkg3d.}
proc ellipse*(this: GeomAdaptorCurve): Elips {.noSideEffect, cdecl,
    importcpp: "Ellipse", dynlib: tkg3d.}
proc hyperbola*(this: GeomAdaptorCurve): Hypr {.noSideEffect, cdecl,
    importcpp: "Hyperbola", dynlib: tkg3d.}
proc parabola*(this: GeomAdaptorCurve): Parab {.noSideEffect, cdecl,
    importcpp: "Parabola", dynlib: tkg3d.}
proc degree*(this: GeomAdaptorCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
    dynlib: tkg3d.}
proc isRational*(this: GeomAdaptorCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkg3d.}
proc nbPoles*(this: GeomAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkg3d.}
proc nbKnots*(this: GeomAdaptorCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", dynlib: tkg3d.}
proc bezier*(this: GeomAdaptorCurve): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", dynlib: tkg3d.}
proc bSpline*(this: GeomAdaptorCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "BSpline", dynlib: tkg3d.}
proc offsetCurve*(this: GeomAdaptorCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    cdecl, importcpp: "OffsetCurve", dynlib: tkg3d.}