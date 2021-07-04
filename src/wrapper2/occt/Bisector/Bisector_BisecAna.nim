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

import
  ../Standard/Standard, ../Standard/Standard_Type, Bisector_Curve,
  ../Standard/Standard_Real, ../GeomAbs/GeomAbs_JoinType,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape

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
  Handle_Bisector_BisecAna* = handle[Bisector_BisecAna]

## ! This class provides the bisecting line between two
## ! geometric elements.The elements are Circles,Lines or
## ! Points.

type
  Bisector_BisecAna* {.importcpp: "Bisector_BisecAna",
                      header: "Bisector_BisecAna.hxx", bycopy.} = object of Bisector_Curve ##
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


proc constructBisector_BisecAna*(): Bisector_BisecAna {.constructor,
    importcpp: "Bisector_BisecAna(@)", header: "Bisector_BisecAna.hxx".}
proc Perform*(this: var Bisector_BisecAna; Cu1: handle[Geom2d_Curve];
             Cu2: handle[Geom2d_Curve]; P: gp_Pnt2d; V1: gp_Vec2d; V2: gp_Vec2d;
             Sense: Standard_Real; jointype: GeomAbs_JoinType;
             Tolerance: Standard_Real; oncurve: Standard_Boolean = Standard_True) {.
    importcpp: "Perform", header: "Bisector_BisecAna.hxx".}
proc Perform*(this: var Bisector_BisecAna; Cu: handle[Geom2d_Curve];
             Pnt: handle[Geom2d_Point]; P: gp_Pnt2d; V1: gp_Vec2d; V2: gp_Vec2d;
             Sense: Standard_Real; Tolerance: Standard_Real;
             oncurve: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "Bisector_BisecAna.hxx".}
proc Perform*(this: var Bisector_BisecAna; Pnt: handle[Geom2d_Point];
             Cu: handle[Geom2d_Curve]; P: gp_Pnt2d; V1: gp_Vec2d; V2: gp_Vec2d;
             Sense: Standard_Real; Tolerance: Standard_Real;
             oncurve: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "Bisector_BisecAna.hxx".}
proc Perform*(this: var Bisector_BisecAna; Pnt1: handle[Geom2d_Point];
             Pnt2: handle[Geom2d_Point]; P: gp_Pnt2d; V1: gp_Vec2d; V2: gp_Vec2d;
             Sense: Standard_Real; Tolerance: Standard_Real = 0.0;
             oncurve: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "Bisector_BisecAna.hxx".}
proc Init*(this: var Bisector_BisecAna; bisector: handle[Geom2d_TrimmedCurve]) {.
    importcpp: "Init", header: "Bisector_BisecAna.hxx".}
proc IsExtendAtStart*(this: Bisector_BisecAna): Standard_Boolean {.noSideEffect,
    importcpp: "IsExtendAtStart", header: "Bisector_BisecAna.hxx".}
proc IsExtendAtEnd*(this: Bisector_BisecAna): Standard_Boolean {.noSideEffect,
    importcpp: "IsExtendAtEnd", header: "Bisector_BisecAna.hxx".}
proc SetTrim*(this: var Bisector_BisecAna; Cu: handle[Geom2d_Curve]) {.
    importcpp: "SetTrim", header: "Bisector_BisecAna.hxx".}
proc SetTrim*(this: var Bisector_BisecAna; uf: Standard_Real; ul: Standard_Real) {.
    importcpp: "SetTrim", header: "Bisector_BisecAna.hxx".}
proc Reverse*(this: var Bisector_BisecAna) {.importcpp: "Reverse",
    header: "Bisector_BisecAna.hxx".}
proc ReversedParameter*(this: Bisector_BisecAna; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Bisector_BisecAna.hxx".}
proc IsCN*(this: Bisector_BisecAna; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Bisector_BisecAna.hxx".}
proc Copy*(this: Bisector_BisecAna): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Bisector_BisecAna.hxx".}
proc Transform*(this: var Bisector_BisecAna; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Bisector_BisecAna.hxx".}
proc FirstParameter*(this: Bisector_BisecAna): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Bisector_BisecAna.hxx".}
proc LastParameter*(this: Bisector_BisecAna): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Bisector_BisecAna.hxx".}
proc IsClosed*(this: Bisector_BisecAna): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Bisector_BisecAna.hxx".}
proc IsPeriodic*(this: Bisector_BisecAna): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Bisector_BisecAna.hxx".}
proc Continuity*(this: Bisector_BisecAna): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Bisector_BisecAna.hxx".}
proc D0*(this: Bisector_BisecAna; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Bisector_BisecAna.hxx".}
proc D1*(this: Bisector_BisecAna; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Bisector_BisecAna.hxx".}
proc D2*(this: Bisector_BisecAna; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Bisector_BisecAna.hxx".}
proc D3*(this: Bisector_BisecAna; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Bisector_BisecAna.hxx".}
proc DN*(this: Bisector_BisecAna; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Bisector_BisecAna.hxx".}
proc Geom2dCurve*(this: Bisector_BisecAna): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "Geom2dCurve", header: "Bisector_BisecAna.hxx".}
proc Parameter*(this: Bisector_BisecAna; P: gp_Pnt2d): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Bisector_BisecAna.hxx".}
proc ParameterOfStartPoint*(this: Bisector_BisecAna): Standard_Real {.noSideEffect,
    importcpp: "ParameterOfStartPoint", header: "Bisector_BisecAna.hxx".}
proc ParameterOfEndPoint*(this: Bisector_BisecAna): Standard_Real {.noSideEffect,
    importcpp: "ParameterOfEndPoint", header: "Bisector_BisecAna.hxx".}
proc NbIntervals*(this: Bisector_BisecAna): Standard_Integer {.noSideEffect,
    importcpp: "NbIntervals", header: "Bisector_BisecAna.hxx".}
proc IntervalFirst*(this: Bisector_BisecAna; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "IntervalFirst", header: "Bisector_BisecAna.hxx".}
proc IntervalLast*(this: Bisector_BisecAna; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "IntervalLast", header: "Bisector_BisecAna.hxx".}
proc Dump*(this: Bisector_BisecAna; Deep: Standard_Integer = 0;
          Offset: Standard_Integer = 0) {.noSideEffect, importcpp: "Dump",
                                      header: "Bisector_BisecAna.hxx".}
type
  Bisector_BisecAnabase_type* = Bisector_Curve

proc get_type_name*(): cstring {.importcpp: "Bisector_BisecAna::get_type_name(@)",
                              header: "Bisector_BisecAna.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Bisector_BisecAna::get_type_descriptor(@)",
    header: "Bisector_BisecAna.hxx".}
proc DynamicType*(this: Bisector_BisecAna): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Bisector_BisecAna.hxx".}