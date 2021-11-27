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


proc newAdaptor2dOffsetCurve*(): Adaptor2dOffsetCurve {.cdecl, constructor,
    importcpp: "Adaptor2d_OffsetCurve(@)", header: "Adaptor2d_OffsetCurve.hxx".}
proc newAdaptor2dOffsetCurve*(c: Handle[Adaptor2dHCurve2d]): Adaptor2dOffsetCurve {.
    cdecl, constructor, importcpp: "Adaptor2d_OffsetCurve(@)", header: "Adaptor2d_OffsetCurve.hxx".}
proc newAdaptor2dOffsetCurve*(c: Handle[Adaptor2dHCurve2d]; offset: cfloat): Adaptor2dOffsetCurve {.
    cdecl, constructor, importcpp: "Adaptor2d_OffsetCurve(@)", header: "Adaptor2d_OffsetCurve.hxx".}
proc newAdaptor2dOffsetCurve*(c: Handle[Adaptor2dHCurve2d]; offset: cfloat;
                             wFirst: cfloat; wLast: cfloat): Adaptor2dOffsetCurve {.
    cdecl, constructor, importcpp: "Adaptor2d_OffsetCurve(@)", header: "Adaptor2d_OffsetCurve.hxx".}
proc load*(this: var Adaptor2dOffsetCurve; s: Handle[Adaptor2dHCurve2d]) {.cdecl,
    importcpp: "Load", header: "Adaptor2d_OffsetCurve.hxx".}
proc load*(this: var Adaptor2dOffsetCurve; offset: cfloat) {.cdecl, importcpp: "Load",
    header: "Adaptor2d_OffsetCurve.hxx".}
proc load*(this: var Adaptor2dOffsetCurve; offset: cfloat; wFirst: cfloat; wLast: cfloat) {.
    cdecl, importcpp: "Load", header: "Adaptor2d_OffsetCurve.hxx".}
proc curve*(this: Adaptor2dOffsetCurve): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    cdecl, importcpp: "Curve", header: "Adaptor2d_OffsetCurve.hxx".}
proc offset*(this: Adaptor2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Offset", header: "Adaptor2d_OffsetCurve.hxx".}
proc firstParameter*(this: Adaptor2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Adaptor2d_OffsetCurve.hxx".}
proc lastParameter*(this: Adaptor2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Adaptor2d_OffsetCurve.hxx".}
proc continuity*(this: Adaptor2dOffsetCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Adaptor2d_OffsetCurve.hxx".}
proc nbIntervals*(this: Adaptor2dOffsetCurve; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "Adaptor2d_OffsetCurve.hxx".}
proc intervals*(this: Adaptor2dOffsetCurve; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "Adaptor2d_OffsetCurve.hxx".}
proc trim*(this: Adaptor2dOffsetCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor2dHCurve2d] {.noSideEffect, cdecl, importcpp: "Trim", header: "Adaptor2d_OffsetCurve.hxx".}
proc isClosed*(this: Adaptor2dOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Adaptor2d_OffsetCurve.hxx".}
proc isPeriodic*(this: Adaptor2dOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Adaptor2d_OffsetCurve.hxx".}
proc period*(this: Adaptor2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Adaptor2d_OffsetCurve.hxx".}
proc value*(this: Adaptor2dOffsetCurve; u: cfloat): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Value", header: "Adaptor2d_OffsetCurve.hxx".}
proc d0*(this: Adaptor2dOffsetCurve; u: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Adaptor2d_OffsetCurve.hxx".}
proc d1*(this: Adaptor2dOffsetCurve; u: cfloat; p: var Pnt2d; v: var Vec2d) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Adaptor2d_OffsetCurve.hxx".}
proc d2*(this: Adaptor2dOffsetCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Adaptor2d_OffsetCurve.hxx".}
proc d3*(this: Adaptor2dOffsetCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", header: "Adaptor2d_OffsetCurve.hxx".}
proc dn*(this: Adaptor2dOffsetCurve; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", header: "Adaptor2d_OffsetCurve.hxx".}
proc resolution*(this: Adaptor2dOffsetCurve; r3d: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "Resolution", header: "Adaptor2d_OffsetCurve.hxx".}
proc getType*(this: Adaptor2dOffsetCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "Adaptor2d_OffsetCurve.hxx".}
proc line*(this: Adaptor2dOffsetCurve): Lin2d {.noSideEffect, cdecl,
    importcpp: "Line", header: "Adaptor2d_OffsetCurve.hxx".}
proc circle*(this: Adaptor2dOffsetCurve): Circ2d {.noSideEffect, cdecl,
    importcpp: "Circle", header: "Adaptor2d_OffsetCurve.hxx".}
proc ellipse*(this: Adaptor2dOffsetCurve): Elips2d {.noSideEffect, cdecl,
    importcpp: "Ellipse", header: "Adaptor2d_OffsetCurve.hxx".}
proc hyperbola*(this: Adaptor2dOffsetCurve): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Hyperbola", header: "Adaptor2d_OffsetCurve.hxx".}
proc parabola*(this: Adaptor2dOffsetCurve): Parab2d {.noSideEffect, cdecl,
    importcpp: "Parabola", header: "Adaptor2d_OffsetCurve.hxx".}
proc degree*(this: Adaptor2dOffsetCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "Adaptor2d_OffsetCurve.hxx".}
proc isRational*(this: Adaptor2dOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Adaptor2d_OffsetCurve.hxx".}
proc nbPoles*(this: Adaptor2dOffsetCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Adaptor2d_OffsetCurve.hxx".}
proc nbKnots*(this: Adaptor2dOffsetCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "Adaptor2d_OffsetCurve.hxx".}
proc bezier*(this: Adaptor2dOffsetCurve): Handle[Geom2dBezierCurve] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "Adaptor2d_OffsetCurve.hxx".}
proc bSpline*(this: Adaptor2dOffsetCurve): Handle[Geom2dBSplineCurve] {.
    noSideEffect, cdecl, importcpp: "BSpline", header: "Adaptor2d_OffsetCurve.hxx".}
proc nbSamples*(this: Adaptor2dOffsetCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbSamples", header: "Adaptor2d_OffsetCurve.hxx".}