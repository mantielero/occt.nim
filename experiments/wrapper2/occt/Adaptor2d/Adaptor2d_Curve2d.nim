##  Created on: 1993-04-02
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
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
  Adaptor2dCurve2d* {.importcpp: "Adaptor2d_Curve2d",
                     header: "Adaptor2d_Curve2d.hxx", bycopy.} = object of RootObj


proc firstParameter*(this: Adaptor2dCurve2d): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor2d_Curve2d.hxx".}
proc lastParameter*(this: Adaptor2dCurve2d): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor2d_Curve2d.hxx".}
proc continuity*(this: Adaptor2dCurve2d): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor2d_Curve2d.hxx".}
proc nbIntervals*(this: Adaptor2dCurve2d; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "Adaptor2d_Curve2d.hxx".}
#[ proc intervals*(this: Adaptor2dCurve2d; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Adaptor2d_Curve2d.hxx".} ]#
proc trim*(this: Adaptor2dCurve2d; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor2dHCurve2d] {.noSideEffect, importcpp: "Trim",
                        header: "Adaptor2d_Curve2d.hxx".}
proc isClosed*(this: Adaptor2dCurve2d): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Adaptor2d_Curve2d.hxx".}
proc isPeriodic*(this: Adaptor2dCurve2d): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor2d_Curve2d.hxx".}
proc period*(this: Adaptor2dCurve2d): cfloat {.noSideEffect, importcpp: "Period",
    header: "Adaptor2d_Curve2d.hxx".}
proc value*(this: Adaptor2dCurve2d; u: cfloat): Pnt2d {.noSideEffect,
    importcpp: "Value", header: "Adaptor2d_Curve2d.hxx".}
proc d0*(this: Adaptor2dCurve2d; u: cfloat; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Adaptor2d_Curve2d.hxx".}
proc d1*(this: Adaptor2dCurve2d; u: cfloat; p: var Pnt2d; v: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "Adaptor2d_Curve2d.hxx".}
proc d2*(this: Adaptor2dCurve2d; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Adaptor2d_Curve2d.hxx".}
proc d3*(this: Adaptor2dCurve2d; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3",
                      header: "Adaptor2d_Curve2d.hxx".}
proc dn*(this: Adaptor2dCurve2d; u: cfloat; n: cint): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Adaptor2d_Curve2d.hxx".}
proc resolution*(this: Adaptor2dCurve2d; r3d: cfloat): cfloat {.noSideEffect,
    importcpp: "Resolution", header: "Adaptor2d_Curve2d.hxx".}
proc getType*(this: Adaptor2dCurve2d): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor2d_Curve2d.hxx".}
proc line*(this: Adaptor2dCurve2d): Lin2d {.noSideEffect, importcpp: "Line",
                                        header: "Adaptor2d_Curve2d.hxx".}
proc circle*(this: Adaptor2dCurve2d): Circ2d {.noSideEffect, importcpp: "Circle",
    header: "Adaptor2d_Curve2d.hxx".}
proc ellipse*(this: Adaptor2dCurve2d): Elips2d {.noSideEffect, importcpp: "Ellipse",
    header: "Adaptor2d_Curve2d.hxx".}
proc hyperbola*(this: Adaptor2dCurve2d): Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor2d_Curve2d.hxx".}
proc parabola*(this: Adaptor2dCurve2d): Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "Adaptor2d_Curve2d.hxx".}
proc degree*(this: Adaptor2dCurve2d): cint {.noSideEffect, importcpp: "Degree",
    header: "Adaptor2d_Curve2d.hxx".}
proc isRational*(this: Adaptor2dCurve2d): bool {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor2d_Curve2d.hxx".}
proc nbPoles*(this: Adaptor2dCurve2d): cint {.noSideEffect, importcpp: "NbPoles",
    header: "Adaptor2d_Curve2d.hxx".}
proc nbKnots*(this: Adaptor2dCurve2d): cint {.noSideEffect, importcpp: "NbKnots",
    header: "Adaptor2d_Curve2d.hxx".}
proc nbSamples*(this: Adaptor2dCurve2d): cint {.noSideEffect, importcpp: "NbSamples",
    header: "Adaptor2d_Curve2d.hxx".}
proc bezier*(this: Adaptor2dCurve2d): Handle[Geom2dBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor2d_Curve2d.hxx".}
proc bSpline*(this: Adaptor2dCurve2d): Handle[Geom2dBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor2d_Curve2d.hxx".}
proc destroyAdaptor2dCurve2d*(this: var Adaptor2dCurve2d) {.
    importcpp: "#.~Adaptor2d_Curve2d()", header: "Adaptor2d_Curve2d.hxx".}

























