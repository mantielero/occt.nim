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
proc nbIntervals*(this: GeomAdaptorCurve; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomAdaptor_Curve.hxx".}
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
proc value*(this: GeomAdaptorCurve; u: StandardReal): GpPnt {.noSideEffect,
    importcpp: "Value", header: "GeomAdaptor_Curve.hxx".}
proc d0*(this: GeomAdaptorCurve; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "GeomAdaptor_Curve.hxx".}
proc d1*(this: GeomAdaptorCurve; u: StandardReal; p: var GpPnt; v: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "GeomAdaptor_Curve.hxx".}
proc d2*(this: GeomAdaptorCurve; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.noSideEffect, importcpp: "D2",
                      header: "GeomAdaptor_Curve.hxx".}
proc d3*(this: GeomAdaptorCurve; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.noSideEffect, importcpp: "D3",
                                  header: "GeomAdaptor_Curve.hxx".}
proc dn*(this: GeomAdaptorCurve; u: StandardReal; n: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "GeomAdaptor_Curve.hxx".}
proc resolution*(this: GeomAdaptorCurve; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "GeomAdaptor_Curve.hxx".}
proc getType*(this: GeomAdaptorCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "GeomAdaptor_Curve.hxx".}
proc line*(this: GeomAdaptorCurve): GpLin {.noSideEffect, importcpp: "Line",
                                        header: "GeomAdaptor_Curve.hxx".}
proc circle*(this: GeomAdaptorCurve): GpCirc {.noSideEffect, importcpp: "Circle",
    header: "GeomAdaptor_Curve.hxx".}
proc ellipse*(this: GeomAdaptorCurve): GpElips {.noSideEffect, importcpp: "Ellipse",
    header: "GeomAdaptor_Curve.hxx".}
proc hyperbola*(this: GeomAdaptorCurve): GpHypr {.noSideEffect,
    importcpp: "Hyperbola", header: "GeomAdaptor_Curve.hxx".}
proc parabola*(this: GeomAdaptorCurve): GpParab {.noSideEffect,
    importcpp: "Parabola", header: "GeomAdaptor_Curve.hxx".}
proc degree*(this: GeomAdaptorCurve): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "GeomAdaptor_Curve.hxx".}
proc isRational*(this: GeomAdaptorCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomAdaptor_Curve.hxx".}
proc nbPoles*(this: GeomAdaptorCurve): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "GeomAdaptor_Curve.hxx".}
proc nbKnots*(this: GeomAdaptorCurve): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "GeomAdaptor_Curve.hxx".}
proc bezier*(this: GeomAdaptorCurve): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "GeomAdaptor_Curve.hxx".}
proc bSpline*(this: GeomAdaptorCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "GeomAdaptor_Curve.hxx".}
proc offsetCurve*(this: GeomAdaptorCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "GeomAdaptor_Curve.hxx".}

