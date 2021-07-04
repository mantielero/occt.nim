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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt2d,
  ../Standard/Standard_Real, ../TColStd/TColStd_SequenceOfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, Bisector_Curve,
  ../GeomAbs/GeomAbs_Shape

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
  Handle_Bisector_BisecPC* = handle[Bisector_BisecPC]

## ! Provides the bisector between a point and a curve.
## ! the curvature on the curve has to be monoton.
## ! the point can't be on the curve exept at the extremitys.

type
  Bisector_BisecPC* {.importcpp: "Bisector_BisecPC",
                     header: "Bisector_BisecPC.hxx", bycopy.} = object of Bisector_Curve


proc constructBisector_BisecPC*(): Bisector_BisecPC {.constructor,
    importcpp: "Bisector_BisecPC(@)", header: "Bisector_BisecPC.hxx".}
proc constructBisector_BisecPC*(Cu: handle[Geom2d_Curve]; P: gp_Pnt2d;
                               Side: Standard_Real; DistMax: Standard_Real = 500): Bisector_BisecPC {.
    constructor, importcpp: "Bisector_BisecPC(@)", header: "Bisector_BisecPC.hxx".}
proc constructBisector_BisecPC*(Cu: handle[Geom2d_Curve]; P: gp_Pnt2d;
                               Side: Standard_Real; UMin: Standard_Real;
                               UMax: Standard_Real): Bisector_BisecPC {.
    constructor, importcpp: "Bisector_BisecPC(@)", header: "Bisector_BisecPC.hxx".}
proc Perform*(this: var Bisector_BisecPC; Cu: handle[Geom2d_Curve]; P: gp_Pnt2d;
             Side: Standard_Real; DistMax: Standard_Real = 500) {.
    importcpp: "Perform", header: "Bisector_BisecPC.hxx".}
proc IsExtendAtStart*(this: Bisector_BisecPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsExtendAtStart", header: "Bisector_BisecPC.hxx".}
proc IsExtendAtEnd*(this: Bisector_BisecPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsExtendAtEnd", header: "Bisector_BisecPC.hxx".}
proc Reverse*(this: var Bisector_BisecPC) {.importcpp: "Reverse",
                                        header: "Bisector_BisecPC.hxx".}
proc ReversedParameter*(this: Bisector_BisecPC; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Bisector_BisecPC.hxx".}
proc Copy*(this: Bisector_BisecPC): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Bisector_BisecPC.hxx".}
proc Transform*(this: var Bisector_BisecPC; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Bisector_BisecPC.hxx".}
proc IsCN*(this: Bisector_BisecPC; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Bisector_BisecPC.hxx".}
proc FirstParameter*(this: Bisector_BisecPC): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Bisector_BisecPC.hxx".}
proc LastParameter*(this: Bisector_BisecPC): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Bisector_BisecPC.hxx".}
proc Continuity*(this: Bisector_BisecPC): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Bisector_BisecPC.hxx".}
proc NbIntervals*(this: Bisector_BisecPC): Standard_Integer {.noSideEffect,
    importcpp: "NbIntervals", header: "Bisector_BisecPC.hxx".}
proc IntervalFirst*(this: Bisector_BisecPC; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "IntervalFirst", header: "Bisector_BisecPC.hxx".}
proc IntervalLast*(this: Bisector_BisecPC; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "IntervalLast", header: "Bisector_BisecPC.hxx".}
proc IntervalContinuity*(this: Bisector_BisecPC): GeomAbs_Shape {.noSideEffect,
    importcpp: "IntervalContinuity", header: "Bisector_BisecPC.hxx".}
proc IsClosed*(this: Bisector_BisecPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Bisector_BisecPC.hxx".}
proc IsPeriodic*(this: Bisector_BisecPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Bisector_BisecPC.hxx".}
proc Distance*(this: Bisector_BisecPC; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "Bisector_BisecPC.hxx".}
proc D0*(this: Bisector_BisecPC; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Bisector_BisecPC.hxx".}
proc D1*(this: Bisector_BisecPC; U: Standard_Real; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Bisector_BisecPC.hxx".}
proc D2*(this: Bisector_BisecPC; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Bisector_BisecPC.hxx".}
proc D3*(this: Bisector_BisecPC; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Bisector_BisecPC.hxx".}
proc DN*(this: Bisector_BisecPC; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Bisector_BisecPC.hxx".}
proc Dump*(this: Bisector_BisecPC; Deep: Standard_Integer = 0;
          Offset: Standard_Integer = 0) {.noSideEffect, importcpp: "Dump",
                                      header: "Bisector_BisecPC.hxx".}
proc LinkBisCurve*(this: Bisector_BisecPC; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "LinkBisCurve", header: "Bisector_BisecPC.hxx".}
proc LinkCurveBis*(this: Bisector_BisecPC; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "LinkCurveBis", header: "Bisector_BisecPC.hxx".}
proc Parameter*(this: Bisector_BisecPC; P: gp_Pnt2d): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Bisector_BisecPC.hxx".}
proc IsEmpty*(this: Bisector_BisecPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Bisector_BisecPC.hxx".}
type
  Bisector_BisecPCbase_type* = Bisector_Curve

proc get_type_name*(): cstring {.importcpp: "Bisector_BisecPC::get_type_name(@)",
                              header: "Bisector_BisecPC.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Bisector_BisecPC::get_type_descriptor(@)",
    header: "Bisector_BisecPC.hxx".}
proc DynamicType*(this: Bisector_BisecPC): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Bisector_BisecPC.hxx".}