##  Created on: 1993-04-15
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

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
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
  Adaptor2dOffsetCurve* {.importcpp: "Adaptor2d_OffsetCurve",
                         header: "Adaptor2d_OffsetCurve.hxx", bycopy.} = object of Adaptor2dCurve2d ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## Offset
                                                                                             ## is
                                                                                             ## set
                                                                                             ## to
                                                                                             ## 0.


proc constructAdaptor2dOffsetCurve*(): Adaptor2dOffsetCurve {.constructor,
    importcpp: "Adaptor2d_OffsetCurve(@)", header: "Adaptor2d_OffsetCurve.hxx".}
proc constructAdaptor2dOffsetCurve*(c: Handle[Adaptor2dHCurve2d]): Adaptor2dOffsetCurve {.
    constructor, importcpp: "Adaptor2d_OffsetCurve(@)",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc constructAdaptor2dOffsetCurve*(c: Handle[Adaptor2dHCurve2d];
                                   offset: StandardReal): Adaptor2dOffsetCurve {.
    constructor, importcpp: "Adaptor2d_OffsetCurve(@)",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc constructAdaptor2dOffsetCurve*(c: Handle[Adaptor2dHCurve2d];
                                   offset: StandardReal; wFirst: StandardReal;
                                   wLast: StandardReal): Adaptor2dOffsetCurve {.
    constructor, importcpp: "Adaptor2d_OffsetCurve(@)",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc load*(this: var Adaptor2dOffsetCurve; s: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "Load", header: "Adaptor2d_OffsetCurve.hxx".}
proc load*(this: var Adaptor2dOffsetCurve; offset: StandardReal) {.importcpp: "Load",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc load*(this: var Adaptor2dOffsetCurve; offset: StandardReal; wFirst: StandardReal;
          wLast: StandardReal) {.importcpp: "Load",
                               header: "Adaptor2d_OffsetCurve.hxx".}
proc curve*(this: Adaptor2dOffsetCurve): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "Curve", header: "Adaptor2d_OffsetCurve.hxx".}
proc offset*(this: Adaptor2dOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "Offset", header: "Adaptor2d_OffsetCurve.hxx".}
proc firstParameter*(this: Adaptor2dOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor2d_OffsetCurve.hxx".}
proc lastParameter*(this: Adaptor2dOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor2d_OffsetCurve.hxx".}
proc continuity*(this: Adaptor2dOffsetCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor2d_OffsetCurve.hxx".}
proc nbIntervals*(this: Adaptor2dOffsetCurve; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "Adaptor2d_OffsetCurve.hxx".}
proc intervals*(this: Adaptor2dOffsetCurve; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "Adaptor2d_OffsetCurve.hxx".}
proc trim*(this: Adaptor2dOffsetCurve; first: StandardReal; last: StandardReal;
          tol: StandardReal): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "Trim", header: "Adaptor2d_OffsetCurve.hxx".}
proc isClosed*(this: Adaptor2dOffsetCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Adaptor2d_OffsetCurve.hxx".}
proc isPeriodic*(this: Adaptor2dOffsetCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor2d_OffsetCurve.hxx".}
proc period*(this: Adaptor2dOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "Period", header: "Adaptor2d_OffsetCurve.hxx".}
proc value*(this: Adaptor2dOffsetCurve; u: StandardReal): GpPnt2d {.noSideEffect,
    importcpp: "Value", header: "Adaptor2d_OffsetCurve.hxx".}
proc d0*(this: Adaptor2dOffsetCurve; u: StandardReal; p: var GpPnt2d) {.noSideEffect,
    importcpp: "D0", header: "Adaptor2d_OffsetCurve.hxx".}
proc d1*(this: Adaptor2dOffsetCurve; u: StandardReal; p: var GpPnt2d; v: var GpVec2d) {.
    noSideEffect, importcpp: "D1", header: "Adaptor2d_OffsetCurve.hxx".}
proc d2*(this: Adaptor2dOffsetCurve; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.noSideEffect, importcpp: "D2",
                        header: "Adaptor2d_OffsetCurve.hxx".}
proc d3*(this: Adaptor2dOffsetCurve; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.noSideEffect, importcpp: "D3",
                                      header: "Adaptor2d_OffsetCurve.hxx".}
proc dn*(this: Adaptor2dOffsetCurve; u: StandardReal; n: StandardInteger): GpVec2d {.
    noSideEffect, importcpp: "DN", header: "Adaptor2d_OffsetCurve.hxx".}
proc resolution*(this: Adaptor2dOffsetCurve; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "Resolution", header: "Adaptor2d_OffsetCurve.hxx".}
proc getType*(this: Adaptor2dOffsetCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor2d_OffsetCurve.hxx".}
proc line*(this: Adaptor2dOffsetCurve): GpLin2d {.noSideEffect, importcpp: "Line",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc circle*(this: Adaptor2dOffsetCurve): GpCirc2d {.noSideEffect,
    importcpp: "Circle", header: "Adaptor2d_OffsetCurve.hxx".}
proc ellipse*(this: Adaptor2dOffsetCurve): GpElips2d {.noSideEffect,
    importcpp: "Ellipse", header: "Adaptor2d_OffsetCurve.hxx".}
proc hyperbola*(this: Adaptor2dOffsetCurve): GpHypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor2d_OffsetCurve.hxx".}
proc parabola*(this: Adaptor2dOffsetCurve): GpParab2d {.noSideEffect,
    importcpp: "Parabola", header: "Adaptor2d_OffsetCurve.hxx".}
proc degree*(this: Adaptor2dOffsetCurve): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "Adaptor2d_OffsetCurve.hxx".}
proc isRational*(this: Adaptor2dOffsetCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor2d_OffsetCurve.hxx".}
proc nbPoles*(this: Adaptor2dOffsetCurve): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "Adaptor2d_OffsetCurve.hxx".}
proc nbKnots*(this: Adaptor2dOffsetCurve): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "Adaptor2d_OffsetCurve.hxx".}
proc bezier*(this: Adaptor2dOffsetCurve): Handle[Geom2dBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor2d_OffsetCurve.hxx".}
proc bSpline*(this: Adaptor2dOffsetCurve): Handle[Geom2dBSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "Adaptor2d_OffsetCurve.hxx".}
proc nbSamples*(this: Adaptor2dOffsetCurve): StandardInteger {.noSideEffect,
    importcpp: "NbSamples", header: "Adaptor2d_OffsetCurve.hxx".}

