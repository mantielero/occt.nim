##  Created on: 1994-02-23
##  Created by: model
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_OffsetCurve"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HCurve"
type
  HandleAdaptor3dHCurve* = Handle[Adaptor3dHCurve]

## ! Root class for 3D curves manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted curve is an interface between the
## ! services provided by a curve and those required of
## ! the curve by algorithms which use it.
## ! Two derived concrete classes are provided:
## ! - GeomAdaptor_HCurve for a curve from the Geom package
## ! - Adaptor3d_HCurveOnSurface for a curve lying
## ! on a surface from the Geom package.

type
  Adaptor3dHCurve* {.importcpp: "Adaptor3d_HCurve", header: "Adaptor3d_HCurve.hxx",
                    bycopy.} = object of StandardTransient ## ! Returns a pointer to the Curve inside the HCurve.


proc curve*(this: Adaptor3dHCurve): Adaptor3dCurve {.noSideEffect,
    importcpp: "Curve", header: "Adaptor3d_HCurve.hxx".}
proc getCurve*(this: var Adaptor3dHCurve): var Adaptor3dCurve {.importcpp: "GetCurve",
    header: "Adaptor3d_HCurve.hxx".}
proc firstParameter*(this: Adaptor3dHCurve): float {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor3d_HCurve.hxx".}
proc lastParameter*(this: Adaptor3dHCurve): float {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor3d_HCurve.hxx".}
proc continuity*(this: Adaptor3dHCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor3d_HCurve.hxx".}
proc nbIntervals*(this: Adaptor3dHCurve; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "Adaptor3d_HCurve.hxx".}
proc intervals*(this: Adaptor3dHCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Adaptor3d_HCurve.hxx".}
proc trim*(this: Adaptor3dHCurve; first: float; last: float; tol: float): Handle[
    Adaptor3dHCurve] {.noSideEffect, importcpp: "Trim",
                      header: "Adaptor3d_HCurve.hxx".}
proc isClosed*(this: Adaptor3dHCurve): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Adaptor3d_HCurve.hxx".}
proc isPeriodic*(this: Adaptor3dHCurve): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor3d_HCurve.hxx".}
proc period*(this: Adaptor3dHCurve): float {.noSideEffect, importcpp: "Period",
    header: "Adaptor3d_HCurve.hxx".}
proc value*(this: Adaptor3dHCurve; u: float): Pnt {.noSideEffect, importcpp: "Value",
    header: "Adaptor3d_HCurve.hxx".}
proc d0*(this: Adaptor3dHCurve; u: float; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Adaptor3d_HCurve.hxx".}
proc d1*(this: Adaptor3dHCurve; u: float; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Adaptor3d_HCurve.hxx".}
proc d2*(this: Adaptor3dHCurve; u: float; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Adaptor3d_HCurve.hxx".}
proc d3*(this: Adaptor3dHCurve; u: float; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "Adaptor3d_HCurve.hxx".}
proc dn*(this: Adaptor3dHCurve; u: float; n: int): Vec {.noSideEffect, importcpp: "DN",
    header: "Adaptor3d_HCurve.hxx".}
proc resolution*(this: Adaptor3dHCurve; r3d: float): float {.noSideEffect,
    importcpp: "Resolution", header: "Adaptor3d_HCurve.hxx".}
proc getType*(this: Adaptor3dHCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_HCurve.hxx".}
proc line*(this: Adaptor3dHCurve): Lin {.noSideEffect, importcpp: "Line",
                                     header: "Adaptor3d_HCurve.hxx".}
proc circle*(this: Adaptor3dHCurve): Circ {.noSideEffect, importcpp: "Circle",
                                        header: "Adaptor3d_HCurve.hxx".}
proc ellipse*(this: Adaptor3dHCurve): Elips {.noSideEffect, importcpp: "Ellipse",
    header: "Adaptor3d_HCurve.hxx".}
proc hyperbola*(this: Adaptor3dHCurve): Hypr {.noSideEffect, importcpp: "Hyperbola",
    header: "Adaptor3d_HCurve.hxx".}
proc parabola*(this: Adaptor3dHCurve): Parab {.noSideEffect, importcpp: "Parabola",
    header: "Adaptor3d_HCurve.hxx".}
proc degree*(this: Adaptor3dHCurve): int {.noSideEffect, importcpp: "Degree",
                                       header: "Adaptor3d_HCurve.hxx".}
proc isRational*(this: Adaptor3dHCurve): bool {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor3d_HCurve.hxx".}
proc nbPoles*(this: Adaptor3dHCurve): int {.noSideEffect, importcpp: "NbPoles",
                                        header: "Adaptor3d_HCurve.hxx".}
proc nbKnots*(this: Adaptor3dHCurve): int {.noSideEffect, importcpp: "NbKnots",
                                        header: "Adaptor3d_HCurve.hxx".}
proc bezier*(this: Adaptor3dHCurve): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_HCurve.hxx".}
proc bSpline*(this: Adaptor3dHCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_HCurve.hxx".}
proc offsetCurve*(this: Adaptor3dHCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "Adaptor3d_HCurve.hxx".}
type
  Adaptor3dHCurvebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Adaptor3d_HCurve::get_type_name(@)",
                            header: "Adaptor3d_HCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Adaptor3d_HCurve::get_type_descriptor(@)",
    header: "Adaptor3d_HCurve.hxx".}
proc dynamicType*(this: Adaptor3dHCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_HCurve.hxx".}
