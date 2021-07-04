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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../TColStd/TColStd_SequenceOfReal, ../Standard/Standard_Integer,
  Bisector_PolyBis, ../Standard/Standard_Boolean, ../gp/gp_Pnt2d, Bisector_Curve,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Bisector_PolyBis"
discard "forward decl of Bisector_BisecCC"
discard "forward decl of Bisector_BisecCC"
type
  Handle_Bisector_BisecCC* = handle[Bisector_BisecCC]

## ! Construct the bisector between two curves.
## ! The curves can intersect only in their extremities.

type
  Bisector_BisecCC* {.importcpp: "Bisector_BisecCC",
                     header: "Bisector_BisecCC.hxx", bycopy.} = object of Bisector_Curve


proc constructBisector_BisecCC*(): Bisector_BisecCC {.constructor,
    importcpp: "Bisector_BisecCC(@)", header: "Bisector_BisecCC.hxx".}
proc constructBisector_BisecCC*(Cu1: handle[Geom2d_Curve];
                               Cu2: handle[Geom2d_Curve]; Side1: Standard_Real;
                               Side2: Standard_Real; Origin: gp_Pnt2d;
                               DistMax: Standard_Real = 500): Bisector_BisecCC {.
    constructor, importcpp: "Bisector_BisecCC(@)", header: "Bisector_BisecCC.hxx".}
proc Perform*(this: var Bisector_BisecCC; Cu1: handle[Geom2d_Curve];
             Cu2: handle[Geom2d_Curve]; Side1: Standard_Real; Side2: Standard_Real;
             Origin: gp_Pnt2d; DistMax: Standard_Real = 500) {.importcpp: "Perform",
    header: "Bisector_BisecCC.hxx".}
proc IsExtendAtStart*(this: Bisector_BisecCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsExtendAtStart", header: "Bisector_BisecCC.hxx".}
proc IsExtendAtEnd*(this: Bisector_BisecCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsExtendAtEnd", header: "Bisector_BisecCC.hxx".}
proc Reverse*(this: var Bisector_BisecCC) {.importcpp: "Reverse",
                                        header: "Bisector_BisecCC.hxx".}
proc ReversedParameter*(this: Bisector_BisecCC; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Bisector_BisecCC.hxx".}
proc IsCN*(this: Bisector_BisecCC; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Bisector_BisecCC.hxx".}
proc ChangeGuide*(this: Bisector_BisecCC): handle[Bisector_BisecCC] {.noSideEffect,
    importcpp: "ChangeGuide", header: "Bisector_BisecCC.hxx".}
proc Copy*(this: Bisector_BisecCC): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Bisector_BisecCC.hxx".}
proc Transform*(this: var Bisector_BisecCC; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Bisector_BisecCC.hxx".}
proc FirstParameter*(this: Bisector_BisecCC): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Bisector_BisecCC.hxx".}
proc LastParameter*(this: Bisector_BisecCC): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Bisector_BisecCC.hxx".}
proc Continuity*(this: Bisector_BisecCC): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Bisector_BisecCC.hxx".}
proc NbIntervals*(this: Bisector_BisecCC): Standard_Integer {.noSideEffect,
    importcpp: "NbIntervals", header: "Bisector_BisecCC.hxx".}
proc IntervalFirst*(this: Bisector_BisecCC; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "IntervalFirst", header: "Bisector_BisecCC.hxx".}
proc IntervalLast*(this: Bisector_BisecCC; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "IntervalLast", header: "Bisector_BisecCC.hxx".}
proc IntervalContinuity*(this: Bisector_BisecCC): GeomAbs_Shape {.noSideEffect,
    importcpp: "IntervalContinuity", header: "Bisector_BisecCC.hxx".}
proc IsClosed*(this: Bisector_BisecCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Bisector_BisecCC.hxx".}
proc IsPeriodic*(this: Bisector_BisecCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Bisector_BisecCC.hxx".}
proc ValueAndDist*(this: Bisector_BisecCC; U: Standard_Real; U1: var Standard_Real;
                  U2: var Standard_Real; Distance: var Standard_Real): gp_Pnt2d {.
    noSideEffect, importcpp: "ValueAndDist", header: "Bisector_BisecCC.hxx".}
proc ValueByInt*(this: Bisector_BisecCC; U: Standard_Real; U1: var Standard_Real;
                U2: var Standard_Real; Distance: var Standard_Real): gp_Pnt2d {.
    noSideEffect, importcpp: "ValueByInt", header: "Bisector_BisecCC.hxx".}
proc D0*(this: Bisector_BisecCC; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Bisector_BisecCC.hxx".}
proc D1*(this: Bisector_BisecCC; U: Standard_Real; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Bisector_BisecCC.hxx".}
proc D2*(this: Bisector_BisecCC; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Bisector_BisecCC.hxx".}
proc D3*(this: Bisector_BisecCC; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Bisector_BisecCC.hxx".}
proc DN*(this: Bisector_BisecCC; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Bisector_BisecCC.hxx".}
proc IsEmpty*(this: Bisector_BisecCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Bisector_BisecCC.hxx".}
proc LinkBisCurve*(this: Bisector_BisecCC; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "LinkBisCurve", header: "Bisector_BisecCC.hxx".}
proc LinkCurveBis*(this: Bisector_BisecCC; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "LinkCurveBis", header: "Bisector_BisecCC.hxx".}
proc Parameter*(this: Bisector_BisecCC; P: gp_Pnt2d): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Bisector_BisecCC.hxx".}
proc Curve*(this: Bisector_BisecCC; IndCurve: Standard_Integer): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "Curve", header: "Bisector_BisecCC.hxx".}
proc Polygon*(this: Bisector_BisecCC): Bisector_PolyBis {.noSideEffect,
    importcpp: "Polygon", header: "Bisector_BisecCC.hxx".}
proc Dump*(this: Bisector_BisecCC; Deep: Standard_Integer = 0;
          Offset: Standard_Integer = 0) {.noSideEffect, importcpp: "Dump",
                                      header: "Bisector_BisecCC.hxx".}
type
  Bisector_BisecCCbase_type* = Bisector_Curve

proc get_type_name*(): cstring {.importcpp: "Bisector_BisecCC::get_type_name(@)",
                              header: "Bisector_BisecCC.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Bisector_BisecCC::get_type_descriptor(@)",
    header: "Bisector_BisecCC.hxx".}
proc DynamicType*(this: Bisector_BisecCC): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Bisector_BisecCC.hxx".}