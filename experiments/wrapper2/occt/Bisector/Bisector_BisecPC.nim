##  Created on: 1994-01-10
##  Created by: Yves FRICAUD
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Bisector_BisecPC"
discard "forward decl of Bisector_BisecPC"
type
  HandleBisectorBisecPC* = Handle[BisectorBisecPC]

## ! Provides the bisector between a point and a curve.
## ! the curvature on the curve has to be monoton.
## ! the point can't be on the curve exept at the extremitys.

type
  BisectorBisecPC* {.importcpp: "Bisector_BisecPC", header: "Bisector_BisecPC.hxx",
                    bycopy.} = object of BisectorCurve


proc constructBisectorBisecPC*(): BisectorBisecPC {.constructor,
    importcpp: "Bisector_BisecPC(@)", header: "Bisector_BisecPC.hxx".}
proc constructBisectorBisecPC*(cu: Handle[Geom2dCurve]; p: Pnt2d; side: float;
                              distMax: float = 500): BisectorBisecPC {.constructor,
    importcpp: "Bisector_BisecPC(@)", header: "Bisector_BisecPC.hxx".}
proc constructBisectorBisecPC*(cu: Handle[Geom2dCurve]; p: Pnt2d; side: float;
                              uMin: float; uMax: float): BisectorBisecPC {.
    constructor, importcpp: "Bisector_BisecPC(@)", header: "Bisector_BisecPC.hxx".}
proc perform*(this: var BisectorBisecPC; cu: Handle[Geom2dCurve]; p: Pnt2d; side: float;
             distMax: float = 500) {.importcpp: "Perform",
                                 header: "Bisector_BisecPC.hxx".}
proc isExtendAtStart*(this: BisectorBisecPC): bool {.noSideEffect,
    importcpp: "IsExtendAtStart", header: "Bisector_BisecPC.hxx".}
proc isExtendAtEnd*(this: BisectorBisecPC): bool {.noSideEffect,
    importcpp: "IsExtendAtEnd", header: "Bisector_BisecPC.hxx".}
proc reverse*(this: var BisectorBisecPC) {.importcpp: "Reverse",
                                       header: "Bisector_BisecPC.hxx".}
proc reversedParameter*(this: BisectorBisecPC; u: float): float {.noSideEffect,
    importcpp: "ReversedParameter", header: "Bisector_BisecPC.hxx".}
proc copy*(this: BisectorBisecPC): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Bisector_BisecPC.hxx".}
proc transform*(this: var BisectorBisecPC; t: Trsf2d) {.importcpp: "Transform",
    header: "Bisector_BisecPC.hxx".}
proc isCN*(this: BisectorBisecPC; n: int): bool {.noSideEffect, importcpp: "IsCN",
    header: "Bisector_BisecPC.hxx".}
proc firstParameter*(this: BisectorBisecPC): float {.noSideEffect,
    importcpp: "FirstParameter", header: "Bisector_BisecPC.hxx".}
proc lastParameter*(this: BisectorBisecPC): float {.noSideEffect,
    importcpp: "LastParameter", header: "Bisector_BisecPC.hxx".}
proc continuity*(this: BisectorBisecPC): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Bisector_BisecPC.hxx".}
proc nbIntervals*(this: BisectorBisecPC): int {.noSideEffect,
    importcpp: "NbIntervals", header: "Bisector_BisecPC.hxx".}
proc intervalFirst*(this: BisectorBisecPC; index: int): float {.noSideEffect,
    importcpp: "IntervalFirst", header: "Bisector_BisecPC.hxx".}
proc intervalLast*(this: BisectorBisecPC; index: int): float {.noSideEffect,
    importcpp: "IntervalLast", header: "Bisector_BisecPC.hxx".}
proc intervalContinuity*(this: BisectorBisecPC): GeomAbsShape {.noSideEffect,
    importcpp: "IntervalContinuity", header: "Bisector_BisecPC.hxx".}
proc isClosed*(this: BisectorBisecPC): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Bisector_BisecPC.hxx".}
proc isPeriodic*(this: BisectorBisecPC): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Bisector_BisecPC.hxx".}
proc distance*(this: BisectorBisecPC; u: float): float {.noSideEffect,
    importcpp: "Distance", header: "Bisector_BisecPC.hxx".}
proc d0*(this: BisectorBisecPC; u: float; p: var Pnt2d) {.noSideEffect, importcpp: "D0",
    header: "Bisector_BisecPC.hxx".}
proc d1*(this: BisectorBisecPC; u: float; p: var Pnt2d; v: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "Bisector_BisecPC.hxx".}
proc d2*(this: BisectorBisecPC; u: float; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Bisector_BisecPC.hxx".}
proc d3*(this: BisectorBisecPC; u: float; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3", header: "Bisector_BisecPC.hxx".}
proc dn*(this: BisectorBisecPC; u: float; n: int): Vec2d {.noSideEffect, importcpp: "DN",
    header: "Bisector_BisecPC.hxx".}
proc dump*(this: BisectorBisecPC; deep: int = 0; offset: int = 0) {.noSideEffect,
    importcpp: "Dump", header: "Bisector_BisecPC.hxx".}
proc linkBisCurve*(this: BisectorBisecPC; u: float): float {.noSideEffect,
    importcpp: "LinkBisCurve", header: "Bisector_BisecPC.hxx".}
proc linkCurveBis*(this: BisectorBisecPC; u: float): float {.noSideEffect,
    importcpp: "LinkCurveBis", header: "Bisector_BisecPC.hxx".}
proc parameter*(this: BisectorBisecPC; p: Pnt2d): float {.noSideEffect,
    importcpp: "Parameter", header: "Bisector_BisecPC.hxx".}
proc isEmpty*(this: BisectorBisecPC): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "Bisector_BisecPC.hxx".}
type
  BisectorBisecPCbaseType* = BisectorCurve

proc getTypeName*(): cstring {.importcpp: "Bisector_BisecPC::get_type_name(@)",
                            header: "Bisector_BisecPC.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Bisector_BisecPC::get_type_descriptor(@)",
    header: "Bisector_BisecPC.hxx".}
proc dynamicType*(this: BisectorBisecPC): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Bisector_BisecPC.hxx".}
