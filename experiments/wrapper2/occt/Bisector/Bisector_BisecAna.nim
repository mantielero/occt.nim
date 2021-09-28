##  Created on: 1994-05-19
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

discard "forward decl of Geom2d_TrimmedCurve"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Point"
discard "forward decl of GccInt_Bisec"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Bisector_BisecAna"
discard "forward decl of Bisector_BisecAna"
type
  HandleC1C1* = Handle[BisectorBisecAna]

## ! This class provides the bisecting line between two
## ! geometric elements.The elements are Circles,Lines or
## ! Points.

type
  BisectorBisecAna* {.importcpp: "Bisector_BisecAna",
                     header: "Bisector_BisecAna.hxx", bycopy.} = object of BisectorCurve ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## the
                                                                                  ## distance
                                                                                  ## between
                                                                                  ## the
                                                                                  ## point
                                                                                  ## <P>
                                                                                  ## and
                                                                                  ##
                                                                                  ## !
                                                                                  ## the
                                                                                  ## bisecting
                                                                                  ## <Bis>.


proc constructBisectorBisecAna*(): BisectorBisecAna {.constructor,
    importcpp: "Bisector_BisecAna(@)", header: "Bisector_BisecAna.hxx".}
proc perform*(this: var BisectorBisecAna; cu1: Handle[Geom2dCurve];
             cu2: Handle[Geom2dCurve]; p: Pnt2d; v1: Vec2d; v2: Vec2d; sense: cfloat;
             jointype: GeomAbsJoinType; tolerance: cfloat; oncurve: bool = true) {.
    importcpp: "Perform", header: "Bisector_BisecAna.hxx".}
proc perform*(this: var BisectorBisecAna; cu: Handle[Geom2dCurve];
             pnt: Handle[Geom2dPoint]; p: Pnt2d; v1: Vec2d; v2: Vec2d; sense: cfloat;
             tolerance: cfloat; oncurve: bool = true) {.importcpp: "Perform",
    header: "Bisector_BisecAna.hxx".}
proc perform*(this: var BisectorBisecAna; pnt: Handle[Geom2dPoint];
             cu: Handle[Geom2dCurve]; p: Pnt2d; v1: Vec2d; v2: Vec2d; sense: cfloat;
             tolerance: cfloat; oncurve: bool = true) {.importcpp: "Perform",
    header: "Bisector_BisecAna.hxx".}
proc perform*(this: var BisectorBisecAna; pnt1: Handle[Geom2dPoint];
             pnt2: Handle[Geom2dPoint]; p: Pnt2d; v1: Vec2d; v2: Vec2d; sense: cfloat;
             tolerance: cfloat = 0.0; oncurve: bool = true) {.importcpp: "Perform",
    header: "Bisector_BisecAna.hxx".}
proc init*(this: var BisectorBisecAna; bisector: Handle[Geom2dTrimmedCurve]) {.
    importcpp: "Init", header: "Bisector_BisecAna.hxx".}
proc isExtendAtStart*(this: BisectorBisecAna): bool {.noSideEffect,
    importcpp: "IsExtendAtStart", header: "Bisector_BisecAna.hxx".}
proc isExtendAtEnd*(this: BisectorBisecAna): bool {.noSideEffect,
    importcpp: "IsExtendAtEnd", header: "Bisector_BisecAna.hxx".}
proc setTrim*(this: var BisectorBisecAna; cu: Handle[Geom2dCurve]) {.
    importcpp: "SetTrim", header: "Bisector_BisecAna.hxx".}
proc setTrim*(this: var BisectorBisecAna; uf: cfloat; ul: cfloat) {.
    importcpp: "SetTrim", header: "Bisector_BisecAna.hxx".}
proc reverse*(this: var BisectorBisecAna) {.importcpp: "Reverse",
                                        header: "Bisector_BisecAna.hxx".}
proc reversedParameter*(this: BisectorBisecAna; u: cfloat): cfloat {.noSideEffect,
    importcpp: "ReversedParameter", header: "Bisector_BisecAna.hxx".}
proc isCN*(this: BisectorBisecAna; n: cint): bool {.noSideEffect, importcpp: "IsCN",
    header: "Bisector_BisecAna.hxx".}
proc copy*(this: BisectorBisecAna): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Bisector_BisecAna.hxx".}
proc transform*(this: var BisectorBisecAna; t: Trsf2d) {.importcpp: "Transform",
    header: "Bisector_BisecAna.hxx".}
proc firstParameter*(this: BisectorBisecAna): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "Bisector_BisecAna.hxx".}
proc lastParameter*(this: BisectorBisecAna): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "Bisector_BisecAna.hxx".}
proc isClosed*(this: BisectorBisecAna): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Bisector_BisecAna.hxx".}
proc isPeriodic*(this: BisectorBisecAna): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Bisector_BisecAna.hxx".}
proc continuity*(this: BisectorBisecAna): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Bisector_BisecAna.hxx".}
proc d0*(this: BisectorBisecAna; u: cfloat; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Bisector_BisecAna.hxx".}
proc d1*(this: BisectorBisecAna; u: cfloat; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "Bisector_BisecAna.hxx".}
proc d2*(this: BisectorBisecAna; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Bisector_BisecAna.hxx".}
proc d3*(this: BisectorBisecAna; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3",
                      header: "Bisector_BisecAna.hxx".}
proc dn*(this: BisectorBisecAna; u: cfloat; n: cint): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Bisector_BisecAna.hxx".}
proc geom2dCurve*(this: BisectorBisecAna): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "Geom2dCurve", header: "Bisector_BisecAna.hxx".}
proc parameter*(this: BisectorBisecAna; p: Pnt2d): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "Bisector_BisecAna.hxx".}
proc parameterOfStartPoint*(this: BisectorBisecAna): cfloat {.noSideEffect,
    importcpp: "ParameterOfStartPoint", header: "Bisector_BisecAna.hxx".}
proc parameterOfEndPoint*(this: BisectorBisecAna): cfloat {.noSideEffect,
    importcpp: "ParameterOfEndPoint", header: "Bisector_BisecAna.hxx".}
proc nbIntervals*(this: BisectorBisecAna): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "Bisector_BisecAna.hxx".}
proc intervalFirst*(this: BisectorBisecAna; index: cint): cfloat {.noSideEffect,
    importcpp: "IntervalFirst", header: "Bisector_BisecAna.hxx".}
proc intervalLast*(this: BisectorBisecAna; index: cint): cfloat {.noSideEffect,
    importcpp: "IntervalLast", header: "Bisector_BisecAna.hxx".}
proc dump*(this: BisectorBisecAna; deep: cint = 0; offset: cint = 0) {.noSideEffect,
    importcpp: "Dump", header: "Bisector_BisecAna.hxx".}
type
  BisectorBisecAnabaseType* = BisectorCurve

proc getTypeName*(): cstring {.importcpp: "Bisector_BisecAna::get_type_name(@)",
                            header: "Bisector_BisecAna.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Bisector_BisecAna::get_type_descriptor(@)",
    header: "Bisector_BisecAna.hxx".}
proc dynamicType*(this: BisectorBisecAna): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Bisector_BisecAna.hxx".}

























