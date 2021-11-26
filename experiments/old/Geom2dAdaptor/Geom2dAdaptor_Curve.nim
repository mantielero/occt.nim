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
  Geom2dAdaptorCurve* {.importcpp: "Geom2dAdaptor_Curve",
                       header: "Geom2dAdaptor_Curve.hxx", bycopy.} = object of Adaptor2dCurve2d
    ## /< B-spline representation to prevent castings
    ## /< Cached data for B-spline or Bezier curve
    ## /< Calculates value of offset curve


proc `new`*(this: var Geom2dAdaptorCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dAdaptor_Curve::operator new",
    header: "Geom2dAdaptor_Curve.hxx".}
proc `delete`*(this: var Geom2dAdaptorCurve; theAddress: pointer) {.
    importcpp: "Geom2dAdaptor_Curve::operator delete",
    header: "Geom2dAdaptor_Curve.hxx".}
proc `new[]`*(this: var Geom2dAdaptorCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dAdaptor_Curve::operator new[]",
    header: "Geom2dAdaptor_Curve.hxx".}
proc `delete[]`*(this: var Geom2dAdaptorCurve; theAddress: pointer) {.
    importcpp: "Geom2dAdaptor_Curve::operator delete[]",
    header: "Geom2dAdaptor_Curve.hxx".}
proc `new`*(this: var Geom2dAdaptorCurve; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dAdaptor_Curve::operator new",
    header: "Geom2dAdaptor_Curve.hxx".}
proc `delete`*(this: var Geom2dAdaptorCurve; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dAdaptor_Curve::operator delete",
    header: "Geom2dAdaptor_Curve.hxx".}
proc constructGeom2dAdaptorCurve*(): Geom2dAdaptorCurve {.constructor,
    importcpp: "Geom2dAdaptor_Curve(@)", header: "Geom2dAdaptor_Curve.hxx".}
proc constructGeom2dAdaptorCurve*(c: Handle[Geom2dCurve]): Geom2dAdaptorCurve {.
    constructor, importcpp: "Geom2dAdaptor_Curve(@)",
    header: "Geom2dAdaptor_Curve.hxx".}
proc constructGeom2dAdaptorCurve*(c: Handle[Geom2dCurve]; uFirst: StandardReal;
                                 uLast: StandardReal): Geom2dAdaptorCurve {.
    constructor, importcpp: "Geom2dAdaptor_Curve(@)",
    header: "Geom2dAdaptor_Curve.hxx".}
proc reset*(this: var Geom2dAdaptorCurve) {.importcpp: "Reset",
                                        header: "Geom2dAdaptor_Curve.hxx".}
proc load*(this: var Geom2dAdaptorCurve; c: Handle[Geom2dCurve]) {.importcpp: "Load",
    header: "Geom2dAdaptor_Curve.hxx".}
proc load*(this: var Geom2dAdaptorCurve; c: Handle[Geom2dCurve]; uFirst: StandardReal;
          uLast: StandardReal) {.importcpp: "Load",
                               header: "Geom2dAdaptor_Curve.hxx".}
proc curve*(this: Geom2dAdaptorCurve): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "Curve", header: "Geom2dAdaptor_Curve.hxx".}
proc firstParameter*(this: Geom2dAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2dAdaptor_Curve.hxx".}
proc lastParameter*(this: Geom2dAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2dAdaptor_Curve.hxx".}
proc continuity*(this: Geom2dAdaptorCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2dAdaptor_Curve.hxx".}
proc nbIntervals*(this: Geom2dAdaptorCurve; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "Geom2dAdaptor_Curve.hxx".}
proc intervals*(this: Geom2dAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Geom2dAdaptor_Curve.hxx".}
proc trim*(this: Geom2dAdaptorCurve; first: StandardReal; last: StandardReal;
          tol: StandardReal): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "Trim", header: "Geom2dAdaptor_Curve.hxx".}
proc isClosed*(this: Geom2dAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2dAdaptor_Curve.hxx".}
proc isPeriodic*(this: Geom2dAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2dAdaptor_Curve.hxx".}
proc period*(this: Geom2dAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "Period", header: "Geom2dAdaptor_Curve.hxx".}
proc value*(this: Geom2dAdaptorCurve; u: StandardReal): Pnt2d {.noSideEffect,
    importcpp: "Value", header: "Geom2dAdaptor_Curve.hxx".}
proc d0*(this: Geom2dAdaptorCurve; u: StandardReal; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2dAdaptor_Curve.hxx".}
proc d1*(this: Geom2dAdaptorCurve; u: StandardReal; p: var Pnt2d; v: var Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2dAdaptor_Curve.hxx".}
proc d2*(this: Geom2dAdaptorCurve; u: StandardReal; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d) {.noSideEffect, importcpp: "D2",
                      header: "Geom2dAdaptor_Curve.hxx".}
proc d3*(this: Geom2dAdaptorCurve; u: StandardReal; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d; v3: var Vec2d) {.noSideEffect, importcpp: "D3",
                                  header: "Geom2dAdaptor_Curve.hxx".}
proc dn*(this: Geom2dAdaptorCurve; u: StandardReal; n: int): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Geom2dAdaptor_Curve.hxx".}
proc resolution*(this: Geom2dAdaptorCurve; ruv: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "Geom2dAdaptor_Curve.hxx".}
proc getType*(this: Geom2dAdaptorCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "Geom2dAdaptor_Curve.hxx".}
proc line*(this: Geom2dAdaptorCurve): Lin2d {.noSideEffect, importcpp: "Line",
    header: "Geom2dAdaptor_Curve.hxx".}
proc circle*(this: Geom2dAdaptorCurve): Circ2d {.noSideEffect, importcpp: "Circle",
    header: "Geom2dAdaptor_Curve.hxx".}
proc ellipse*(this: Geom2dAdaptorCurve): Elips2d {.noSideEffect,
    importcpp: "Ellipse", header: "Geom2dAdaptor_Curve.hxx".}
proc hyperbola*(this: Geom2dAdaptorCurve): Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "Geom2dAdaptor_Curve.hxx".}
proc parabola*(this: Geom2dAdaptorCurve): Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "Geom2dAdaptor_Curve.hxx".}
proc degree*(this: Geom2dAdaptorCurve): int {.noSideEffect, importcpp: "Degree",
    header: "Geom2dAdaptor_Curve.hxx".}
proc isRational*(this: Geom2dAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom2dAdaptor_Curve.hxx".}
proc nbPoles*(this: Geom2dAdaptorCurve): int {.noSideEffect, importcpp: "NbPoles",
    header: "Geom2dAdaptor_Curve.hxx".}
proc nbKnots*(this: Geom2dAdaptorCurve): int {.noSideEffect, importcpp: "NbKnots",
    header: "Geom2dAdaptor_Curve.hxx".}
proc nbSamples*(this: Geom2dAdaptorCurve): int {.noSideEffect,
    importcpp: "NbSamples", header: "Geom2dAdaptor_Curve.hxx".}
proc bezier*(this: Geom2dAdaptorCurve): Handle[Geom2dBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Geom2dAdaptor_Curve.hxx".}
proc bSpline*(this: Geom2dAdaptorCurve): Handle[Geom2dBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Geom2dAdaptor_Curve.hxx".}