##  Created on: 1995-05-02
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  Adaptor2dLine2d* {.importcpp: "Adaptor2d_Line2d", header: "Adaptor2d_Line2d.hxx",
                    bycopy.} = object of Adaptor2dCurve2d


proc newAdaptor2dLine2d*(): Adaptor2dLine2d {.cdecl, constructor,
    importcpp: "Adaptor2d_Line2d(@)", dynlib: tkg2d.}
proc newAdaptor2dLine2d*(p: Pnt2d; d: Dir2d; uFirst: cfloat; uLast: cfloat): Adaptor2dLine2d {.
    cdecl, constructor, importcpp: "Adaptor2d_Line2d(@)", dynlib: tkg2d.}
proc load*(this: var Adaptor2dLine2d; L: Lin2d) {.cdecl, importcpp: "Load", dynlib: tkg2d.}
proc load*(this: var Adaptor2dLine2d; L: Lin2d; uFirst: cfloat; uLast: cfloat) {.cdecl,
    importcpp: "Load", dynlib: tkg2d.}
proc firstParameter*(this: Adaptor2dLine2d): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg2d.}
proc lastParameter*(this: Adaptor2dLine2d): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg2d.}
proc continuity*(this: Adaptor2dLine2d): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg2d.}
proc nbIntervals*(this: Adaptor2dLine2d; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkg2d.}
proc intervals*(this: Adaptor2dLine2d; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkg2d.}
proc trim*(this: Adaptor2dLine2d; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor2dHCurve2d] {.noSideEffect, cdecl, importcpp: "Trim", dynlib: tkg2d.}
proc isClosed*(this: Adaptor2dLine2d): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", dynlib: tkg2d.}
proc isPeriodic*(this: Adaptor2dLine2d): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkg2d.}
proc period*(this: Adaptor2dLine2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", dynlib: tkg2d.}
proc value*(this: Adaptor2dLine2d; x: cfloat): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkg2d.}
proc d0*(this: Adaptor2dLine2d; x: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg2d.}
proc d1*(this: Adaptor2dLine2d; x: cfloat; p: var Pnt2d; v: var Vec2d) {.noSideEffect,
    cdecl, importcpp: "D1", dynlib: tkg2d.}
proc d2*(this: Adaptor2dLine2d; x: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkg2d.}
proc d3*(this: Adaptor2dLine2d; x: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkg2d.}
proc dn*(this: Adaptor2dLine2d; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg2d.}
proc resolution*(this: Adaptor2dLine2d; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkg2d.}
proc getType*(this: Adaptor2dLine2d): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkg2d.}
proc line*(this: Adaptor2dLine2d): Lin2d {.noSideEffect, cdecl, importcpp: "Line",
                                       dynlib: tkg2d.}
proc circle*(this: Adaptor2dLine2d): Circ2d {.noSideEffect, cdecl,
    importcpp: "Circle", dynlib: tkg2d.}
proc ellipse*(this: Adaptor2dLine2d): Elips2d {.noSideEffect, cdecl,
    importcpp: "Ellipse", dynlib: tkg2d.}
proc hyperbola*(this: Adaptor2dLine2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Hyperbola", dynlib: tkg2d.}
proc parabola*(this: Adaptor2dLine2d): Parab2d {.noSideEffect, cdecl,
    importcpp: "Parabola", dynlib: tkg2d.}
proc degree*(this: Adaptor2dLine2d): cint {.noSideEffect, cdecl, importcpp: "Degree",
                                        dynlib: tkg2d.}
proc isRational*(this: Adaptor2dLine2d): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkg2d.}
proc nbPoles*(this: Adaptor2dLine2d): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkg2d.}
proc nbKnots*(this: Adaptor2dLine2d): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", dynlib: tkg2d.}
proc bezier*(this: Adaptor2dLine2d): Handle[Geom2dBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", dynlib: tkg2d.}
proc bSpline*(this: Adaptor2dLine2d): Handle[Geom2dBSplineCurve] {.noSideEffect,
    cdecl, importcpp: "BSpline", dynlib: tkg2d.}