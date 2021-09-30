##  Created on: 1993-03-11
##  Created by: Isabelle GRIGNON
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
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
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
type
  Adaptor3dIsoCurve* {.importcpp: "Adaptor3d_IsoCurve",
                      header: "Adaptor3d_IsoCurve.hxx", bycopy.} = object of Adaptor3dCurve ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## iso
                                                                                     ## is
                                                                                     ## set
                                                                                     ## to
                                                                                     ## NoneIso.


proc constructAdaptor3dIsoCurve*(): Adaptor3dIsoCurve {.constructor,
    importcpp: "Adaptor3d_IsoCurve(@)", header: "Adaptor3d_IsoCurve.hxx".}
proc constructAdaptor3dIsoCurve*(s: Handle[Adaptor3dHSurface]): Adaptor3dIsoCurve {.
    constructor, importcpp: "Adaptor3d_IsoCurve(@)",
    header: "Adaptor3d_IsoCurve.hxx".}
proc constructAdaptor3dIsoCurve*(s: Handle[Adaptor3dHSurface]; iso: GeomAbsIsoType;
                                param: cfloat): Adaptor3dIsoCurve {.constructor,
    importcpp: "Adaptor3d_IsoCurve(@)", header: "Adaptor3d_IsoCurve.hxx".}
proc constructAdaptor3dIsoCurve*(s: Handle[Adaptor3dHSurface]; iso: GeomAbsIsoType;
                                param: cfloat; wFirst: cfloat; wLast: cfloat): Adaptor3dIsoCurve {.
    constructor, importcpp: "Adaptor3d_IsoCurve(@)",
    header: "Adaptor3d_IsoCurve.hxx".}
proc load*(this: var Adaptor3dIsoCurve; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Load", header: "Adaptor3d_IsoCurve.hxx".}
proc load*(this: var Adaptor3dIsoCurve; iso: GeomAbsIsoType; param: cfloat) {.
    importcpp: "Load", header: "Adaptor3d_IsoCurve.hxx".}
proc load*(this: var Adaptor3dIsoCurve; iso: GeomAbsIsoType; param: cfloat;
          wFirst: cfloat; wLast: cfloat) {.importcpp: "Load",
                                       header: "Adaptor3d_IsoCurve.hxx".}
proc surface*(this: Adaptor3dIsoCurve): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "Surface", header: "Adaptor3d_IsoCurve.hxx".}
proc iso*(this: Adaptor3dIsoCurve): GeomAbsIsoType {.noSideEffect, importcpp: "Iso",
    header: "Adaptor3d_IsoCurve.hxx".}
proc parameter*(this: Adaptor3dIsoCurve): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "Adaptor3d_IsoCurve.hxx".}
proc firstParameter*(this: Adaptor3dIsoCurve): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor3d_IsoCurve.hxx".}
proc lastParameter*(this: Adaptor3dIsoCurve): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor3d_IsoCurve.hxx".}
proc continuity*(this: Adaptor3dIsoCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor3d_IsoCurve.hxx".}
proc nbIntervals*(this: Adaptor3dIsoCurve; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "Adaptor3d_IsoCurve.hxx".}
#[ proc intervals*(this: Adaptor3dIsoCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Adaptor3d_IsoCurve.hxx".} ]#
proc trim*(this: Adaptor3dIsoCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, importcpp: "Trim",
                      header: "Adaptor3d_IsoCurve.hxx".}
proc isClosed*(this: Adaptor3dIsoCurve): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Adaptor3d_IsoCurve.hxx".}
proc isPeriodic*(this: Adaptor3dIsoCurve): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor3d_IsoCurve.hxx".}
proc period*(this: Adaptor3dIsoCurve): cfloat {.noSideEffect, importcpp: "Period",
    header: "Adaptor3d_IsoCurve.hxx".}
proc value*(this: Adaptor3dIsoCurve; u: cfloat): Pnt {.noSideEffect,
    importcpp: "Value", header: "Adaptor3d_IsoCurve.hxx".}
proc d0*(this: Adaptor3dIsoCurve; u: cfloat; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Adaptor3d_IsoCurve.hxx".}
proc d1*(this: Adaptor3dIsoCurve; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Adaptor3d_IsoCurve.hxx".}
proc d2*(this: Adaptor3dIsoCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Adaptor3d_IsoCurve.hxx".}
proc d3*(this: Adaptor3dIsoCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "Adaptor3d_IsoCurve.hxx".}
proc dn*(this: Adaptor3dIsoCurve; u: cfloat; n: cint): Vec {.noSideEffect,
    importcpp: "DN", header: "Adaptor3d_IsoCurve.hxx".}
proc resolution*(this: Adaptor3dIsoCurve; r3d: cfloat): cfloat {.noSideEffect,
    importcpp: "Resolution", header: "Adaptor3d_IsoCurve.hxx".}
proc getType*(this: Adaptor3dIsoCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_IsoCurve.hxx".}
proc line*(this: Adaptor3dIsoCurve): Lin {.noSideEffect, importcpp: "Line",
                                       header: "Adaptor3d_IsoCurve.hxx".}
proc circle*(this: Adaptor3dIsoCurve): Circ {.noSideEffect, importcpp: "Circle",
    header: "Adaptor3d_IsoCurve.hxx".}
proc ellipse*(this: Adaptor3dIsoCurve): Elips {.noSideEffect, importcpp: "Ellipse",
    header: "Adaptor3d_IsoCurve.hxx".}
proc hyperbola*(this: Adaptor3dIsoCurve): Hypr {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor3d_IsoCurve.hxx".}
proc parabola*(this: Adaptor3dIsoCurve): Parab {.noSideEffect, importcpp: "Parabola",
    header: "Adaptor3d_IsoCurve.hxx".}
proc degree*(this: Adaptor3dIsoCurve): cint {.noSideEffect, importcpp: "Degree",
    header: "Adaptor3d_IsoCurve.hxx".}
proc isRational*(this: Adaptor3dIsoCurve): bool {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor3d_IsoCurve.hxx".}
proc nbPoles*(this: Adaptor3dIsoCurve): cint {.noSideEffect, importcpp: "NbPoles",
    header: "Adaptor3d_IsoCurve.hxx".}
proc nbKnots*(this: Adaptor3dIsoCurve): cint {.noSideEffect, importcpp: "NbKnots",
    header: "Adaptor3d_IsoCurve.hxx".}
proc bezier*(this: Adaptor3dIsoCurve): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_IsoCurve.hxx".}
proc bSpline*(this: Adaptor3dIsoCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_IsoCurve.hxx".}

























