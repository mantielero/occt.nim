##  Created on: 1999-06-22
##  Created by: Roman LYGIN
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Geom/Geom_Curve, ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of ShapeExtend_ComplexCurve"
discard "forward decl of ShapeExtend_ComplexCurve"
type
  Handle_ShapeExtend_ComplexCurve* = handle[ShapeExtend_ComplexCurve]

## ! Defines a curve which consists of several segments.
## ! Implements basic interface to it.

type
  ShapeExtend_ComplexCurve* {.importcpp: "ShapeExtend_ComplexCurve",
                             header: "ShapeExtend_ComplexCurve.hxx", bycopy.} = object of Geom_Curve ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## number
                                                                                              ## of
                                                                                              ## curves


proc NbCurves*(this: ShapeExtend_ComplexCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "ShapeExtend_ComplexCurve.hxx".}
proc Curve*(this: ShapeExtend_ComplexCurve; index: Standard_Integer): handle[
    Geom_Curve] {.noSideEffect, importcpp: "Curve",
                 header: "ShapeExtend_ComplexCurve.hxx".}
proc LocateParameter*(this: ShapeExtend_ComplexCurve; U: Standard_Real;
                     UOut: var Standard_Real): Standard_Integer {.noSideEffect,
    importcpp: "LocateParameter", header: "ShapeExtend_ComplexCurve.hxx".}
proc LocalToGlobal*(this: ShapeExtend_ComplexCurve; index: Standard_Integer;
                   Ulocal: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "LocalToGlobal", header: "ShapeExtend_ComplexCurve.hxx".}
proc Transform*(this: var ShapeExtend_ComplexCurve; T: gp_Trsf) {.
    importcpp: "Transform", header: "ShapeExtend_ComplexCurve.hxx".}
proc ReversedParameter*(this: ShapeExtend_ComplexCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter",
    header: "ShapeExtend_ComplexCurve.hxx".}
proc FirstParameter*(this: ShapeExtend_ComplexCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "ShapeExtend_ComplexCurve.hxx".}
proc LastParameter*(this: ShapeExtend_ComplexCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "ShapeExtend_ComplexCurve.hxx".}
proc IsClosed*(this: ShapeExtend_ComplexCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "ShapeExtend_ComplexCurve.hxx".}
proc IsPeriodic*(this: ShapeExtend_ComplexCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ShapeExtend_ComplexCurve.hxx".}
proc Continuity*(this: ShapeExtend_ComplexCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "ShapeExtend_ComplexCurve.hxx".}
proc IsCN*(this: ShapeExtend_ComplexCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "ShapeExtend_ComplexCurve.hxx".}
proc D0*(this: ShapeExtend_ComplexCurve; U: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "ShapeExtend_ComplexCurve.hxx".}
proc D1*(this: ShapeExtend_ComplexCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "ShapeExtend_ComplexCurve.hxx".}
proc D2*(this: ShapeExtend_ComplexCurve; U: Standard_Real; P: var gp_Pnt;
        V1: var gp_Vec; V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                                    header: "ShapeExtend_ComplexCurve.hxx".}
proc D3*(this: ShapeExtend_ComplexCurve; U: Standard_Real; P: var gp_Pnt;
        V1: var gp_Vec; V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
    header: "ShapeExtend_ComplexCurve.hxx".}
proc DN*(this: ShapeExtend_ComplexCurve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "ShapeExtend_ComplexCurve.hxx".}
proc GetScaleFactor*(this: ShapeExtend_ComplexCurve; ind: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetScaleFactor",
    header: "ShapeExtend_ComplexCurve.hxx".}
proc CheckConnectivity*(this: var ShapeExtend_ComplexCurve; Preci: Standard_Real): Standard_Boolean {.
    importcpp: "CheckConnectivity", header: "ShapeExtend_ComplexCurve.hxx".}
type
  ShapeExtend_ComplexCurvebase_type* = Geom_Curve

proc get_type_name*(): cstring {.importcpp: "ShapeExtend_ComplexCurve::get_type_name(@)",
                              header: "ShapeExtend_ComplexCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeExtend_ComplexCurve::get_type_descriptor(@)",
    header: "ShapeExtend_ComplexCurve.hxx".}
proc DynamicType*(this: ShapeExtend_ComplexCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeExtend_ComplexCurve.hxx".}