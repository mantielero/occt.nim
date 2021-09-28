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


proc `new`*(this: var GeomAdaptorCurve; theSize: csize_t): pointer {.
    importcpp: "GeomAdaptor_Curve::operator new", header: "GeomAdaptor_Curve.hxx".}
proc `delete`*(this: var GeomAdaptorCurve; theAddress: pointer) {.
    importcpp: "GeomAdaptor_Curve::operator delete",
    header: "GeomAdaptor_Curve.hxx".}
proc `new[]`*(this: var GeomAdaptorCurve; theSize: csize_t): pointer {.
    importcpp: "GeomAdaptor_Curve::operator new[]",
    header: "GeomAdaptor_Curve.hxx".}
proc `delete[]`*(this: var GeomAdaptorCurve; theAddress: pointer) {.
    importcpp: "GeomAdaptor_Curve::operator delete[]",
    header: "GeomAdaptor_Curve.hxx".}
proc `new`*(this: var GeomAdaptorCurve; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomAdaptor_Curve::operator new", header: "GeomAdaptor_Curve.hxx".}
proc `delete`*(this: var GeomAdaptorCurve; a2: pointer; a3: pointer) {.
    importcpp: "GeomAdaptor_Curve::operator delete",
    header: "GeomAdaptor_Curve.hxx".}
proc constructGeomAdaptorCurve*(): GeomAdaptorCurve {.constructor,
    importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc constructGeomAdaptorCurve*(c: Handle[GeomCurve]): GeomAdaptorCurve {.
    constructor, importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc constructGeomAdaptorCurve*(c: Handle[GeomCurve]; uFirst: StandardReal;
                               uLast: StandardReal): GeomAdaptorCurve {.
    constructor, importcpp: "GeomAdaptor_Curve(@)", header: "GeomAdaptor_Curve.hxx".}
proc reset*(this: var GeomAdaptorCurve) {.importcpp: "Reset",
                                      header: "GeomAdaptor_Curve.hxx".}
proc load*(this: var GeomAdaptorCurve; c: Handle[GeomCurve]) {.importcpp: "Load",
    header: "GeomAdaptor_Curve.hxx".}
proc load*(this: var GeomAdaptorCurve; c: Handle[GeomCurve]; uFirst: StandardReal;
          uLast: StandardReal) {.importcpp: "Load", header: "GeomAdaptor_Curve.hxx".}
proc curve*(this: GeomAdaptorCurve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomAdaptor_Curve.hxx".}
proc firstParameter*(this: GeomAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "GeomAdaptor_Curve.hxx".}
proc lastParameter*(this: GeomAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "GeomAdaptor_Curve.hxx".}
proc continuity*(this: GeomAdaptorCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "GeomAdaptor_Curve.hxx".}
proc nbIntervals*(this: GeomAdaptorCurve; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomAdaptor_Curve.hxx".}
proc intervals*(this: GeomAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomAdaptor_Curve.hxx".}
proc trim*(this: GeomAdaptorCurve; first: StandardReal; last: StandardReal;
          tol: StandardReal): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "Trim", header: "GeomAdaptor_Curve.hxx".}
proc isClosed*(this: GeomAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "GeomAdaptor_Curve.hxx".}
proc isPeriodic*(this: GeomAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "GeomAdaptor_Curve.hxx".}
proc period*(this: GeomAdaptorCurve): StandardReal {.noSideEffect,
    importcpp: "Period", header: "GeomAdaptor_Curve.hxx".}
proc value*(this: GeomAdaptorCurve; u: StandardReal): Pnt {.noSideEffect,
    importcpp: "Value", header: "GeomAdaptor_Curve.hxx".}
proc d0*(this: GeomAdaptorCurve; u: StandardReal; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "GeomAdaptor_Curve.hxx".}
proc d1*(this: GeomAdaptorCurve; u: StandardReal; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "GeomAdaptor_Curve.hxx".}
proc d2*(this: GeomAdaptorCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "GeomAdaptor_Curve.hxx".}
proc d3*(this: GeomAdaptorCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.noSideEffect, importcpp: "D3", header: "GeomAdaptor_Curve.hxx".}
proc dn*(this: GeomAdaptorCurve; u: StandardReal; n: int): Vec {.noSideEffect,
    importcpp: "DN", header: "GeomAdaptor_Curve.hxx".}
proc resolution*(this: GeomAdaptorCurve; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "GeomAdaptor_Curve.hxx".}
proc getType*(this: GeomAdaptorCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "GeomAdaptor_Curve.hxx".}
proc line*(this: GeomAdaptorCurve): Lin {.noSideEffect, importcpp: "Line",
                                      header: "GeomAdaptor_Curve.hxx".}
proc circle*(this: GeomAdaptorCurve): Circ {.noSideEffect, importcpp: "Circle",
    header: "GeomAdaptor_Curve.hxx".}
proc ellipse*(this: GeomAdaptorCurve): Elips {.noSideEffect, importcpp: "Ellipse",
    header: "GeomAdaptor_Curve.hxx".}
proc hyperbola*(this: GeomAdaptorCurve): Hypr {.noSideEffect, importcpp: "Hyperbola",
    header: "GeomAdaptor_Curve.hxx".}
proc parabola*(this: GeomAdaptorCurve): Parab {.noSideEffect, importcpp: "Parabola",
    header: "GeomAdaptor_Curve.hxx".}
proc degree*(this: GeomAdaptorCurve): int {.noSideEffect, importcpp: "Degree",
                                        header: "GeomAdaptor_Curve.hxx".}
proc isRational*(this: GeomAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomAdaptor_Curve.hxx".}
proc nbPoles*(this: GeomAdaptorCurve): int {.noSideEffect, importcpp: "NbPoles",
    header: "GeomAdaptor_Curve.hxx".}
proc nbKnots*(this: GeomAdaptorCurve): int {.noSideEffect, importcpp: "NbKnots",
    header: "GeomAdaptor_Curve.hxx".}
proc bezier*(this: GeomAdaptorCurve): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "GeomAdaptor_Curve.hxx".}
proc bSpline*(this: GeomAdaptorCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "GeomAdaptor_Curve.hxx".}
proc offsetCurve*(this: GeomAdaptorCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "GeomAdaptor_Curve.hxx".}